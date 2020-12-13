import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "page" ]

  render(event) {
    if (this._extractContentType(event).startsWith("text/html")) {
      this.pageTarget.replaceWith(
        this._extractPage(event)
      )
    }
  }

  // private

  _extractContentType(event) {
    return event.detail[2].getResponseHeader("Content-Type")
  }

  _extractPage(event) {
    var element = document.createElement('div')
    element.insertAdjacentHTML('beforeend', event.detail[2].response)
    return element.querySelector('[data-page-renderer-target="page"]')
  }
}