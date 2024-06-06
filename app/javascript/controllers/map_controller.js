import { Controller } from "@hotwired/stimulus"

import mapboxgl from 'mapbox-gl' // Don't forget this
import MapboxGeocoder from 'mapbox-gl-geocoder'

// Connects to data-controller="map"
export default class extends Controller {
  static targets = ["address"]
  static values = {
    apiKey: String

import mapboxgl from 'mapbox-gl'

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array

  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue


    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })

    this.map.addControl(
      this.geocoder = new MapboxGeocoder({
          accessToken: mapboxgl.accessToken,
          zoom: 14,
          mapboxgl: mapboxgl
      })
    );

    this.geocoder.on("result", (event) => this.#setInputValue(event))
    this.geocoder.on("clear", () => this.#clearInputValue())

  }

  disconnect() {
    this.geocoder.onRemove()
  }

  #setInputValue(event) {
    console.log("coucou");
    this.addressTarget.value = event.result["place_name"]
  }

  #clearInputValue() {
    this.addressTarget.value = ""
  }

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/light-v11"

    })
     this.#addMarkersToMap()
     this.#fitMapToMarkers()
  }
   #addMarkersToMap() {
     this.markersValue.forEach((marker) => {
      // const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.map)
       });
   }

   #fitMapToMarkers() {
     const bounds = new mapboxgl.LngLatBounds()
     this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
     this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
   }

}
