import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="rooms"
export default class extends Controller {
  static targets = ["room", "display", "count"]

  connect() {
  }

  increment() {
    const newValue = parseInt(this.roomTarget.value) + 1
    this.roomTarget.value = newValue
    this.displayTarget.innerHTML = this.roomTarget.value
    this.countTarget.innerText = "rooms"
  }

  decrement() {
    if (parseInt(this.roomTarget.value) > 0) {
      const newValue = parseInt(this.roomTarget.value) - 1
      this.roomTarget.value = newValue
      this.displayTarget.innerHTML = this.roomTarget.value
      if (newValue <2) {
        this.countTarget.innerText = "room"
      }
    }
  }


}
