
const check_box = () => {

const inputs = document.querySelectorAll('.script-selector');
const labels = document.querySelectorAll('.subscriptions_target');


  inputs.forEach(input =>
    input.addEventListener("click", function firstStep(){
      if(input.checked == true){
        input.addEventListener("click", function secondStep() {
          if(input.checked == false){

            input.checked = true

          } else {
            input.checked = false

          }
        });
      }
  }));

};

export { check_box };