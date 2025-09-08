import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    autosubmit: Boolean, default: false,
    submitdelay: Number, default: 0
  }

  connect() {
    if (this.autosubmitValue) {
      this.element.addEventListener("change", this.submitRequest.bind(this))
    }
  }

  disconnect() {
    if (this.autosubmitValue) {
      this.element.removeEventListener("change", this.submitRequest.bind(this))
    }
  }

  submitRequest() {
    setTimeout(() => { this.element.requestSubmit() }, this.submitdelayValue)
  }
}
