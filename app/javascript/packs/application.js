import "bootstrap";
import hello from "../components/hello"

import flatpickr from "flatpickr"

import "flatpickr/dist/flatpickr.min.css" // Note this is important!
flatpickr(".datepicker", {})


const result = hello("werner");
console.log(result)


