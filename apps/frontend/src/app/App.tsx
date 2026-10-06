export default function App() {
  const env = import.meta.env.VITE_WORKCRATE_ENV;
  const apiBase = import.meta.env.VITE_API_BASE_URL;

  return (
    <div>
      <h1>WorkCrate</h1>
      <p>
        Environment: {env} · API: {apiBase}
      </p>
    </div>
  );
}
