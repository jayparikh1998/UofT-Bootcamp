# Home Sales Data Analysis

This project analyzes home sales data using PySpark.

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/Home_Sales.git
    cd Home_Sales
    ```
2. Install necessary software:
    - Python 3.6+
    - Java 8 or 11
    - Apache Spark
    - Hadoop binaries

3. Set environment variables:
    - `JAVA_HOME`
    - `HADOOP_HOME`
    - `SPARK_HOME`

## Usage

1. Download the data:
    ```python
    import requests
    url = "https://2u-data-curriculum-team.s3.amazonaws.com/dataviz-classroom/v1.2/22-big-data/home_sales_revised.csv"
    response = requests.get(url)
    with open("home_sales_revised.csv", "wb") as file:
        file.write(response.content)
    ```
2. Run the script:
    ```python
    python home_sales_analysis.py
    ```

## Queries Performed

1. Average price for four-bedroom houses per year.
2. Average price for three-bedroom, three-bathroom houses per year built.
3. Average price for specific criteria (three bedrooms, three bathrooms, two floors, >= 2,000 sqft).
4. Average price per "view" rating with average price >= $350,000.

## Caching and Performance

The script demonstrates caching to improve query performance.

## Parquet File Partitioning

Data is saved as Parquet files, partitioned by the `date_built` field.

## Dependencies

- Python 3.6+
- `requests` library
- Apache Spark
- Hadoop binaries
- Java 8 or 11

## Author

- Your Name - [Your GitHub Profile](https://github.com/your-username)

