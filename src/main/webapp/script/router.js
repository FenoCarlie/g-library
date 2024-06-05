document.addEventListener("DOMContentLoaded", function () {
  const links = document.querySelectorAll(
    "#dashBoard-link, #book-link, #member-link, #lend-link, #return-link"
  );

  links.forEach((link) => {
    link.addEventListener("click", clicked);
  });
  function clicked(event = null) {
    event.preventDefault();
    const viewName = this.id.replace("-link", "");
    loadView(viewName);
  }
  function loadView(viewName) {
    const viewsContainer = document.querySelector(".views-container");
    viewsContainer.innerHTML = "";

    const viewPath = `/g-bibliotheque/views/${viewName}.jsp`;
    let current_path = `/g-bibliotheque/${viewName}`;
    fetch(viewPath)
      .then((response) => response.text())
      .then((html) => {
        let page = document.getElementsByClassName("link");
        if (page[0].getAttribute("name") == viewName.toLowerCase()) {
          current_path = "/g-bibliotheque/";
        }
        viewsContainer.innerHTML = html;
        // history.pushState(null, null, current_path);
      })
      .catch((error) =>
        console.error(`Erreur lors du chargement de ${viewName}:`, error)
      );
  }
});
