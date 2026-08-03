# 🌶️ Business Analytics for a Self-Funded D2C Spice Venture

## Project Overview

This project presents an end-to-end business analytics solution developed using historical sales data from a self-funded Direct-to-Consumer (D2C) spice business. The objective was to transform manually recorded sales data into actionable business insights through data cleaning, relational database design, SQL-based analysis, and interactive Power BI dashboards.

The project demonstrates the complete analytics workflow, including:

- Data cleaning and preparation in Excel
- Relational database design in MySQL
- Business analysis using SQL
- Interactive dashboard development in Power BI
- Business insight generation and strategic recommendations

---

## Business Objective

The primary objectives of this project were to:

- Analyze historical sales performance
- Identify top-performing products
- Understand customer purchasing behavior
- Evaluate revenue trends over time
- Generate data-driven business recommendations to improve sales and customer retention

---

## Tools & Technologies

- **Microsoft Excel**
  - Data Cleaning
  - Data Transformation
  - Dataset Preparation

- **MySQL**
  - Relational Database Design
  - SQL Queries
  - Business KPI Analysis

- **Power BI**
  - Interactive Dashboard Development
  - KPI Reporting
  - Sales & Customer Analysis

---

## Dataset Overview

The project is based on historical transaction records maintained during business operations.

### Dataset Summary

| Metric | Value |
|---------|------:|
| Orders | 102 |
| Products | 7 |
| Product Categories | 1 |
| Customers | Historical Customer Records |
| Tables Created | 3 |

### Database Structure

The data was normalized into three relational tables:

### Orders
- OrderID
- OrderDate
- CustomerName
- TotalAmount

### Products
- ProductID
- ProductName
- Category
- Price

### OrderItems
- OrderID
- ProductID
- Quantity

This normalized structure enables efficient SQL querying and supports scalable reporting within Power BI.

---

## Business Questions Answered

This project answers several key business questions:

- What is the total revenue generated?
- What is the average order value?
- Which products sell the most?
- Which products generate the highest revenue?
- Who are the highest-value customers?
- How many repeat customers does the business have?
- What are the monthly sales trends?
- Which products contribute the highest sales volume?

---

## SQL Analysis

SQL was used to perform business analysis and calculate key performance indicators, including:

- Total Revenue
- Total Orders
- Average Order Value (AOV)
- Revenue by Product
- Quantity Sold by Product
- Top Customers
- Repeat Customer Analysis
- Monthly Revenue Trends
- Monthly Order Trends
- Average Products per Order

---

## Power BI Dashboard

The dashboard provides an executive overview of business performance through interactive visualizations.

### Dashboard Features

#### Executive KPIs
- Total Revenue
- Total Orders
- Average Order Value
- Total Packets Sold

#### Product Performance
- Quantity Sold by Product
- Product Revenue Analysis
- Top Selling Products

#### Customer Analysis
- Top Customers
- Repeat Customer Analysis

#### Sales Trends
- Monthly Revenue
- Monthly Order Trends

### Dashboard Preview

<img width="1265" height="678" alt="Dashboard" src="https://github.com/user-attachments/assets/5c33e1d7-5c11-4484-a490-23dda665be72" />


---

# Key Business Insights

## Executive Summary

- Processed **102 customer orders** generating **₹41,027** in customer payments.
- Achieved an **Average Order Value (AOV) of ₹402**, indicating customers frequently purchased multiple products in a single transaction.

## Product Insights

- **Sambar Podi** emerged as the highest-selling product by quantity.
- The **top three products contributed the majority of product sales**, highlighting a concentrated demand pattern.
- Lower-selling products present opportunities for promotional campaigns and bundled offerings.

## Customer Insights

- **5 customers placed repeat orders**, demonstrating early customer retention.
- The highest-value customer contributed **₹2,450** in total purchases.

## Sales Trends

- **February recorded the highest monthly sales**, suggesting seasonal demand or campaign-driven growth.
- Monthly sales patterns indicate opportunities for targeted marketing during peak demand periods.

---

# Business Recommendations

Based on the analysis, the following recommendations were identified:

- Introduce **combo packs** featuring top-selling products to increase Average Order Value.
- Launch **customer loyalty incentives** for repeat buyers.
- Prioritize inventory planning for consistently high-demand products.
- Bundle slower-moving products with best sellers to improve inventory turnover.

---

# Data Quality & Limitations

## Missing Data

Approximately **40% of historical records** were missing customer contact information due to incomplete manual record-keeping.

However, the following fields were consistently available across the dataset:

- Customer Name
- Order Date
- Products Ordered
- Quantity Purchased
- Final Invoice Amount

No missing values were artificially imputed. Analysis was performed using the available historical data to preserve data integrity.

---

## Data Validation

Revenue was validated using two different approaches:

1. **Invoice Revenue**
   - Calculated from the `Orders` table.
   - Represents the final amount paid by customers.

2. **Product Revenue**
   - Calculated using `Quantity × Product Price`.
   - Represents catalog value before invoice-level adjustments.

Differences between these values arise because final invoice amounts may include shipping charges and promotional pricing (such as discounts for bulk purchases or repeat customers). Since these adjustments were not recorded separately in the historical dataset, invoice totals were used for financial KPIs while product-level calculations were used exclusively for product performance analysis.

---

## Project Workflow

```text
Raw Sales Records
        │
        ▼
Excel Data Cleaning
        │
        ▼
Relational Database Design
        │
        ▼
MySQL SQL Analysis
        │
        ▼
Power BI Dashboard
        │
        ▼
Business Insights & Recommendations
```

---

## Skills Demonstrated

- Business Analytics
- SQL
- Relational Database Design
- Data Cleaning
- Data Modeling
- KPI Development
- Data Visualization
- Power BI
- Excel
- Business Intelligence
- Data Validation
- Analytical Thinking

---

## Future Improvements

Future enhancements for this project include:

- Customer segmentation using RFM analysis
- Product bundle recommendation analysis
- Inventory forecasting
- Customer Lifetime Value (CLV) analysis
- Profitability analysis
- Marketing campaign performance analysis

---

## Author

**Manasa G V**

Business Analytics | Data Analytics | SQL | Power BI | Excel
