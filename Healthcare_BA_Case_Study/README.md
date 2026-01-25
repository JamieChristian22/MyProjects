# Healthcare Business Analyst Case Study — metadata + reproducibility note

Metadata
- Author: Jamie Christian II
- Role: Lead BA
- Date: 2025-11-10
- Duration: 6 weeks

Overview
This case study demonstrates how a Business Analyst applied requirements gathering, process mapping, and data analytics to improve utilization management, clinical quality reporting, and nurse workflow efficiency for a mid-sized health insurer.

How to reproduce results
1. Load `sample_nurse_time.csv` into your SQL database (e.g., SQLite, Postgres). Example for SQLite:
   - `sqlite3 healthcare.db` then `.mode csv` and `.import sample_nurse_time.csv healthcare_nurse_time`
2. Run `healthcare_ba.sql` against the database to create the view and run the validation query.
3. Open the provided PNG dashboard previews in this folder (if present) to compare expected outputs.

Notes
- All sample data is synthetic and for demonstration purposes only.
- If you have issues running the SQL, contact jamiechristian557@gmail.com

