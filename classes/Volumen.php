<?php

class Volumen
{
    protected $id;
    protected $numero;
    protected $manga_id;
    protected $portada_chica;
    protected $portada_grande;

    public function traer_todos_los_volumenes(): array
    {
        $coleccion = [];

        $query = "SELECT * FROM volumenes";
        $conexion = Conexion::getConexion();
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->setFetchMode(PDO::FETCH_CLASS, self::class);
        $PDOStatement->execute();

        $coleccion = $PDOStatement->fetchAll();
        return $coleccion;
    }

    public function traer_coleccion_completa(int $mangaSeleccionado): array
    {
        $coleccion = [];

        $query = "SELECT * FROM volumenes WHERE volumenes.manga_id = $mangaSeleccionado";
        $conexion = Conexion::getConexion();
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->setFetchMode(PDO::FETCH_CLASS, self::class);
        $PDOStatement->execute();

        $coleccion = $PDOStatement->fetchAll();
        return $coleccion;
    }

    public function traer_volumen_x_id($volumenSeleccionado)
    {
        $catalogo = [];

        $query = "SELECT * FROM volumenes WHERE volumenes.id = $volumenSeleccionado";
        $conexion = Conexion::getConexion();
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->setFetchMode(PDO::FETCH_CLASS, self::class);
        $PDOStatement->execute();

        $catalogo = $PDOStatement->fetchAll();
        return $catalogo;
    }

    public function producto_x_id(int $idProducto) {
        $coleccion = $this->traer_todos_los_volumenes();
        foreach ($coleccion as $producto) {
            if ($producto->id == $idProducto) {
                return $producto;
            }
        }
    }

    public function traer_portada_x_volumen($mangaSeleccionado, $volumenSeleccionado)
    {
        $volumenNumeroPortada = "";

        $query = "SELECT volumenes.id, volumenes.portada_grande, volumenes.numero
            FROM volumenes
            WHERE volumenes.manga_id = $mangaSeleccionado 
            AND volumenes.numero = $volumenSeleccionado";
        $conexion = Conexion::getConexion();
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->setFetchMode(PDO::FETCH_ASSOC);
        $PDOStatement->execute();

        $volumenNumeroPortada = $PDOStatement->fetch();
        return $volumenNumeroPortada;
    }

    public function getId()
    {
        return $this->id;
    }

    public function getNumero()
    {
        return $this->numero;
    }

    public function getMangaId()
    {
        return $this->manga_id;
    }

    public function getPortadaChica()
    {
        return $this->portada_chica;
    }

    public function getPortadaGrande()
    {
        return $this->portada_grande;
    }

    public function insert(
        $numero,
        $manga_id,
        $portada_chica,
        $portada_grande
    ) {
        $conexion = Conexion::getConexion();
        $query = "INSERT INTO volumenes VALUES (NULL, :numero, :manga_id, :portada_chica, :portada_grande)";
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->execute([
            'numero' => $numero,
            'manga_id' => $manga_id,
            'portada_chica' => $portada_chica,
            'portada_grande' => $portada_grande
        ]);
    }

    public function edit(
        $id,
        $numero,
        $manga_id,
        $portada_chica,
        $portada_grande
    ) {
        $conexion = Conexion::getConexion();
        $query = "UPDATE volumenes SET numero = :numero, manga_id = :manga_id, portada_chica = :portada_chica, portada_grande = :portada_grande WHERE volumenes.id = :id";
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->execute([
            'id' => $id,
            'numero' => $numero,
            'manga_id' => $manga_id,
            'portada_chica' => $portada_chica,
            'portada_grande' => $portada_grande
        ]);
    }

    public function delete($id) {
        $conexion = Conexion::getConexion();
        $query = "DELETE FROM volumenes WHERE volumenes.id = $id";
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->execute();
    }
}
