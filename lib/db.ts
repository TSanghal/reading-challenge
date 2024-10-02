import { Pool } from 'pg';

// Create a new instance of Pool to manage connections to the PostgreSQL database.
const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: {
    rejectUnauthorized: false, // Disable SSL certificate validation for development.
  },
});

// Export a query function for executing SQL commands.
export function query(text: string, params?: unknown[]) { return pool.query(text, params); }