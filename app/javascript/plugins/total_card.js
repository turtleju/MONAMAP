
const total = () => {

    const total_card = document.querySelector(".total-card");
    const formulaire = document.querySelector('.simple_form.category');

    if (formulaire) {
    formulaire.addEventListener('change', () => {
      let price = 0;
      const inputs = document.querySelectorAll('input[type="radio"]:checked');
      total_card.innerHTML = '';
      inputs.forEach((input) => {
        total_card.insertAdjacentHTML('afterbegin',`<p>${input.dataset.category}</p>`);
        price += parseFloat(input.dataset.price);
      });
      const prixtotal = `<div class="total-inline"> <h3>Total mensuel :</h3> <h3>${price} €</h3></div>`;

      total_card.insertAdjacentHTML('beforeend', prixtotal);
    });
  }
};

export { total };
