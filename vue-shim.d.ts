declare module "*.vue" {
  import Vue from "vue";
  export default Vue;
}

declare interface Window {
  store: any;
}

declare let Turbolinks: any;
