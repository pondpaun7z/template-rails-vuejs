const { environment } = require('@rails/webpacker')
const typescript =  require('./loaders/typescript')
const vuetify = require("./loaders/vuetify");
const { VueLoaderPlugin } = require('vue-loader')
const vue = require('./loaders/vue')

environment.plugins.prepend('VueLoaderPlugin', new VueLoaderPlugin())
environment.loaders.prepend('vue', vue)
environment.loaders.prepend("vuetify", vuetify);
environment.loaders.prepend('typescript', typescript)

const resolver = {
  resolve: {
    alias: {
      vue$: "vue/dist/vue.esm.js"
    }
  }
};
environment.config.merge(resolver);

module.exports = environment
