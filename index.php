<?php

include 'includes/config.php';
include 'includes/handle_form.php';

$query = $pdo->query('SELECT * FROM items');
$items = $query->fetchAll();

// $query = $pdo->query('DELETE FROM `items` WHERE `id` = 4');

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
    <title>Riot Games Inventory</title>
    <link href="https://fonts.googleapis.com/css?family=Pathway+Gothic+One" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="src/css/app.min.css">
    <script src="src/js/main.min.js" async></script>
</head>
<body>
    <header class="header">
        <div class="logo">
            <img src="src/img/fist-icon-white.png" alt="white fist logo">
            <span>Riot merch inventory</span>
        </div>
    </header>
    <div class="container">
        <section class="inventory">
            <h3>Inventory <small><button type="button" class="btn btn-primary">Add item</button></small></h3>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Picture</th>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Qty</th>
                        <th>Date</th>
                        <th>Category</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($items as $_item): ?>
                        <tr class="<?= $_item->quantity < 10 ? 'low-stock' : '' ?>">
                            <th><?= $_item->id ?></th>
                            <td><img src="<?= $_item->picture ?>" alt="item picture"></td>
                            <td class="title"><?= $_item->title ?></td>
                            <td class="description"><?= $_item->description ?></td>
                            <td><?= $_item->price ?> €</td>
                            <td class="qty"><?= $_item->quantity ?></td>
                            <td><?= substr($_item->date, 0, 10); ?></td>
                            <td><?= $_item->category ?></td>
                            <td><input class="remove" data-item="<?= $_item->id ?>" value="Delete" type="submit" onclick="deleteItem(this)"></input></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </section>
        <section class="add-item">
            <div class="row">
                <h3>Add new item</h3>

                <form class="add-item-form" action="#" method="post">
                    <!-- Title -->
                    <div class="form-group <?= array_key_exists('title', $error_messages) ? 'has-error' : '' ?>">
                        <label class="control-label" for="title">Name</label>
                        <input type="text" class="form-control" name="title" value="<?= $_POST['title'] ?>" id="title" aria-describedby="title-help">
                        <span id="title-help" class="help-block"><?= $error_messages['title'] ?></span>
                    </div>
                    <!-- Description -->
                    <div class="form-group <?= array_key_exists('description', $error_messages) ? 'has-error' : '' ?>">
                        <label class="control-label" for="description">Description</label>
                        <textarea class="form-control" name="description" id="description" aria-describedby="description-help"><?= $_POST['description'] ?></textarea>
                        <span id="description-help" class="help-block"><?= $error_messages['description'] ?></span>
                    </div>
                    <!-- Price -->
                    <div class="form-group <?= array_key_exists('price', $error_messages) ? 'has-error' : '' ?>">
                        <label class="control-label" for="price">Price</label>
                        <input type="number" class="form-control" name="price" min="0" value="<?= $_POST['price'] ?>" id="price" aria-describedby="price-help">
                        <span id="price-help" class="help-block"><?= $error_messages['price'] ?></span>
                    </div>
                    <!-- Quantity -->
                    <div class="form-group <?= array_key_exists('quantity', $error_messages) ? 'has-error' : '' ?>">
                        <label class="control-label" for="quantity">Quantity</label>
                        <input type="number" class="form-control" name="quantity" min="0" value="<?= $_POST['quantity'] ?>" id="quantity" aria-describedby="quantity-help">
                        <span id="quantity-help" class="help-block"><?= $error_messages['quantity'] ?></span>
                    </div>
                    <!-- Category -->
                    <div class="form-group">
                        <label class="control-label" for="category">Category</label>
                        <select class="form-control" name="category" id="category">
                          <option value="figurine" <?= $_POST['category'] == 'figurine' ? 'selected' : '' ?>>Figurine</option>
                          <option value="plush" <?= $_POST['category'] == 'plush' ? 'selected' : '' ?>>Plush</option>
                          <option value="statue" <?= $_POST['category'] == 'statue' ? 'selected' : '' ?>>Statue</option> <!-- Faire un foreach avec chaque category-->
                        </select>
                    </div>
                    <!-- Picture -->
                    <div class="form-group <?= array_key_exists('picture', $error_messages) ? 'has-error' : '' ?>">
                        <label class="control-label" for="picture">Picture link</label>
                        <input type="text" class="form-control" name="picture" value="<?= $_POST['picture'] ?>" id="picture" aria-describedby="picture-help">
                        <span id="picture-help" class="help-block"><?= $error_messages['picture'] ?></span>
                    </div>
                    <div>
                        <input type="submit">
                    </div>
                </form>
            </div>
        </section>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>
