# Grocery Sales Data Warehouse & Visualization


**📌 Project Overview**

This project focuses on building a data warehouse and creating interactive dashboards for grocery sales analysis. Using a mix of SQL Server (RDBMS), Neo4j (Graph DB), and Tableau, the project demonstrates how data-driven insights can empower decision-making in the retail industry.
The project integrates multiple datasets (sales, products, customers, employees, and locations) into a centralized warehouse and explores different modeling techniques. The dashboards and reports provide insights into sales performance, customer behavior, product trends, and employee contributions.

**🎯 Objectives**

Develop a centralized data warehouse using a Star Schema.
Perform ETL processes using SSIS (SQL Server Integration Services).
Build interactive dashboards in Tableau for business insights.
Explore Graph Databases (Neo4j) for advanced querying and compare with relational models.
Provide actionable insights on:
Product performance & category trends
Customer demographics & geographic sales distribution
Employee efficiency
Impact of discounts & pricing strategies

**📂 Datasets**

Grocery Sales Dataset: Kaggle – Grocery Sales (https://www.kaggle.com/datasets/andrexibiza/grocery-sales-dataset)

AdventureWorks Dataset (for SQL vs. CQL comparison): Kaggle – AdventureWorks (https://www.kaggle.com/datasets/sadia21121/adventure-bike-sales-dataset)

**🏗️ Project Workflow**

  **1. Schema Design**

  Designed using a Star Schema with 5 Dimension Tables:
  Product, Customer, Employee, Location, Calendar
  Fact Table: Sales (Quantity, Discount, Total Price)
  Implemented normalization & optimized relationships for efficient querying.
  
  CREATE TABLE Sales_Fact (
      ProductKey INT,
      CustomerKey INT,
      EmployeeKey INT,
      CityKey INT,
      CalenderKey INT,
      Quantity INT,
      Discount DECIMAL(20,1),
      TotalPrice DECIMAL(20,2),
      PRIMARY KEY (ProductKey, CalenderKey)
  );

  **2. ETL Process (SSIS)**
  
  Customer_Dim: 98,759 customer records loaded.
  Location_Dim: 96 cities + 206 counties integrated.
  Product_Dim: 452 products + 11 categories processed.
  Calendar_Dim: 6.7M sales dates extracted.
  Employee_Dim: 23 employees loaded.
  Sales_Fact: 70,080 records processed with all keys mapped.

  **3. Visualizations (Tableau Dashboard)**
     
  Sales by Allergic Products – Showed allergen-labeled items contribute significantly.
  Avg Sales by Employee – Identified top performers for HR/training.
  Sales by Categories – Seafood & Confections lead, cereals underperform.
  Quantity Sales by Month – Showed seasonality & monthly fluctuations.
  Integrated Dashboard – Combined insights across categories, employees, and geography.

  **📊 Reports Generated:**
  
  Allergic vs. Non-Allergic Sales
  Category Growth (1900 vs 2018)
  Geographic Sales Distribution (cities like Sacramento leading)
  Impact of Discounts (20% discounts boosted volume but lowered avg price)

  **4. Graph Database Analysis (Neo4j)**
     
  Implemented queries in Cypher to explore relationships beyond SQL:
  Peak Order Day of the Week
  Top 5 Popular Products
  Orders Per Region
  Orders Per Month (2022)
  Products Never Ordered
  Sales by Product Color

  **🔄 Comparison with SQL:**
  
  SQL handles structured, normalized schemas better.
  Neo4j enables relationship-driven insights (e.g., product affinities, order networks).

**📊 Key Insights**

Non-allergic products dominated sales ($18M+ revenue).
Seafood, Poultry, and Meat categories showed strong long-term growth.
20% discounts increased sales volume significantly.
Sacramento emerged as the top-performing city.
Graph DB queries uncovered product popularity trends and customer purchasing patterns.

**🛠️ Tech Stack**

Data Storage: SQL Server, Neo4j
ETL: SSIS (SQL Server Integration Services)
Visualization: Tableau
Languages: SQL, CQL (Cypher)
Environment: Visual Studio 2022

**📌 Conclusion**

This project demonstrates how combining Data Warehousing, ETL Pipelines, Visualization Dashboards, and Graph Databases enables deeper business insights. By integrating structured (SQL) and relationship-based (Graph) approaches, organizations can optimize retail strategies, improve decision-making, and stay competitive in the grocery industry.

This project demonstrates how combining Data Warehousing, ETL Pipelines, Visualization Dashboards, and Graph Databases enables deeper business insights. By integrating structured (SQL) and relationship-based (Graph) approaches, organizations can optimize retail strategies, improve decision-making, and stay competitive in the grocery industry.
