<?php

namespace Source\Controllers;

use Source\Models\Product;

/**
 * Class Web
 * @package Source\Controllers
 */
class Web extends Controller
{

    /**
     * Web constructor.
     * @param $router
     */
    public function __construct($router)
    {
        parent::__construct($router);
    }

    /**
     * Monta tela principal
     */
    public function home(): void
    {
        $search = filter_input(INPUT_GET, 'search', FILTER_SANITIZE_STRING);

        $products = new Product();

        if (!empty($search)) {

            $params = http_build_query([
                'status' => 1,
                'name' =>  "%" . $search . "%"
            ]);

            $products = $products->find("status = :status AND name like :name", $params)->order("id DESC")->fetch(true);
            $products = !$products ? [] : $products;
        } else {

            $products = $products->find("status = :status", "status=1")->order("id DESC")->fetch(true);
        }

        echo $this->view->render("theme/home", [
            "title" => "Store",
            "products" =>  $products,
            "menu" => false
        ]);
    }

    /**
     * Monta a tela de compra do produto
     * @param $data
     */
    public function buy($data)
    {
        $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);

        $product = (new Product())->findById($data['id']);

        die($this->view->render("theme/buy", [
            "title" => "Compra",
            "product" => $product,
            "menu" => false
        ]));
    }

    /**
     * Dá baixa no estoque do produto
     * @param $data
     */
    public function purchased($data)
    {
        $data = filter_var_array($data, FILTER_SANITIZE_STRIPPED);

        $product = (new Product())->findById($data['id']);

        $product->amount = --$product->amount;

        if (!$product->save()) {

            echo $this->ajaxResponse("message", [
                "type" => "error",
                "message" => $product->fail()->getMessage()
            ]);
            return;
        }

        flash("success", "Compra efetuada com sucesso!");

        echo $this->ajaxResponse("redirect", [
            "url" => site() . "/compra/{$product->id}"
        ]);
        return;
    }

    /**
     * @param $data
     */
    public function error($data): void
    {
        $error = filter_var($data["errcode"], FILTER_VALIDATE_INT);

        echo $this->view->render("theme/error", [
            "title" => "Erro {$error}",
            "error" => $error
        ]);
    }
}
