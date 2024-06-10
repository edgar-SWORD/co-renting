import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'
import MapboxGeocoder from 'mapbox-gl-geocoder'
// Connects to data-controller="index-show-map"
export default class extends Controller {
  static targets = ["address"]
  static values = {
    apiKey: String,
    markers: Array
  }


  connect() {
    console.log(this.apiKeyValue);
    mapboxgl.accessToken = this.apiKeyValue


    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/light-v11"
    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)
      new mapboxgl.Marker()
        .setLngLat([marker.lng, marker.lat])
        .addTo(this.map);
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds();
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { maxZoom: 11, duration: 10})
  }
}
