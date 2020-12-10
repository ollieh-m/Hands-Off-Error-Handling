import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "alert" ]

  showError(event) {
    this.alertTarget.innerText = this._extractMessage(event)
    this.alertTarget.classList.remove("hidden")
  }

  // private

  _extractMessage(event) {
    return event.detail[2].response
  }
}