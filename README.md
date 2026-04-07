# netflix-sql-analysi

Project Overview

This project analyzes the Netflix dataset using SQL to extract useful insights about content available on the platform. The dataset was obtained from Kaggle and contains information about Netflix movies and TV shows including title, type, director, cast, country, release year, rating, and duration.

The goal of this project is to practice SQL data exploration, cleaning, and aggregation techniques to uncover trends in Netflix's catalog.

---

Dataset

Source: Kaggle – Netflix Movies and TV Shows Dataset

The dataset includes the following key columns:

- show_id – Unique ID for each title
- type – Movie or TV Show
- title – Name of the title
- director – Director of the title
- cast – Cast members
- country – Country of production
- date_added – Date added to Netflix
- release_year – Year the title was released
- rating – Age rating of the title
- duration – Length of movie or number of seasons
- listed_in – Genre category
- description – Short summary

---

Tools Used

- SQL
- SQLite Online IDE
- GitHub

---

Data Cleaning

Before analysis, basic data cleaning was performed.

Example query used to identify missing country values:

SELECT *
FROM netflix
WHERE country IS NULL OR country='';

---

SQL Analysis

1. Titles Released Per Year

SELECT release_year, COUNT(*) AS total
FROM netflix
GROUP BY release_year
ORDER BY release_year DESC;

Insight:
Netflix content increased significantly after 2015.

---

2. Most Common Content Rating

SELECT rating, COUNT(*) AS total
FROM netflix
GROUP BY rating
ORDER BY total DESC;

Insight:
TV-MA is the most common rating on Netflix.

---

3. Top Countries Producing Netflix Content

SELECT country, COUNT(*) AS total
FROM netflix
GROUP BY country
ORDER BY total DESC
LIMIT 5;

Insight:
The United States produces the highest number of titles, followed by India and the United Kingdom.

---

Key Insights

- TV-MA is the most frequent rating on Netflix.
- Content production increased heavily after 2016.
- The United States dominates Netflix content production.
- India is the second largest contributor.

---

Repository Structure

netflix-sql-analysis
│
├── dataset
│   └── netflix_titles.csv
│
├── queries.sql
│
└── README.md

---

Learning Outcome

This project demonstrates:

- SQL data cleaning
- Aggregation using COUNT and GROUP BY
- Sorting with ORDER BY
- Extracting insights from real-world datasets

---

Future Improvements

- Analyze most common genres
- Identify longest movies
- Compare Movies vs TV Shows distribution
- Create visualizations using Python or Power BI
