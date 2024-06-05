window.addEventListener("load", setActive);
window.addEventListener("popstate", setActive);

window.addEventListener("load", wait_for_active);
function setActive() {
  let start, current, active, link, app, page;
  app = "g-bibliotheque/";
  page = location.pathname;
  start = page.indexOf(app);
  if (start < 1) {
    start = 0;
  } else {
    start += app.length;
  }
  current = page.slice(start);
  link = document.getElementsByClassName("link");
  if (current.length < 1) {
    active = link[0];
  } else {
    active = link[current];
  }
  for (current in link) {
    if (isNaN(current)) {
      continue;
    }
    link[current].classList.remove("active");
  }
  active.classList.add("active");
}
function wait_for_active() {
  let current, link;
  current = document.getElementsByClassName("link");
  for (link in current) {
    if (isNaN(link)) {
      continue;
    }
    current[link].addEventListener("click", activate);
  }
}
function activate() {
  if (this == undefined || this.tagName == undefined) {
    return;
  }
  let current, link;
  current = document.getElementsByClassName("link");
  for (link in current) {
    if (isNaN(link)) {
      continue;
    }
    current[link].classList.remove("active");
  }
  this.classList.add("active");
}
