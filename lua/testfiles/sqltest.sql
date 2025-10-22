CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  signup DATE DEFAULT CURRENT_DATE,
  credits INTEGER DEFAULT 0
);

SELECT
  COUNT(*) AS total_users,
  ROUND(AVG(credits), 2) AS avg_credits
FROM
  users;

SELECT
  id,
  name,
  signup
FROM
  users
WHERE
  signup >= date('now', '-7 days')
ORDER BY
  signup DESC;
