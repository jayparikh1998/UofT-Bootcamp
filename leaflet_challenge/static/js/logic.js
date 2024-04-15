
// Creating map object
var myMap = L.map("map", {
  center: [37.7749, -122.4194], // Example center
  zoom: 5
});

// Adding tile layer
L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
  attribution: '© OpenStreetMap contributors'
}).addTo(myMap);

// Use this link to get the geojson data
var link = "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_week.geojson";

// Function to determine marker size based on earthquake magnitude
function markerSize(magnitude) {
  return magnitude * 20000;
}

// Function to determine marker color based on earthquake depth
function getColor(d) {
  return d > 90 ? '#800026' :
         d > 70  ? '#BD0026' :
         d > 50  ? '#E31A1C' :
         d > 30  ? '#FC4E2A' :
         d > 10   ? '#FD8D3C' :
                    '#FEB24C';
}

// Grabbing our GeoJSON data
d3.json(link).then(function(data) {
  // Creating a geoJSON layer with the retrieved data
  L.geoJson(data, {
    // Style each feature (in this case a point)
    pointToLayer: function(feature, latlng) {
      return L.circle(latlng, {
        radius: markerSize(feature.properties.mag),
        color: getColor(feature.geometry.coordinates[2]),
        fillOpacity: 0.7
      });
    },
    // Called on each feature
    onEachFeature: function(feature, layer) {
      // Set mouse events to change map styling
      layer.on({
        // When a feature (point) is clicked, it will popup a description
        click: function(event) {
          layer.bindPopup("Magnitude: " + feature.properties.mag + "<br>Depth: " + feature.geometry.coordinates[2] + "<br>Location: " + feature.properties.place);
        }
      });
    }
  }).addTo(myMap);

  // Setting up the legend
  var legend = L.control({position: 'bottomright'});
  legend.onAdd = function (map) {
    var div = L.DomUtil.create('div', 'legend'),
        grades = [0, 10, 30, 50, 70, 90],
        labels = [];

    // loop through our density intervals and generate a label with a colored square for each interval
    for (var i = 0; i < grades.length; i++) {
        div.innerHTML +=
            '<i style="background:' + getColor(grades[i] + 1) + '"></i> ' +
            grades[i] + (grades[i + 1] ? '&ndash;' + grades[i + 1] + '<br>' : '+');
    }

    return div;
  };

  legend.addTo(myMap);
});
