<?php

// Delete item
if (isset($_POST['type']) && $_POST['type'] == 'delete') {
    $prepare = $pdo->prepare('DELETE FROM items WHERE id = :id');
    $prepare->bindValue('id', $_POST['delete_id']);
    $prepare->execute();
}
