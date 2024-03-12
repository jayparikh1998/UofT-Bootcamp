# Climate Analysis Project

## Overview
This project involves a detailed climate analysis and data exploration using a climate database. The analysis is performed using Python along with libraries such as SQLAlchemy, Pandas, and Matplotlib. The project includes a Flask API designed to serve the results of the analysis through a set of HTTP routes.

## Features
- Precipitation Analysis: Analysis of the last 12 months of precipitation data from the climate database.
- Station Analysis: Examination of weather station data, including calculations of the most active stations and temperature observations.
- Flask API: A web application providing access to the analysis results through RESTful routes.

## Installation
Instructions on setting up the project environment:
1. Ensure Python 3.x is installed on your system.
2. Install required Python packages:
3. Clone the repository or download the project files to your local machine.

## Usage
### Running the Flask Application
To start the Flask server, run:
This will start the web server, making the API accessible at `http://localhost:5000/`.

### Available Routes
- `/`: The home route that lists all available API routes.
- `/api/v1.0/precipitation`: Returns JSON representation of the last year's precipitation data.
- `/api/v1.0/stations`: Lists all weather stations.
- `/api/v1.0/tobs`: Shows temperature observations of the most active station for the last year.
- `/api/v1.0/<start>` and `/api/v1.0/<start>/<end>`: Returns temperature statistics for a given date range.

## Contributing
Guidelines for contributing to the project, if applicable.

## License
Information about the project license, if applicable.

## Contact
Your contact information or that of the project maintainer.

## Acknowledgements
Credits and acknowledgments, if any.
