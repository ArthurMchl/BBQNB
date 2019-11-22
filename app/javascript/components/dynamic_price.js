const dynamicPrice = () => {

    const start = document.getElementById("range_start");
    if (start) {
    const end = document.getElementById("range_end");
    const form = document.getElementById('new_rental');

    const priceElement = document.getElementById('price');
    const unitPrice = parseInt(priceElement.dataset.unitprice, 10)


    form.addEventListener('change', (event) => {

      const startDate = new Date(start.value).getDate();
      const endDate = new Date(end.value).getDate();
      if(!isNaN(endDate)) {
        const result = endDate - startDate + 1;
        const newPrice = result * unitPrice;
        priceElement.innerHTML = `${newPrice} €`
      }
    });
    };
  };

export { dynamicPrice };
