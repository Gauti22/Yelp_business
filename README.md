# 📘 Yelp-Style Business & Review Analytics

![SQL](https://img.shields.io/badge/Database-SQL-blue)
![Python](https://img.shields.io/badge/Python-3.9%2B-green)
![Tableau](https://img.shields.io/badge/Visualization-Tableau-orange)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Status](https://img.shields.io/badge/Status-Completed-success)

## 📌 Project Overview

This project implements a **Yelp-style business and review analytics system**.  
It leverages **SQL, Tableau, and data preprocessing** to solve analytical problems around **user growth, elite users, business categories, and review sentiment**.

### Key Highlights
- 🏗️ Designed & implemented a **normalized relational database schema**  
- 🧹 Performed **data cleaning & preprocessing** (nulls, formatting, deduplication)  
- 📝 Wrote **15+ SQL queries** using joins, CTEs, aggregations, and window functions  
- 📊 Built **Tableau dashboards** for KPI visualization  
- 📈 Delivered **business insights** for customer engagement, influencer identification, and expansion strategies  

---

## 📂 Repository Structure

The repository is organized to keep **SQL scripts, documentation, and analysis artifacts** clean and accessible.  

---

### 🏗️ Core Files
- **`ERD Diag.png`** → Entity Relationship Diagram showing normalized schema  
- **`Database Schema queries.sql`** → SQL script to create relational schema  
- **`Business oroblem queries.sql`** → SQL queries solving business questions  
- **`Data Dictionary.xlsx`** → Metadata describing fields, data types, and constraints  
- **`Final PPT.pptx`** → Business presentation with key insights  

---

## 🎯 Problem Statement & Solutions

This project analyzes **Yelp-style business and review data** to answer **real-world business intelligence questions**.  
Using **SQL queries, database design, and Tableau dashboards**, it uncovers insights into **user behavior, elite user trends, business performance, and customer engagement**.

---

### ✅ Key Problems Solved

#### 1. User Growth Analysis
- **Question:** How many users joined Yelp each year since 2010?  
- **Solution:** SQL queries + dashboards to calculate yearly growth.  
- **Insight:** Users peaked in **2015**, followed by a steady decline until **2022**.  

---

#### 2. Elite User Trend
- **Question:** How many elite users existed each year from 2012 to 2021?  
- **Solution:** SQL queries tracked elite counts across years.  
- **Insight:** Growth observed **2012–2017**, then plateaued **2018–2021**.  

---

#### 3. Top Reviewers & Influencers
- **Question:** Which users wrote the most 5-star reviews, and who has the most fans and votes?  
- **Solution:** SQL queries identified top contributors and influencer profiles.  
- **Insight:** Certain power users consistently drive community engagement.  

---

#### 4. Business Distribution by State
- **Question:** Which U.S. states have the most businesses in the database?  
- **Solution:** SQL aggregations + Tableau charts for state-wise distribution.  
- **Insight:** **Pennsylvania (PA)** and **Florida (FL)** lead, while **Alberta (AB)** has the fewest businesses.  

---

#### 5. Top Business Categories
- **Question:** What are the top 10 business categories?  
- **Solution:** SQL queries to rank categories by number of businesses.  
- **Insight:** **Restaurants** rank #1, followed by **Food**, with **Automotive** at #10.  

---

#### 6. Category Ratings
- **Question:** What is the average rating of businesses across top categories?  
- **Solution:** SQL group-by with average ratings + Tableau visualizations.  
- **Insight:** Restaurants & Food maintain **consistently high ratings** compared to other categories.  

---

### 🌍 Business Impact
- 📈 Identifies **influencer users** for customer engagement programs.  
- 🏪 Highlights **top-performing states & categories** for market expansion.  
- 🏆 Tracks **elite user trends** to improve loyalty initiatives.  
- 📊 Provides **executive-level dashboards** for strategic decision-making.  

---

### 🔮 Future Expansion (Optional)
- **`/etl/`** → ETL or data ingestion pipelines  
- **`/api/`** → FastAPI/Flask services for exposing analytics via REST APIs  
- **`/ml/`** → Machine learning scripts (e.g., sentiment analysis on reviews)  

