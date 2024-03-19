# Mars Weather Analysis
This project involves scraping, processing, and analyzing weather data from Mars, specifically focusing on data transmitted by the Curiosity rover. The goal is to gain insights into the Martian environment, such as temperature variations and atmospheric pressure changes over time.

## Data Source
The data is scraped from the Mars Temperature Data Site (link). This site provides detailed temperature and pressure readings taken by the Curiosity rover.

## Tools and Libraries
Python: The primary programming language used for this analysis.
BeautifulSoup: Used for web scraping to extract weather data from the website.
Pandas: Utilized for data manipulation and analysis.
Matplotlib: For generating plots to visualize the data.
Analysis Steps
Data Scraping: The Python script uses BeautifulSoup to scrape weather data from the website. It collects information about terrestrial dates, Martian sols, temperature, and atmospheric pressure.

Data Processing: The raw data is processed and converted into a structured pandas DataFrame. Necessary data type conversions are performed for accurate analysis.

Data Analysis: The processed data is analyzed to answer several key questions:

How many months exist on Mars?
How many Martian days worth of data exist in the dataset?
What are the coldest and warmest months on Mars?
Which months have the lowest and highest atmospheric pressure on Mars?
Visualization: Plots are generated to visualize the average minimum daily temperature and atmospheric pressure by Martian month. A line chart is used to estimate the number of terrestrial (Earth) days in a Martian year.

Exporting Data: The final DataFrame is exported to a CSV file for potential further analysis or external usage.

## Key Findings
The analysis provides an estimation of the number of months on Mars and the amount of data (in Martian days) collected.
Temperature and pressure trends are observed and plotted to identify seasonal variations on Mars.
The dataset helps estimate the length of a Martian year in Earth days through temperature pattern analysis.
## Usage
To run the analysis, ensure you have Python installed along with the required libraries mentioned above. Run the Jupyter Notebook part_2_mars_weather.ipynb to execute the analysis steps. The notebook is well-documented, guiding through each step of the process.
