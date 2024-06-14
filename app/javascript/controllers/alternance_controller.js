import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="alternance"
export default class extends Controller {
  static targets = ["evenElement", "oddElement", "evenValue", "oddValue" ]

  connect() {
    console.log("ok")
    console.log(this.oddElementTarget)
  }

  selecteven() {
    console.log("ca marche")
    this.evenElementTarget.classList.add('alternance-switch');
    this.oddElementTarget.classList.remove('alternance-switch');
    console.log(this.evenValueTarget)
    this.evenValueTarget.checked = true
    console.log(this.evenValueTarget)
    this.oddValueTarget.checked = false
  }

  selectodd() {
    console.log("ca marche")
    this.oddElementTarget.classList.add('alternance-switch');
    this.evenElementTarget.classList.remove('alternance-switch');
    this.evenValueTarget.checked = false
    this.oddValueTarget.checked = true
  }
}
