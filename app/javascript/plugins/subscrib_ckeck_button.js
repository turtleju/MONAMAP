
const check_box = () => {

const inputs = document.querySelectorAll('.script-selector');
  inputs.forEach(input =>
    input.addEventListener("click", function firstStep(){
      if(input.checked == true){
        input.addEventListener("click", function secondStep() {
          if(input.checked == false){

            input.checked = true;

          } else {
            input.checked = false;
            document.querySelector('.simple_form.category').dispatchEvent(new Event('change'));
          }
        });
      }
  }));

};

export { check_box };