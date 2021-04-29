<?php

ob_start();

session_start();

require __DIR__ . "/vendor/autoload.php";

use CoffeeCode\Router\Router;

$app = new Router(site());
$app->namespace("Source\Controllers");

/**
 * WEB
 */

$app->group(null);
$app->get("/", "Web:home", "web.home");
$app->get("/compra/{id}", "Web:buy", "web.buy");
$app->post("/comprado/{id}", "Web:purchased", "web.purchased");

/**
 * PRODUCTS
 */

$app->group('produtos');
$app->get("/", "Product:products", "product.products");
$app->get("/cadastro", "Product:create", "product.create");
$app->get("/editar/{id}", "Product:edit", "product.edit");
$app->post("/register", "Product:register", "product.register");
$app->get("/deletar/{id}", "Product:delete", "product.delete");
$app->post("/update/{id}", "Product:update", "product.update");
$app->post("/toggle_status", "Product:toggleStatus", "product.toggle_status");

/**
 * ERRORS
 */
$app->group("ops");
$app->get("/{errcode}", "Web:error", "web.error");

/**
 * ROUTE PROCESS
 */

$app->dispatch();
/**
 * ERRORS PROCESS
 */

if ($app->error()) {
    $app->redirect("web.error", ['errcode' => $app->error()]);
}

ob_end_flush();
