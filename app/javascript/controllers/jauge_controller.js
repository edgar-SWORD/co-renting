import { Controller } from "@hotwired/stimulus"
// app/javascript/controllers/jauge_controller.js

export default class extends Controller {
  static targets = ["innerBar"]
  static values = {
    ratio: Number
  }

  connect() {
    console.log(this.ratioValue)
    this.#setInnerBarTargetWidth()
  }

  #setInnerBarTargetWidth() {
    const width = (this.ratioValue / 3) * 100
    this.innerBarTarget.style.width = `${width}%`
  }
}
