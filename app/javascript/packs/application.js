import "bootstrap";

// mapbox import
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';

// flatpickr imports
import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

// customs components
import { dynamicPrice } from '../components/dynamic_price';


flatpickr(".datepicker", {})

initMapbox();

dynamicPrice();



 const hashRental = document.getElementById('rental-form');

 if (hashRental) {
  const rentals = JSON.parse(hashRental.dataset.rentals);
   const fp = flatpickr("#range_start", {
    plugins: [new rangePlugin({ input: "#range_end"})],
    minDate: "today",
    inline: true,
    dateFormat: "Y-m-d",
    "disable": rentals,
  })
}

