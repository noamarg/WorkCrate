package config

import (
	"fmt"
	"os"

	"github.com/joho/godotenv"
)

// LoadEnvFile reads apps/backend/.env.<WORKCRATE_ENV> (development or production).
// WORKCRATE_ENV must be set by deploy scripts before starting the API.
func LoadEnvFile() error {
	env := os.Getenv("WORKCRATE_ENV")
	if env == "" {
		return fmt.Errorf("WORKCRATE_ENV is not set (use development or production)")
	}
	if env != "development" && env != "production" {
		return fmt.Errorf("WORKCRATE_ENV must be development or production, got %q", env)
	}
	path := ".env." + env
	if err := godotenv.Load(path); err != nil {
		return fmt.Errorf("load %s: %w", path, err)
	}
	return nil
}

// HTTPAddr returns the API listen address from WORKCRATE_HTTP_ADDR or :8080.
func HTTPAddr() string {
	if addr := os.Getenv("WORKCRATE_HTTP_ADDR"); addr != "" {
		return addr
	}
	return ":8080"
}
