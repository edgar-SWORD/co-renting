import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'
import MapboxGeocoder from 'mapbox-gl-geocoder'

// Connects to data-controller="map"
export default class extends Controller {
  static targets = ["address"]
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/light-v11",
      center: [2.3483915, 48.8534951],
      zoom: 5
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
    this.addressTarget.value = event.result["place_name"]
  }

  #clearInputValue() {
    this.addressTarget.value = ""
  }
}
