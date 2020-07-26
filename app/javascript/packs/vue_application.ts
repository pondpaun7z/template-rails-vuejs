import TurbolinksAdapter from "vue-turbolinks";
import Vue from "vue/dist/vue.esm";

import vuetify from "../plugins/vuetify";
import * as filters from "../filters";
// import * as components from "../components";

import TurbolinksCustom from "../utilities/tubolinks-custom";
Vue.prototype.$turbolinks = TurbolinksCustom;

Vue.use(TurbolinksAdapter);

Object.keys(filters).forEach(key => {
  Vue.filter(key, (filters as any)[key]);
});

// Object.keys(components).forEach(key => {
//   Vue.component(key, (components as any)[key]);
// });

import Home from 'pages/home'

document.addEventListener("turbolinks:load", () => {
  new Vue({
    el: '[data-behavior="vue"]',
    vuetify,
    components: {
      Home
    },
  });
});
