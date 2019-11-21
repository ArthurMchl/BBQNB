import "bootstrap";
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

import flatpickr from "flatpickr"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"


flatpickr(".datepicker", {})



 const hashRental = document.getElementById('rental-form');
 console.log(hashRental)


 if (hashRental) {
  const rentals = JSON.parse(hashRental.dataset.rentals);
  console.log(rentals)
  flatpickr("#range_start", {
    plugins: [new rangePlugin({ input: "#range_end"})],
    minDate: "today",
    inline: true,
    dateFormat: "Y-m-d",
    "disable": rentals,
  })
}

