import { Controller } from "stimulus"

const DURATION = 2000;

export default class extends Controller {
  static values = { id: String }
  static classes = [ "highlight", "fade" ]

  connect(event) {
    if (this.idValue != "") {
      this._highlightElement.classList.add(this.fadeClass, this.highlightClass)

      this._removeFocus()
    }
  }

  // private

  _removeFocus() {
    setTimeout(()=>{
      this._highlightElement.classList.remove(this.highlightClass)

      this.idValue = undefined
    }, DURATION)
  }

  get _highlightElement() {
    return this.element.querySelector(`#${this.idValue}`)
  }
}