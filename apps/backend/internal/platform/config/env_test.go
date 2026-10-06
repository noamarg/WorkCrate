package config

import (
	"os"
	"path/filepath"
	"strings"
	"testing"
)

func TestHTTPAddr_default(t *testing.T) {
	t.Setenv("WORKCRATE_HTTP_ADDR", "")
	if HTTPAddr() != ":8080" {
		t.Fatalf("expected :8080, got %q", HTTPAddr())
	}
}

func TestHTTPAddr_override(t *testing.T) {
	t.Setenv("WORKCRATE_HTTP_ADDR", ":9090")
	if HTTPAddr() != ":9090" {
		t.Fatalf("expected :9090, got %q", HTTPAddr())
	}
}

func TestLoadEnvFile_missingEnv(t *testing.T) {
	t.Setenv("WORKCRATE_ENV", "")
	err := LoadEnvFile()
	if err == nil || !strings.Contains(err.Error(), "WORKCRATE_ENV is not set") {
		t.Fatalf("expected missing WORKCRATE_ENV error, got %v", err)
	}
}

func TestLoadEnvFile_invalidEnv(t *testing.T) {
	t.Setenv("WORKCRATE_ENV", "staging")
	err := LoadEnvFile()
	if err == nil || !strings.Contains(err.Error(), "development or production") {
		t.Fatalf("expected invalid env error, got %v", err)
	}
}

func TestLoadEnvFile_success(t *testing.T) {
	dir := t.TempDir()
	if err := os.WriteFile(filepath.Join(dir, ".env.development"), []byte("WORKCRATE_HTTP_ADDR=:3001\n"), 0o600); err != nil {
		t.Fatal(err)
	}
	t.Chdir(dir)
	t.Setenv("WORKCRATE_ENV", "development")

	if err := LoadEnvFile(); err != nil {
		t.Fatal(err)
	}
	if os.Getenv("WORKCRATE_HTTP_ADDR") != ":3001" {
		t.Fatalf("expected :3001 from env file, got %q", os.Getenv("WORKCRATE_HTTP_ADDR"))
	}
}
