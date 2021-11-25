// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"
import Sortable from "sortablejs"
import Rails from '@rails/ujs'

export default class extends Controller {
  static targets = [ "tasks" ]
  connect() {
    this.tasksTargets.forEach((tasks) => {
      new Sortable(tasks, {
        ghostClass: "ghost",
        animation: 150,
        onEnd: this.end.bind(this),
        group: {name: "tasks", put: true }
      })
    })
  }
  end(event) {
    let id = event.item.dataset.id
    let status = event.to.dataset.status
    let data = new FormData()
    data.append("position", event.newIndex + 1)
    data.append("status", status)
    Rails.ajax({
      url: this.data.get("url").replace(":id", id),
      type: 'PATCH',
      data: data
    })
  }
}


// this.outputTarget.textContent = 'Hello, Stimulus!'
