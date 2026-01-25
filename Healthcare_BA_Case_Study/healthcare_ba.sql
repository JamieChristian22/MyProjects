-- Healthcare BA: Nurse Time Savings - example SQL
-- Assumes sample data in healthcare_nurse_time.csv loaded into a table named healthcare_nurse_time
-- This script produces weekly nurse hours saved and a summary view.

-- Create table schema (example)
CREATE TABLE IF NOT EXISTS healthcare_nurse_time (
  patient_id INT,
  case_id INT,
  activity_date DATE,
  manual_minutes INT,
  automated_minutes INT,
  activity_type VARCHAR(100)
);

-- Example: aggregated nurse time saved per week
CREATE OR REPLACE VIEW healthcare_ba.v_nurse_time_saved_summary AS
SELECT
  DATE_TRUNC('week', activity_date) AS week_start,
  COUNT(DISTINCT case_id) AS cases_processed,
  SUM(manual_minutes) AS total_manual_minutes,
  SUM(automated_minutes) AS total_automated_minutes,
  (SUM(manual_minutes) - SUM(automated_minutes)) AS minutes_saved,
  ROUND((SUM(manual_minutes) - SUM(automated_minutes)) / 60.0, 2) AS hours_saved
FROM healthcare_nurse_time
GROUP BY DATE_TRUNC('week', activity_date)
ORDER BY week_start;

-- Simple validation query
SELECT * FROM healthcare_ba.v_nurse_time_saved_summary LIMIT 10;

---