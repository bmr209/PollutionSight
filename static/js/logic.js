console.log("working");

// Creating the tile layer that will be the background of the map.
let streets = L.tileLayer('https://api.mapbox.com/styles/v1/mapbox/outdoors-v11/tiles/{z}/{x}/{y}?access_token={accessToken}', {
attribution: 'Map data © <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery (c) <a href="https://www.mapbox.com/">Mapbox</a>',
    maxZoom: 18,
    accessToken: API_KEY
});

// Creating the satellite view tile layer that will be an option for the map.
let nightNavigation = L.tileLayer('https://api.mapbox.com/styles/v1/mapbox/navigation-night-v1/tiles/{z}/{x}/{y}?access_token={accessToken}', {
attribution: 'Map data © <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery (c) <a href="https://www.mapbox.com/">Mapbox</a>',
    maxZoom: 18,
    accessToken: API_KEY
});

// Creating a base layer that holds both maps.
let baseMaps = {
    Street: streets,
    "Night Navigation": nightNavigation
};

// Creating the map object with center, zoom level and default layer.
let map = L.map('mapid', {
    center: [37.6872, -97.3301],
    zoom: 5,
    layers: [streets]
});

// Adding layer groups to the map data
let nov20Pollution = new L.LayerGroup();
let feb21Pollution = new L.LayerGroup();
let may21Pollution = new L.LayerGroup();

// Adding a reference to the overlays object.
let overlays = {
  "November 27, 2020": nov20Pollution,
  "February 27, 2021": feb21Pollution,
  "May 27, 2021": may21Pollution
};

// Adding a control to the map to allow user to select map
var layerControl = L.control.layers(baseMaps, overlays).addTo(map);

let cities = [{
    location: [34.0522, -118.2437],
    lat: 34.0522,
    lon: -118.2437,
    city: "Los Angeles", 
    state: "CA"
  },
  {
    location: [37.7749, -122.4194],
    lat: 37.7749,
    lon: -122.4194,
    city: "San Francisco",
    state: "CA" 
  },
  {
    location: [47.6062, -122.3321],
    lat: 47.6062,
    lon: -122.3321,
    city: "Seattle",
    state: "WA" 
  },
  {
    location: [39.1067, -94.6764],
    lat: 39.106667,
    lon: -94.676392,
    city: "Kansas City",
    state: "KS"
  },
  {
    location: [32.7767, -96.797],
    lat: 32.7767,
    lon: -96.7970,
    city: "Dallas",
    state: "TX" 
  },
  {
    location: [29.7604, -95.3698],
    lat: 29.7604,
    lon: -95.3698, 
    city: "Houston",
    state: "TX"
  },
  {
    location: [33.749, -84.388],
    lat: 33.7490,
    lon: -84.3880,
    city: "Atlanta",
    state: "GA"
  },
  {
    location: [25.7617, -80.1918],
    lat: 25.7617,
    lon: -80.1918,
    city: "Miami",
    state: "FL"
  },
  {
    location: [39.9526, -75.1652],
    lat: 39.9526,
    lon: -75.1652,
    city: "Philadelphia",
    state: "PA"
  },
  {
    location: [40.7128, -74.006],
    lat: 40.7128,
    lon: -74.0060,
    city: "New York",
    state: "NY"
  },
  {
    location: [42.3601, -71.0589],
    lat: 42.3601,
    lon: -71.0589,
    city: "Boston",
    state: "MA"
  }];

// Accessing the Air Pollution data
// let pollutionData = "http://api.openweathermap.org/data/2.5/air_pollution/history?lat=34.0522&lon=-118.2437&start=1557415834&end=1557588634&appid=AIR_POLLUTION_KEY";
//let losangelesPollution = "https://api.openweathermap.org/data/2.5/air_pollution/history?lat=34.0522&lon=-118.2437&start=1606223802&end=1606482999&appid=17e58ea8015947a8440740ade47c08c6"
// let losangelesPollution = "https://api.openweathermap.org/data/2.5/air_pollution/history?lat=34.0522&lon=-118.2437&start=1606223802&end=1606482999&appid={API_KEY}", {
//     API_KEY: AIR_POLLUTION_KEY
// };
// let losangelesPollution = 'https://api.openweathermap.org/data/2.5/air_pollution/history?lat={lat}&lon={lon}&start={start}&end={end}&appid={API_KEY}', {
//   lat: cities[0].lat,
//   lon: cities[0].lon,
//   start: 1606223802,
//   end: 1606482999,
//   API_KEY: AIR_POLLUTION_KEY
// };

