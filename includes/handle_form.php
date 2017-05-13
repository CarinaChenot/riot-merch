<?php

// Messages
$error_messages = array();
$success_messages = array();


// if ($currency === NULL) {
//     $currency = true;
// }
// echo "<pre>";
// var_dump($currency);
// echo "</pre>";
//


// Form sent
if(!empty($_POST) && ($_POST['type'] == 'add' || $_POST['type'] == 'edit')) {

    // Retrieve data
    $title       = trim($_POST['title']);
    $description = $_POST['description'];
    $price       = (int)$_POST['price'];
    $quantity    = (int)$_POST['quantity'];
    $category    = $_POST['category'];
    $picture     = $_POST['picture'];

    // Title errors
    if(empty($title))
        $error_messages['title'] = 'Please enter the name of the product';

    // Description errors
    if(empty($description))
        $error_messages['description'] = 'Please enter a description';

    // Picture errors
    if(empty($picture))
        $error_messages['picture'] = 'Please enter a link of the product image';

    // Price errors
    if(empty($price))
        $error_messages['price'] = 'Please enter the price of the product';
    else if($price < 0)
        $error_messages['price'] = 'Please enter a valid price, must be higher than 0';

    // Quantity errors
    if(empty($quantity))
        $error_messages['quantity'] = 'Please enter a quantity';
    else if($quantity <= 0)
        $error_messages['quantity'] = 'Please enter a valid quantity, must be higher or equal at 0';

    // Category errors
    if(empty($category))
        $error_messages['category'] = 'Please select a category';
    else if(!in_array($category, array('figurine', 'plush', 'statue')))
        $error_messages['category'] = 'Wrong category entry';

    // No errors
    if(empty($error_messages) && $_POST['type'] == 'add') {

        $prepare = $pdo->prepare('INSERT INTO items (title, description, price, quantity, category, picture) VALUES (:title, :description, :price, :quantity, :category, :picture)');

        $prepare->bindValue('title', $title);
        $prepare->bindValue('description', $description);
        $prepare->bindValue('price', $price);
        $prepare->bindValue('quantity', $quantity);
        $prepare->bindValue('category', $category);
        $prepare->bindValue('picture', $picture);

        //Execute INSERT
        $prepare->execute();

        // Add success message
        $success_messages[] = 'Item succesfuly added';

        // Reset values
        $_POST['title']       = '';
        $_POST['description'] = '';
        $_POST['price']       = '';
        $_POST['quantity']    = '';
        $_POST['category']    = '';
        $_POST['picture']     = '';
    }
    if (empty($error_messages) && $_POST['type'] == 'edit') {

        $id = $_POST['edit_id'];

        $prepare = $pdo->prepare("UPDATE items SET title = :title, description = :description, price = :price, quantity = :quantity, category = :category, picture = :picture WHERE id = :id");

        $prepare->bindValue('id', $id);
        $prepare->bindValue('title', $title);
        $prepare->bindValue('description', $description);
        $prepare->bindValue('price', $price);
        $prepare->bindValue('quantity', $quantity);
        $prepare->bindValue('category', $category);
        $prepare->bindValue('picture', $picture);

        $prepare->execute();

        // Clean values
        $title       = '';
        $description = '';
        $price       = '';
        $quantity    = '';
        $category    = '';
        $picture     = '';

    }
} elseif (!empty($_POST) && $_POST['type'] == 'display_edit') {

    $id = $_POST['edit_id'];

    $prepare = $pdo->prepare('SELECT * FROM items WHERE id =:id');
    $prepare->bindValue('id', $id);
    $prepare->execute();
    $data = $prepare->fetch();


    // Retrieve data
    $title       = $data->title;
    $description = $data->description;
    $price       = $data->price;
    $quantity    = $data->quantity;
    $category    = $data->category;
    $picture     = $data->picture;

//     // Change currency
// } elseif (!empty($_POST) && $_POST['type'] == 'currency') {
//
//     if ($currency) {
//         $prepare = $pdo->prepare("UPDATE items SET price = price * 1.06838");
//         $currency = false;
//         echo "dollar";
//     }
//     else {
//         $prepare = $pdo->prepare("UPDATE items SET price = price * 0.93600");
//         $currency = true;
//         echo "euro";
//     }
//     $prepare->execute();

}

// No data sent
else {

    // Clean values
    $title       = '';
    $description = '';
    $price       = '';
    $quantity    = '';
    $category    = '';
    $picture     = '';

}
