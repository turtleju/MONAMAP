const gift_product = () => {

    const giftbuttons = document.querySelectorAll(".gift-button");
    const giftcards = document.querySelector
    if (giftbuttons) {
    giftbuttons.forEach((giftbutton) => {
        giftbutton.addEventListener('click', () =>{
            const div = giftbutton.closest('div .week-cat-card');
            div.remove();
            console.log(div);
        });
    });
    }
};

export { gift_product };