import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="rooms"
export default class extends Controller {
  static targets = ["rooms"]
  connect() {
    console.log("Check rooms")
  }

  increment() {
    this.RoomsTarget.value = this.RoomsTarget.value + 1
  }

  decrement() {
    if (this.RoomsTarget.value > 0)
    this.RoomsTarget.value = this.RoomsTarget.value - 1

  }
}
