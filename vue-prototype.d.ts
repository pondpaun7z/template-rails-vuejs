import Vue, { VueConstructor } from "vue";

declare module "vue/types/vue" {
  interface Vue {
    $turbolinks: any;
  }

  interface VueConstructor {
    $turbolinks: any;
  }
}

declare module "vue/types/options" {
  interface ComponentOptions<V extends Vue> {
    $turbolinks?: any;
  }
}
