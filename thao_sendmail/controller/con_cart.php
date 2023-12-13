<?php
$action = Utilities::get('action', 'index');
$cart = new Cart();
$product = null;
if ($action == 'index') {
    $data = $cart->get();
    include './views/cart/index.php';
}
if ($action == 'add') {
    $id = Utilities::get('id');
    $qty = Utilities::get('qty', 1);
    if ($id != '') {
        $cart->them($id, $qty);
    }
    include './views/cart/index.php';
?>
    <script>
        window.location = 'index.php?controller=cart&action=index';
    </script>
<?php
}
if ($action == 'delete') {
    $id = Utilities::get('id');
    if ($id != '') {
        $cart->xoa($id);
    }
?>
    <script>
        window.location = 'index.php?controller=cart';
    </script>
<?php
}

if ($action == 'get_product') {
    $id = Utilities::get('id');
    if ($id != '') {
        $product = $cart->getCartItem($id);
        // var_dump($product);
    }
    include './views/cart/index.php';
}
?>