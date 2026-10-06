package http

import (
	"net/http"

	"github.com/go-chi/chi/v5"
)

// NewRouter returns the API HTTP handler tree.
func NewRouter() chi.Router {
	r := chi.NewRouter()
	r.Get("/health", healthHandler)
	return r
}

func healthHandler(w http.ResponseWriter, _ *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	_, _ = w.Write([]byte(`{"status":"ok"}`))
}
