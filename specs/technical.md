# Technical Specification – Project Chimera

## API Contracts

### Trend Fetcher
**Input:**
**Input (JSON):** 
{
  "platform": "twitter",
  "topic": "AI influencers",
  "limit": 10
}


## Database Schema (ERD)

```mermaid
erDiagram
    TRENDS {
        string id PK
        string topic
        int volume
        datetime fetched_at
    }

    CONTENT {
        string draft_id PK
        string trend_id FK
        string format
        string file_path
        string status
    }

    ENGAGEMENT {
        string engagement_id PK
        string content_id FK
        string type
        int count
        datetime timestamp
    }

    SAFETY_LOG {
        string log_id PK
        string content_id FK
        string reviewer_id
        string decision
        datetime reviewed_at
    }

    TRENDS ||--o{ CONTENT : generates
    CONTENT ||--o{ ENGAGEMENT : receives
    CONTENT ||--o{ SAFETY_LOG : audited_by

