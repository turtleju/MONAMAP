
const total = () => {
const total_card = document.querySelector(".total-card");

//const inputs = document.querySelectorAll('.subscriptions_target');
const inputs = document.querySelectorAll('.subscriptions_target label');
//console.log(inputs);
//debugger

// inputs.forEach( input =>
//   input.addEventListener("click", function categories(){
//     if(input.checked == true ) {
//         const category = document.querySelector('.script-selector').closest('div .subscription-category-card');
//         const name = category.querySelector('#category-name').innerText;
//         // console.log(name);
//         //total_card.insertAdjacentHTML('afterbegin', '<p>fromages</p>')
//     }
//     else {
//         console.log("je suis ailleurs");
//     }
//   }
//   )
// );
    // inputs.forEach(input =>
    //     input.addEventListener('click', () => {
    //       const background = "rgb(137, 196, 203)";
    //       const bgcolor = window.getComputedStyle(input).backgroundColor;
    //       if (background == bgcolor) {
    //         const category = input.parentElement.parentNode.parentElement.querySelector('h4').innerText;
    //         total_card.insertAdjacentHTML('afterbegin',`<p>${category}</p>`);
    //         console.log(input.htmlFor);
    //         // "Hello <%= @user.name %>"
    //         //console.log(bgcolor);
    //         //console.log(background);
    //       }

    //     }
    //     )

    // );

    document.querySelector('form').addEventListener('change', () => {
        const inputs = document.querySelectorAll('input[type="radio"]:checked');
        total_card.innerHTML = '';
        let price = 0;
        inputs.forEach((input) => {
          total_card.insertAdjacentHTML('afterbegin',`<p>${input.dataset.category}</p>`);
          price += parseFloat(input.dataset.price);
        });
        const prixtotal = `<div class="total-inline"> <h2>Total :</h2> <h2>${price} €</h2></div>`;

        total_card.insertAdjacentHTML('beforeend', prixtotal);
    });
};

export { total };
