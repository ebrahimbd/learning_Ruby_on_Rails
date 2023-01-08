import { Controller } from "@hotwired/stimulus";
import * as Vue from "vue";
const point = "#point";
const element = document.querySelector(point);
export default class extends Controller {
  connect() {
    this.element.textContent = "This is student controller page";
    if (element !== null) {
      const app = Vue.createApp({
        data() {
          return {
            message: `<%= @arr[0]["email"]%>`,
            count: 1,
            show: false,
          };
        },
        methods: {
          eb() {
            this.count = this.count + 1;
            if (this.count > 5 && this.count < 13) {
              this.show = true;
            } else {
              this.show = false;
            }
          },
        },
      });
      const vm = app.mount(point);
    }
  }
}
