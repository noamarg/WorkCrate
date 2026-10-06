package main

import (
	"log"
	"net/http"
	"os"

	"github.com/noamarg/workcrate/apps/backend/internal/platform/config"
	platformhttp "github.com/noamarg/workcrate/apps/backend/internal/platform/http"
)

func main() {
	if err := config.LoadEnvFile(); err != nil {
		log.Fatal(err)
	}

	addr := config.HTTPAddr()
	log.Printf("api listening on %s (WORKCRATE_ENV=%s)", addr, os.Getenv("WORKCRATE_ENV"))
	log.Fatal(http.ListenAndServe(addr, platformhttp.NewRouter()))
}
