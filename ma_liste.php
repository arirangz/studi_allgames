<?php 
require_once "libs/session.php";
require_once "libs/pdo.php";
require_once "libs/wishlist.php";
require_once "templates/header.php";

if (!isLoggedIn()) {
    header("Location: login.php");
}
$user = getConnectedUser();
$games = getWishlistItemsByUserId($pdo, $user["id"]);
?>

<section class="text-gray-400 bg-gray-900 body-font">
    <div class="container px-5 py-24 mx-auto">
        <div class="flex flex-col">
            <div class="flex flex-wrap sm:flex-row flex-col py-6 mb-12">
                <h1 class="sm:w-2/5 text-white font-medium title-font text-3xl mb-2 sm:mb-0">Ma liste de souhait</h1>
            </div>
        </div>
        <div class="flex flex-wrap sm:-m-4 -mx-4 -mb-10 -mt-4">

            <?php foreach ($games as $index=>$game): ?>
                <?php require "templates/_game_item.php"; ?>
            <?php endforeach; ?>

        </div>
    </div>
</section>


<?php require_once "templates/footer.php"; ?>