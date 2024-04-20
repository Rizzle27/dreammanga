<?php
class Carrito
{
    // Agregar items
    public function add_item(int $productoID, int $cantidad) {
        $item = (new Volumen())->producto_x_id($productoID);
        $manga = (new Manga())->producto_x_id($item->getMangaId());
        if( $item ) {
            $_SESSION["carrito"][$productoID] = [
                'titulo' => $manga->getTitulo(),
                'precio' => $manga->getPrecio() * 1.21,
                'manga_id' => $manga->getId(),
                'numero' => $item->getNumero(),
                'cantidad' => $_GET["cantidad"],
                'portada' => $item->getPortadaChica(),
                'id' => $productoID,
            ];
        }
    }

    // Obtener carrito
    public function get_carrito()
    {
        if (!empty($_SESSION['carrito'])) {
            return $_SESSION['carrito'];
        } else {
            return [];
        }
    }

    // Obtener total
    public function get_total(){
        $total = 0;
        if( $_SESSION["carrito"] ){
            foreach($_SESSION["carrito"] as $item){
                $total += $item["precio"] * $item["cantidad"];
            }
        }
        return $total;
    }

    // Obtener cantidad
    public function update_cantidades($cantidades){
        foreach( $cantidades as $id => $cantidad ){
            if( isset($_SESSION["carrito"][$id]) ){
                $_SESSION["carrito"][$id]["cantidad"] = $cantidad;
            }  
        }
    }

    // Vaciar todo
    public function clear_items()
    {
        $_SESSION['carrito'] = [];
    }

    // Eliminar item individual
    public function borrar_item(int $id)
    {
        if (isset($_SESSION["carrito"][$id])) {
            unset($_SESSION["carrito"][$id]);
        }
    }
}
