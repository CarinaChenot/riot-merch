var add_button = document.querySelector('.add-button');
var item_form = document.querySelector('.item-form');
var edit_button = document.querySelectorAll('.button.edit');
var form_type = document.querySelector('.type');

add_button.addEventListener('click', function() {
    form_type.setAttribute('value', 'add');
    item_form.style.display = 'block';
});

function edit_item() {
    var id = this.getAttribute('data-item');
    form_type.setAttribute('value', 'edit');
    item_form.style.display = 'block';

}

for (var i = 0; i < edit_button.length; i++) {
    edit_button[i].addEventListener('click', edit_item);
}
