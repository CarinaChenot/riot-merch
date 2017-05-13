var add_button = document.querySelector('.add-button');
var item_form = document.querySelector('.item-form');
var edit_button = document.querySelectorAll('.button.edit');
var form_type = document.querySelector('.type');
var form_id = document.querySelector('.id');
var close = document.querySelector('.close');

add_button.addEventListener('click', function() {
    form_type.setAttribute('value', 'add');
    item_form.style.display = 'block';
});

close.addEventListener('click', function() {
    item_form.style.display = 'none';
});

function edit_item() {
    form_type.setAttribute('value', 'edit');
}

for (var i = 0; i < edit_button.length; i++) {
    edit_button[i].addEventListener('click', edit_item);
}
