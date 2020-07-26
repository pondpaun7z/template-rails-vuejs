import _ from "lodash";

function recursiveObjectToFormData(obj, namespace, formData) {
  let formKey;
  Object.keys(obj).forEach((key) => {
    if (Object.prototype.hasOwnProperty.call(obj, key)) {
      if (namespace) {
        if (_.isArray(obj)) {
          formKey = `${namespace}[]`;
        } else {
          formKey = `${namespace}[${key}]`;
        }
      } else {
        formKey = key;
      }
      if (
        !_.isNil(obj[key]) &&
        typeof obj[key] === "object" &&
        !(obj[key] instanceof File)
      ) {
        recursiveObjectToFormData(obj[key], formKey, formData);
      } else {
        formData.append(formKey, obj[key]);
      }
    }
  });

  return formData;
}

export function createFormData(obj = {}, namespace) {
  const formData = new FormData();
  return recursiveObjectToFormData(obj, namespace, formData);
}
