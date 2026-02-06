# OpenClaw Integration Specification

## Purpose
Define how Project Chimera publishes its availability and status to the OpenClaw Agent Social Network, enabling agent-to-agent communication and collaboration.

---

## Status Protocol
- Chimera must publish a JSON payload to OpenClaw at regular intervals (e.g., every 5 minutes).
- Payload includes:
  - Agent ID
  - Current status (active, idle, error)
  - Skills available
  - Timestamp of last update

**Example Payload:**
```json
{
  "agent_id": "chimera_001",
  "status": "active",
  "skills": ["trend_fetcher", "content_generator", "transcriber"],
  "last_updated": "2026-02-06T12:00:00Z"
}
