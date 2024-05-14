# Cryptocurrency Clustering Analysis
## Overview
This project involves analyzing cryptocurrency data to cluster different cryptocurrencies based on their market behaviors over various time frames. The analysis uses Principal Component Analysis (PCA) for dimensionality reduction and K-means clustering to group cryptocurrencies. The project includes a comparative visualization of clustering results with and without PCA.

## Files
crypto_market_data.csv: CSV file containing the cryptocurrency data.
Crypto_Clustering.ipynb: Jupyter notebook with all the analysis steps.

## Requirements
Python 3
Pandas
scikit-learn
Matplotlib
hvPlot (for interactive plotting, only compatible with Jupyter environments)

## Installation
Ensure you have Python installed, then install the required Python libraries using pip:
pip install pandas matplotlib scikit-learn hvplot

## Usage
- Data Preprocessing: Normalize the data using StandardScaler to ensure that the magnitude of the features doesn't bias the analysis.
- PCA Analysis: Reduce the dimensions of the data to the three most significant principal components.
- K-means Clustering: Perform clustering using K-means on both the original scaled data and the PCA-reduced data.
- Elbow Method Analysis: Determine the optimal number of clusters (k) by using the elbow method.
- Visualization:
Generate elbow plots to visualize the optimal k.
Create scatter plots to compare clusters derived from original data vs. PCA-reduced data.

## Steps to Run the Notebook
Open Crypto_Clustering.ipynb in a Jupyter environment.
Run the cells sequentially to load data, preprocess it, perform PCA, conduct clustering, and visualize the results.

## Key Insights
- Elbow Plot Analysis: Helps in identifying the number of clusters that provides a balance between the complexity of the model and its accuracy.
- PCA Impact: Analyze how dimensionality reduction influences clustering results.
- Cluster Visualization: Compare how clusters differ when using raw data versus data reduced via PCA.
