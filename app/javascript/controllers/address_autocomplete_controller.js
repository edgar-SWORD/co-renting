import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="address-autocomplete"
export default class extends Controller {
  static values = { apiKey: String }

  static targets = ["location"]

  connect() {
    console.log("test")
    this.geocoder = new MapboxGeocoder({
      accessToken: this.apiKeyValue,
      types: "place,postcode,locality,address",
      placeholder: "80, rue de la Paix, Paris"
    })
    this.geocoder.addTo(this.element)
    this.geocoder.on("result", event => this.#setInputValue(event))
    this.geocoder.on("clear", () => this.#clearInputValue())
  }

  disconnect() {
    this.geocoder.onRemove()
  }

  #setInputValue(event) {
    this.locationTarget.value = event.result.place_name
  }

  #clearInputValue() {
    this.locationTarget.value = ""
  }
}
