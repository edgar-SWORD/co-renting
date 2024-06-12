import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["chatroom", "chatButton"]

  connect() {

  }


  toggle(event) {
    event.preventDefault();
    if (this.hasChatroomTarget) {
      this.chatroomTarget.classList.toggle("d-none");
    } else {
      console.error("chatroom target not found");
    }

}


}
