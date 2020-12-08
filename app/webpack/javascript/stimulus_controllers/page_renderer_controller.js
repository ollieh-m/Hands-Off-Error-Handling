import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "page" ]

  render(event) {
    this.pageTarget.replaceWith(
      this._extractPage(event)
    )
  }

  // private

  _extractPage(event) {
    var element = document.createElement('div')
    element.insertAdjacentHTML('beforeend', event.detail[2].response)
    return element.querySelector('[data-page-renderer-target="page"]')
  }
}