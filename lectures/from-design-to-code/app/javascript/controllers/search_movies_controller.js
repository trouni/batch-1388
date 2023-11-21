import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-movies"
export default class extends Controller {
  static targets = ['list']

  connect() {
    console.log('connected to the search movies controller')
  }

  search(event) {
    // collect the query from the user
    const query = event.target.value
    // use it get the filtered movies
    const url = `/movies?query=${query}`
    fetch(url, {
      headers: { Accept: 'text/plain' }
    })
    .then(response => response.text())
    .then(data => {
      // `data` is the HTML partial as text
      this.listTarget.outerHTML = data
    })
  }
}
