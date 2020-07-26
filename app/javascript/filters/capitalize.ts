export default (text) => {
  const newText = text.replace("_", " ");
  return newText.slice(0, 1).toUpperCase() + newText.slice(1);
};
