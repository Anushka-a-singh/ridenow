import { Controller } from "stimulus";


export default class extends Controller {
  static targets = [ 'select' ];

  connect() {
    console.log('hello');
  }
}