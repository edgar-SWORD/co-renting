import { Controller } from "@hotwired/stimulus"


export default class extends Controller {

  static targets = ["chatroom"]

  connect() {
    console.log(`connected to the chatroom index`)


  }

  display(event) {
    event.preventDefault()
    const path = event.currentTarget.href;
    fetch(path, {
      headers: {'Accept': 'application/json'}
    })
    .then(response => response.json())
    .then(data => {
      this.chatroomTarget.innerHTML = data.html
    })
  }

}
