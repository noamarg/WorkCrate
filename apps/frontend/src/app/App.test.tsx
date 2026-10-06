import { render, screen } from "@testing-library/react";
import { afterEach, beforeEach, describe, expect, it, vi } from "vitest";
import App from "./App";

describe("App", () => {
  beforeEach(() => {
    vi.stubEnv("VITE_WORKCRATE_ENV", "test");
    vi.stubEnv("VITE_API_BASE_URL", "http://localhost:8080");
  });

  afterEach(() => {
    vi.unstubAllEnvs();
  });

  it("renders title and environment", () => {
    render(<App />);
    expect(screen.getByRole("heading", { name: "WorkCrate" })).toBeInTheDocument();
    expect(screen.getByText(/Environment: test/)).toBeInTheDocument();
    expect(screen.getByText(/API: http:\/\/localhost:8080/)).toBeInTheDocument();
  });
});
