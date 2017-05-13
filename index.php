<?php

include 'includes/config.php';
include 'includes/handle_form.php';
include 'includes/delete.php';

$query = $pdo->query('SELECT * FROM items');
$items = $query->fetchAll();

json_encode($items);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
    <title>Riot Games Inventory</title>
    <link href="https://fonts.googleapis.com/css?family=Pathway+Gothic+One" rel="stylesheet">
    <link rel="stylesheet" href="src/css/app.min.css">
    <script src="src/js/main.js" async></script>
</head>
<body>
    <header class="header">
        <div class="logo">
            <img src="src/img/fist-icon-white.png" alt="white fist logo">
        </div>
        <div class="logo-text">
            <h1>Riot merch inventory</h1>
        </div>
        <!-- <form class="currency" action="#" method="post">
            <input type="hidden" name="type" value="currency">
            <input class="button" type="submit" value="Change currency">
        </form> -->
        <button type="button" class="button add-button">Add item</button>
    </header>
    <div class="container">
        <section id="inventory">
            <table class="table">
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
                            <td><?= $_item->id ?></td>
                            <td><img src="<?= $_item->picture ?>" alt="item picture"></td>
                            <td class="title"><?= $_item->title ?></td>
                            <td class="description"><?= $_item->description ?></td>
                            <td class="price" ><?= $_item->price ?> €</td>
                            <td class="qty"><?= $_item->quantity ?></td>
                            <td class="date"><?= substr($_item->date, 0, 10); ?></td>
                            <td class="category"><?= $_item->category ?></td>
                            <td class="actions">
                                <form action="#" method="post">
                                    <input type="hidden" name="type" value="delete">
                                    <input type="hidden" name="delete_id" value="<?= $_item->id ?>">
                                    <input class="button" type="submit" value="delete">
                                </form>
                                <form action="#" method="post">
                                    <input type="hidden" name="type" value="display_edit">
                                    <input type="hidden" name="edit_id" value="<?= $_item->id ?>">
                                    <input class="button edit" type="submit" value="edit">
                                </form>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </section>
        <section class="item-form" <?= !empty($error_messages) || $_POST['type'] == 'display_edit' ? 'style="display: block;"' : ''?>>
            <div class="item-form-container">
                <button class="button close" type="button" name="button">X</button>
                <h3><?= isset($_POST['type']) && $_POST['type'] == 'display_edit' ? 'Edit item' : 'Add new item' ?></h3>
                <form action="#" method="post">
                    <input class="type" type="hidden" name="type" value="<?= $_POST['type'] == 'add' ? 'add' : 'edit' ?>">
                    <input class="id" type="hidden" name="edit_id" value="<?= $_POST['edit_id'] ?>">
                    <!-- Title -->
                    <div class="form-group <?= array_key_exists('title', $error_messages) ? 'has-error' : '' ?>">
                        <label class="control-label" for="title">Name</label>
                        <input type="text" class="form-control" name="title" value="<?= $title ?>" id="title" aria-describedby="title-help">
                        <span id="title-help" class="help-block"><?= array_key_exists('title', $error_messages) ? $error_messages['title'] : '' ?></span>
                    </div>
                    <!-- Description -->
                    <div class="form-group <?= array_key_exists('description', $error_messages) ? 'has-error' : '' ?>">
                        <label class="control-label" for="description">Description</label>
                        <textarea class="form-control" name="description" id="description" aria-describedby="description-help" rows="3"><?= $description ?></textarea>
                        <span id="description-help" class="help-block"><?= array_key_exists('description', $error_messages) ? $error_messages['description'] : '' ?></span>
                    </div>
                    <!-- Price -->
                    <div class="form-group <?= array_key_exists('price', $error_messages) ? 'has-error' : '' ?>">
                        <label class="control-label" for="price">Price</label>
                        <input type="number" class="form-control" name="price" min="0" value="<?= $price ?>" id="price" aria-describedby="price-help">
                        <span id="price-help" class="help-block"><?= array_key_exists('price', $error_messages) ? $error_messages['price'] : '' ?></span>
                    </div>
                    <!-- Quantity -->
                    <div class="form-group <?= array_key_exists('quantity', $error_messages) ? 'has-error' : '' ?>">
                        <label class="control-label" for="quantity">Quantity</label>
                        <input type="number" class="form-control" name="quantity" min="0" value="<?= $quantity ?>" id="quantity" aria-describedby="quantity-help">
                        <span id="quantity-help" class="help-block"><?= array_key_exists('quantity', $error_messages) ? $error_messages['quantity'] : '' ?></span>
                    </div>
                    <!-- Category -->
                    <div class="form-group">
                        <label class="control-label" for="category">Category</label>
                        <select class="form-control" name="category" id="category">
                          <option value="figurine" <?= $category == 'figurine' ? 'selected' : '' ?>>Figurine</option>
                          <option value="plush" <?= $category == 'plush' ? 'selected' : '' ?>>Plush</option>
                          <option value="statue" <?= $category == 'statue' ? 'selected' : '' ?>>Statue</option> <!-- Faire un foreach avec chaque category-->
                        </select>
                    </div>
                    <!-- Picture -->
                    <div class="form-group <?= array_key_exists('picture', $error_messages) ? 'has-error' : '' ?>">
                        <label class="control-label" for="picture">Picture link</label>
                        <input type="text" class="form-control" name="picture" value="<?= $picture ?>" id="picture" aria-describedby="picture-help">
                        <span id="picture-help" class="help-block"><?= array_key_exists('picture', $error_messages) ? $error_messages['picture'] : '' ?></span>
                    </div>
                    <div>
                        <input class="button" type="submit">
                    </div>
                </form>
            </div>
        </section>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>
