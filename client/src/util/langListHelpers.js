export function remToPixels(rem) {
  return rem * parseFloat(getComputedStyle(document.documentElement).fontSize);
}

export function langListWidth() {
  return parseInt(document.getElementById('lang-list').offsetWidth);
}

export function docIsHidden() {
  return document.hidden;
}