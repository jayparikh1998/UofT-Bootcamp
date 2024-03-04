# README - Employee Database Project
Overview
This document summarizes the work done on the Employee Database project, which involved creating a SQL database schema, importing data from CSV files, and writing specific SQL queries to retrieve information from the database.

## Files Overview
The project involved the following CSV files:

employees.csv: Contains employee details.
titles.csv: Contains job titles.
departments.csv: Contains department details.
dept_emp.csv: Maps employees to departments.
dept_manager.csv: Lists department managers.
salaries.csv: Contains employee salary information.
Database Schema
The database consists of the following tables:

Employees: Stores employee details.
Titles: Stores job titles.
Departments: Stores department details.
Dept_Emp: Maps employees to departments.
Dept_Manager: Lists department managers.
Salaries: Stores employee salary information.
Primary keys and foreign keys were established based on the data relationships.

## SQL Table Creation
SQL statements were created to define the schema of each table in the database. This includes data types, primary keys, and foreign key relationships.

## Data Import
SQL import statements were written to load data from the CSV files into the corresponding tables in the database. The COPY command was used for PostgreSQL, with adjustments for file paths and data formatting.

## Queries
Several specific SQL queries were written to extract information from the database, including:

Listing employee details with salaries.
Finding employees hired in a specific year.
Listing department managers.
Showing department details for each employee.
Finding employees with specific name criteria.
Listing employees in certain departments.
Frequency count of employee last names.
### Usage Instructions
Database Setup: Use the provided SQL schema creation statements to set up the database tables.
Data Import: Adjust the file paths in the import statements to match the location of your CSV files, and execute them to populate the tables.
Running Queries: Execute the provided SQL queries to retrieve the required information from the database.
### Notes
Ensure that the PostgreSQL datestyle setting matches the date format in your CSV files.
Modify file paths in the SQL import statements to reflect the actual locations of your CSV files.
If encountering permission issues, ensure that PostgreSQL has read access to the CSV files.