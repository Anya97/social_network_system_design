// PostgreSQL

CREATE TABLE users (
  id UUID PRIMARY KEY,
  username TEXT UNIQUE NOT NULL,
  full_name TEXT,
  created_at TIMESTAMP NOT NULL DEFAULT now()
);
