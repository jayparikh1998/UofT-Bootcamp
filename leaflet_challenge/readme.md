# Earthquake Visualization Project

This project visualizes earthquake data using a web map, powered by Leaflet, D3.js, and data from the United States Geological Survey (USGS).

## Overview

The map plots earthquake data, where each earthquake is represented as a circle. The size of the circle indicates the magnitude of the earthquake, and the color indicates the depth. The map also includes a legend and pop-ups that provide additional information about each earthquake when clicked.

## Files

- `index.html`: The HTML file that hosts the map and includes links to the required CSS and JS files.
- `style.css`: Contains the styles for the map and the legend.
- `logic.js`: Contains the JavaScript code that creates the map and handles the data visualization.

## Setup

1. Download the files:
   - [Index HTML](sandbox:/mnt/data/index.html)
   - [CSS](sandbox:/mnt/data/style.css)
   - [JavaScript](sandbox:/mnt/data/logic.js)
2. Place all files in the same directory on your server or local environment.
3. Open `index.html` in a web browser to view the map.

## Features

- **Map Initialization**: A map is created centered on the geographical coordinates that likely represent an active region for earthquakes.
- **Data Visualization**:
  - Earthquakes are plotted using circles.
  - Circle size represents the magnitude of the earthquake.
  - Circle color represents the depth of the earthquake.
- **Interactivity**:
  - Click on any earthquake marker to see more details about that earthquake in a pop-up window.
- **Legend**: A legend on the map explains the color coding of the earthquake depths.

## Libraries Used

- **Leaflet**: An open-source JavaScript library for mobile-friendly interactive maps.
- **D3.js**: A JavaScript library for manipulating documents based on data.

## Data Source

- **USGS Earthquake Data**: Real-time data feed from the United States Geological Survey (USGS) that provides earthquake data. The data is pulled from the USGS GeoJSON Feed.

Feel free to modify and use this project for your data visualization needs!
