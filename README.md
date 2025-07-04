# 🚖 Ola Data Analysis (Bengaluru) – Power BI Project

This Power BI project analyzes Ola ride data from Bengaluru to extract actionable business insights using interactive dashboards.

## 🛠️ Tools Used
- Power BI
- SQL (for initial data cleaning)
- Excel (for preprocessing)
- DAX (Data Analysis Expressions)

---

## 📂 Dataset Overview
- Time Period: Jan 2024
- Fields: Booking status, payment method, vehicle type, ride value, customer ID, driver ID, ratings, etc.

---

## 📊 Dashboards Overview

### 1. Overall Booking Summary
![Overall](overall_dashboard.png)

- Total Bookings: **49,866**
- Successful Bookings: **34,267K**
- Booking Status Breakdown (Success, Cancelled by Driver/Customer)
- Daily Ride Trend Line

---

### 2. Vehicle Type Performance
![Vehicle](vehicle_dashboard.png)

- Comparison across vehicle types: Prime Sedan, SUV, Auto, Bike, E-Bike
- Total Booking Value, Success Rate, Avg. Distance
- Key Insight: Mini & Auto have slightly higher avg. distance

---

### 3. Revenue Analysis
![Revenue](revenue_dashboard.png)

- Revenue by Payment Method (Wallet, Cash, UPI, Card)
- Daily trend of payment method usage
- Top 5 Customers by Booking Value

---

### 4. Cancellation Patterns
![Cancellation](cancellation_dashboard.png)

- Cancellations by vehicle type and weekday
- Heatmap of cancellation trends
- Cancellation ratio vs success ratio

---

### 5. Ratings Breakdown
![Ratings](ratings_dashboard.png)

- Ratings distribution (1–5 stars)
- Ratings by vehicle type
- Avg. ratings over time

---

## 🔍 Key Insights
- Wallet and Cash are top payment modes.
- Prime Sedan leads in success rate and booking value.
- Major cancellations occur on weekends in Mini/Auto categories.
- Consistent ride patterns mid-month.

---

## 📁 Files Included
- `bengaluru_ola_data.pbix` – Power BI dashboard
- `ola_data.sql` – SQL script for data transformation
- `Bengaluru ola data.csv` – Original dataset

---

## 📌 How to View
To explore the report:
1. Download `.pbix` file from this repo.
2. Open it in Power BI Desktop.
3. Use the date filters and slicers to interact.

---


