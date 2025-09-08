import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  activateSpinner() {
    Array.from(
      this.element.querySelectorAll(".loading-wrapper")
    ).map(node => node.classList.add("is-loading"))
  }
}
