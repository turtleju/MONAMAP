import flatpickr from "flatpickr"
import { French } from "flatpickr/dist/l10n/fr.js"
import 'flatpickr/dist/flatpickr.min.css'
require("flatpickr/dist/themes/confetti.css");


const initFlatpickr = () => {
  console.log("je suis dans initFlatpickr")
  console.log(document.querySelector('#holidays-date'))
  flatpickr("#holidays-date", {
    mode: "range",
    minDate: "today",
    dateFormat: "d/m/y",
    onClose: function(selectedDates, dateStr, instance) {
      console.log('onclose')
      // console.log(selectedDates)
      fetch('/holidays', {
        method: 'POST',
        body: JSON.stringify({ begin: selectedDates[0], end: selectedDates[1] }),
        headers: { 'Content-Type': 'application/json' }
      })
      .then(response => response.text())
      .then(data => { document.querySelector(".js-response-holidays").innerHTML = data })
    }
  });
}

export { initFlatpickr };



