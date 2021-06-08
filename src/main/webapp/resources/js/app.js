/**
 * 
 */

//function submitForm() {
//  $('form[name="search-form"]').submit();
//  $('input[type="text"], textarea').val('');
//}

const form = document.querySelector("#formGet");
const btnDateForm = document.querySelector("#betweenDateForm");

form.reset();
btnDateForm.reset();

window.addEventListener("pageshow", () => {
  // update hidden input field
	form.elements[0].value = "";
	btnDateForm.elements[0].value = ""
	btnDateForm.elements[1].value = "";
});

