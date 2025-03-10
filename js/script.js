document.addEventListener("DOMContentLoaded", () => {
  // Efecto fade-in global al cargar la página
  setTimeout(() => {
    document.body.classList.add('fade-in');
  }, 100);

  // Animación secuencial de las tarjetas de Pokémon
  const cards = document.querySelectorAll(".pokemon-card");
  cards.forEach((card, index) => {
    setTimeout(() => {
      card.classList.add("card-animate");
    }, index * 100);
  });
});
