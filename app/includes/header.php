<?php
$currentUser = $currentUser ?? false;

$headerLinkPrefix = PRODUCTION_ENV ? '/app' : '';

?>

<header>
    <a href="/" class="logo">Aliak Blog</a>
    <div class="header-mobile">
        <div class="header-mobile-icon">
            <img src="<?= $headerLinkPrefix ?>/public/img/mobile-menu.png">
        </div>
        <ul class="header-mobile-list">
            <?php if ($currentUser) : ?>
                <li class=<?= $_SERVER['REQUEST_URI'] === '/form-article.php' ? 'active' : '' ?>>
                    <a href="<?= $headerLinkPrefix ?>/form-article.php">Écrire un article</a>
                </li>
                <li>
                    <a href="<?= $headerLinkPrefix ?>/auth-logout.php">Déconnexion</a>
                </li>
                <li class="<?= $_SERVER['REQUEST_URI'] === '/profile.php' ? 'active' : '' ?>">
                    <a href="<?= $headerLinkPrefix ?>/profile.php">Mon espace</a>
                </li>
            <?php else : ?>
                <li class=<?= $_SERVER['REQUEST_URI'] === '/auth-register.php' ? 'active' : '' ?>>
                    <a href="<?= $headerLinkPrefix ?>/auth-register.php">Inscription</a>
                </li>
                <li class=<?= $_SERVER['REQUEST_URI'] === '/auth-login.php' ? 'active' : '' ?>>
                    <a href="<?= $headerLinkPrefix ?>/auth-login.php">Connexion</a>
                </li>
            <?php endif; ?>
        </ul>
    </div>

    <ul class="header-menu">
        <?php if ($currentUser) : ?>
            <li class=<?= $_SERVER['REQUEST_URI'] === '/form-article.php' ? 'active' : '' ?>>
                <a href="<?= $headerLinkPrefix ?>/form-article.php">Écrire un article</a>
            </li>
            <li>
                <a href="<?= $headerLinkPrefix ?>/auth-logout.php">Déconnexion</a>
            </li>

            <li class="<?= $_SERVER['REQUEST_URI'] === '/profile.php' ? 'active' : '' ?> header-profile">
                <a href="<?= $headerLinkPrefix ?>/profile.php"><?= $currentUser['firstname'][0] . $currentUser['lastname'][0] ?></a>
            </li>
        <?php else : ?>
            <li class=<?= $_SERVER['REQUEST_URI'] === '/auth-register.php' ? 'active' : '' ?>>
                <a href="<?= $headerLinkPrefix ?>/auth-register.php">Inscription</a>
            </li>
            <li class=<?= $_SERVER['REQUEST_URI'] === '/auth-login.php' ? 'active' : '' ?>>
                <a href="<?= $headerLinkPrefix ?>/auth-login.php">Connexion</a>
            </li>
        <?php endif; ?>
    </ul>
</header>