import { Controller } from "stimulus";
import consumer from "../channels/consumer";

export default class extends Controller {
  static values = { submissionId: Number }

  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "SubmissionChannel", id: this.submissionIdValue },
      { received: data => this.element.insertAdjacentHTML("beforeend", data) }
    )
    console.log(`Subscribed to the submission with the id ${this.submissionIdValue}.`);
  }
}