// def mapper(array_data, match_value1, match_value2):
//      return next((val['city'] for val in array_data if val['location'][0] == match_value1 and val['location'][1] == match_value2), "NaN")


fetch("././api_nov_27_2020.json")
    .then(function(response) {
      return response.json()
    })
//d3.json("https://raw.githubusercontent.com/bmr209/PollutionSight/brian_rincon/api_nov_27_2020.json")
    .then (function(data) {
        //cities.forEach(function(city){
          //console.log(city)

        // function mapperCity (array_data, match_value1, match_value2) {
        //   return next([val['city'] for val in array_data if val['location'][0] === match_value1 and val['location'][1] === match_value2), "NaN"]
        // };

        // function mapperState (array_data, match_value1, match_value2) {
        //   return next([val['state'] for val in array_data if val['location'][0] === match_value1 and val['location'][1] === match_value2), "NaN"]
        // };
        
          for (let i = 0; i < 11; i++) {

            for (let j = 0; j < 11; j++) {

              function getColor(aqi){
                if (data[i].list[4].main.aqi === 1){
                  return "#3cb371";
                }
                if (data[i].list[4].main.aqi === 2){
                    return "#00ff00";
                }
                if (data[i].list[4].main.aqi === 3){
                    return "#ffff00";
                }
                if (data[i].list[4].main.aqi === 4){
                    return "#ffa500";
                }
                else
                    return "#ff0000";
              }

              L.circleMarker([data[i].coord.lat, data[i].coord.lon], {
              
                fillColor: getColor(data[i].list[4].main.aqi),
                color: getColor(data[i].list[4].main.aqi)

              })
              .bindPopup("<h2>" + data[11].city[i] + ", " + data[11].state[i] + "<hr> CAQI: " + data[i].list[4].main.aqi + " </h2> <hr> In μg/m3: <h3> CO: " + data[i].list[4].components.co + "<hr> NO: " + data[i].list[4].components.no + "<hr> O3: " + data[i].list[4].components.o3 + "<hr> SO2: " + data[i].list[4].components.so2 + "</h3>")
              //.addTo(map)
              .addTo(nov20Pollution);
            }
          };
          nov20Pollution.addTo(map)
        //});
    })//.addTo(nov20Pollution);

  //nov20Pollution.addTo(map);

// d3.json(api_nov_27_2020).then(function(data) {
//     console.log(data);

//     cities.forEach(function(city){
//         console.log(city)

//         function getColor(aqi){
//             if (data.list[0].main.aqi === 1){
//                 return "#00800";
//             }
//             if (data.list[0].main.aqi === 2){
//                 return "#7cfc00";
//             }
//             if (data.list[0].main.aqi === 3){
//                 return "#ffff00";
//             }
//             if (data.list[0].main.aqi === 4){
//                 return "#ffa500";
//             }
//             else
//                 return "#ff0000";
//         }

//         L.circleMarker([city.lat, city.lon], {
//             fillColor: getColor
//         })
//         .bindPopup("<h2>" + city.city + ", " + city.state + "<hr> AQI: " + data.list[0].main.aqi + " </h2> <hr> In μg/m3: <h3> CO: " + data.list[0].components.co + "<hr> NO: " + data.list[0].components.no + "<hr> O3: " + data.list[0].components.o3 + "<hr> SO2: " + data.list[0].components.so2 + "</h3>")
//         .addTo(map)
//     });
// });

fetch("././api_feb_27_2021.json")
    .then(function(response) {
      return response.json()
    })
