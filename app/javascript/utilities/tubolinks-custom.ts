export default (function (): Function {
  function reload(path: string, option: object) {
    Turbolinks.visit(path, option);
  }
  return reload;
})();
