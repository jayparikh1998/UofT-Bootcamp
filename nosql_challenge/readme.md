# UK Food Establishments Analysis

## Overview

This project involves analyzing data of food establishments in the UK. The data is stored in a MongoDB database and analyzed using a Jupyter notebook. The analysis focuses on various aspects of the establishments such as hygiene scores, ratings, and geographical locations.

## Prerequisites

- MongoDB
- Python
- Jupyter Notebook
- Python Libraries: `pymongo`, `pandas`, `pprint`

## Installation and Setup

1. **MongoDB Database Setup:**
   Ensure MongoDB is installed and running on your system.
   
2. **Importing Data:**
   Use the following command to import the `establishments.json` file into MongoDB:
   ```bash
   mongoimport --db uk_food --collection establishments --file /path/to/establishments.json

## Setting Up the Notebook Environment:

1. Install Jupyter Notebook and the required Python libraries.
- Open the NoSQL_analysis_starter.ipynb notebook in Jupyter.
2. Database Connection:
In the notebook, connect to the MongoDB database using PyMongo.

## Analysis Steps
1. Data Verification:
Check the data import by listing databases and collections in MongoDB. Display a sample document.

2. Data Queries and Analysis:
Perform various queries to analyze the data, including:
- Finding establishments with specific hygiene scores or ratings.
- Aggregating data by local authority.
- Geospatial queries to find establishments near a specific location.

3. Data Manipulation:
Includes adding new documents, updating existing documents, and deleting documents based on certain criteria.

4. Data Type Conversion:
Convert data types of specific fields like latitude, longitude, and rating values.

5. Exporting Results:
Convert query results to Pandas DataFrames for easier manipulation and analysis. Export results as needed

## Conclusion and Reporting
Summarize the findings from the analysis and present them in a format suitable for the magazine's editors, focusing on insights related to food establishment ratings and hygiene standards in different areas.