//d3.json("https://raw.githubusercontent.com/bmr209/PollutionSight/brian_rincon/api_feb_27_2021.json")
    .then (function(data) {
      // function mapperCity (array_data, match_value1, match_value2) {
      //   return next([val['city'] for val in array_data if val['location'][0] === match_value1 and val['location'][1] === match_value2), "NaN"]
      // };

      // function mapperState (array_data, match_value1, match_value2) {
      //   return next([val['state'] for val in array_data if val['location'][0] === match_value1 and val['location'][1] === match_value2), "NaN"]
      // };
      
          for (let i = 0; i < 11; i++) {

            for (let j = 0; j < 11; j++) {

              function getColor(aqi){
                if (data[i].list[4].main.aqi === 1){
                  return "#3cb371";
                }
                if (data[i].list[4].main.aqi === 2){
                    return "#00ff00";
                }
                if (data[i].list[4].main.aqi === 3){
                    return "#ffff00";
                }
                if (data[i].list[4].main.aqi === 4){
                    return "#ffa500";
                }
                else
                    return "#ff0000";
              }

              L.circleMarker([data[i].coord.lat, data[i].coord.lon], {
              
                fillColor: getColor(data[i].list[4].main.aqi),
                color: getColor(data[i].list[4].main.aqi)

              })
              .bindPopup("<h2>" + data[11].city[i] + ", " + data[11].state[i] + "<hr> CAQI: " + data[i].list[4].main.aqi + " </h2> <hr> In μg/m3: <h3> CO: " + data[i].list[4].components.co + "<hr> NO: " + data[i].list[4].components.no + "<hr> O3: " + data[i].list[4].components.o3 + "<hr> SO2: " + data[i].list[4].components.so2 + "</h3>")
              //.addTo(map)
              .addTo(feb21Pollution);
            };
          };
          feb21Pollution.addTo(map)
    })//.addTo(feb21Pollution);

  //feb21Pollution.addTo(map);

// Creating legend control object
let legend = L.control({
  position: "bottomright"
});

// Adding the details for the legend
legend.onAdd = function() {
  let div = L.DomUtil.create("div", "info legend");

  const caqi = [1, 2, 3, 4, 5];
  const colors = [
    "#3cb371",
    "#00ff00",
    "#ffff00",
    "#ffa500",
    "#ff0000"
  ];

  // Generating label and a colored square for each interval
  for (var i = 0; i < caqi.length; i++) {
    console.log(colors[i]);
    div.innerHTML +=
      "<i style='background: " + colors[i] + "'></i> " + caqi[i] + "<br>";
  }
  return div;
};

// Adding legend to the map
legend.addTo(map);

// Adding May 27, 2021 json
fetch("././api_may_27_2021.json")
    .then(function(response) {
      return response.json()
    })
//d3.json("https://raw.githubusercontent.com/bmr209/PollutionSight/brian_rincon/api_feb_27_2021.json")
    .then (function(data) {

          for (let i = 0; i < 11; i++) {

            for (let j = 0; j < 11; j++) {

              function getColor(aqi){
                if (data[i].list[4].main.aqi === 1){
                  return "#3cb371";
                }
                if (data[i].list[4].main.aqi === 2){
                    return "#00ff00";
                }
                if (data[i].list[4].main.aqi === 3){
                    return "#ffff00";
                }
                if (data[i].list[4].main.aqi === 4){
                    return "#ffa500";
                }
                else
                    return "#ff0000";
              }

              L.circleMarker([data[i].coord.lat, data[i].coord.lon], {
              
                fillColor: getColor(data[i].list[4].main.aqi),
                color: getColor(data[i].list[4].main.aqi)

              })
              .bindPopup("<h2>" + data[11].city[i] + ", " + data[11].state[i] + "<hr> CAQI: " + data[i].list[4].main.aqi + " </h2> <hr> In μg/m3: <h3> CO: " + data[i].list[4].components.co + "<hr> NO: " + data[i].list[4].components.no + "<hr> O3: " + data[i].list[4].components.o3 + "<hr> SO2: " + data[i].list[4].components.so2 + "</h3>")
              .addTo(may21Pollution);
            };
          };
          may21Pollution.addTo(map)
    });