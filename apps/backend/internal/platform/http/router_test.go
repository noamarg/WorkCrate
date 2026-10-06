package http

import (
	"io"
	"net/http"
	"net/http/httptest"
	"testing"
)

func TestHealthHandler(t *testing.T) {
	req := httptest.NewRequest(http.MethodGet, "/health", nil)
	rec := httptest.NewRecorder()

	NewRouter().ServeHTTP(rec, req)

	if rec.Code != http.StatusOK {
		t.Fatalf("status: got %d", rec.Code)
	}
	body, err := io.ReadAll(rec.Result().Body)
	if err != nil {
		t.Fatal(err)
	}
	if string(body) != `{"status":"ok"}` {
		t.Fatalf("body: got %q", string(body))
	}
	if rec.Header().Get("Content-Type") != "application/json" {
		t.Fatalf("content-type: got %q", rec.Header().Get("Content-Type"))
	}
}
