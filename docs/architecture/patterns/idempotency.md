# Idempotency

Require `Idempotency-Key` on webhook ingestion and bulk import APIs.

Store keys in Postgres with TTL; return same response on replay.
