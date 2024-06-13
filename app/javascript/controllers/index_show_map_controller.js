import { Controller } from "@hotwired/stimulus";
import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from 'mapbox-gl-geocoder';

// Connects to data-controller="index-show-map"
export default class extends Controller {
  static targets = ["address"];
  static values = {
    apiKey: String,
    markers: Array
  };

  connect() {
    console.log(this.apiKeyValue);
    mapboxgl.accessToken = this.apiKeyValue;

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/light-v11"
    });

    this.markers = [];
    this.#addMarkersToMap();
    this.#fitMapToMarkers();
  }

  #addMarkersToMap() {
    // Clear existing markers
    this.markers.forEach(marker => marker.remove());
    this.markers = [];

    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html);
      const newMarker = new mapboxgl.Marker({ color: '#83C5BE' })
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(this.map);
      this.markers.push(newMarker);
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds();
    this.markersValue.forEach(marker => bounds.extend([marker.lng, marker.lat]));
    this.map.fitBounds(bounds, { maxZoom: 11, duration: 10 });
  }

  updateMarkers(event) {
    event.preventDefault();
    const url = event.target.action;
    const formData = new FormData(event.target);

    fetch(`${url}.json?${new URLSearchParams(formData).toString()}`)
      .then(response => response.json())
      .then(data => {
        this.markersValue = data.markers;
        this.#addMarkersToMap();
        this.#fitMapToMarkers();
      });
  }
}

