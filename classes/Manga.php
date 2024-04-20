<?php

class Manga
{
    protected $id;
    protected $titulo;
    protected $genero;
    protected $portada;
    protected $escritor_id;
    protected $editorial_id;
    protected $estreno;
    protected $bajada;
    protected $precio;

    public function traer_catalogo_completo(): array
    {
        $catalogo = [];

        $query = "SELECT * FROM mangas";
        $conexion = Conexion::getConexion();
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->setFetchMode(PDO::FETCH_CLASS, self::class);
        $PDOStatement->execute();

        $catalogo = $PDOStatement->fetchAll();
        return $catalogo;
    }

    public function traer_manga_x_id($mangaSeleccionado)
    {
        $catalogo = [];

        $query = "SELECT * FROM mangas WHERE mangas.id = $mangaSeleccionado";
        $conexion = Conexion::getConexion();
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->setFetchMode(PDO::FETCH_CLASS, self::class);
        $PDOStatement->execute();

        $catalogo = $PDOStatement->fetchAll();
        return $catalogo;
    }

    public function producto_x_id(int $idProducto)
    {
        $catalogo = $this->traer_catalogo_completo();
        foreach ($catalogo as $producto) {
            if ($producto->id == $idProducto) {
                return $producto;
            }
        }
    }

    // public function redondear($valor, $decimales)
    // {
    //     $potencia = pow(10, $decimales);
    //     return round($valor * $potencia) / $potencia;
    // }

    public function getId()
    {
        return $this->id;
    }

    public function getTitulo()
    {
        return $this->titulo;
    }

    public function getGenero()
    {
        return $this->genero;
    }

    public function getPortada()
    {
        return $this->portada;
    }

    public function getEscritorId()
    {
        return $this->escritor_id;
    }

    public function getEditorialId()
    {
        return $this->editorial_id;
    }

    public function getEstreno()
    {
        return $this->estreno;
    }

    public function getBajada()
    {
        return $this->bajada;
    }

    public function getPrecio()
    {
        return $this->precio;
    }

    public function insert(
        $titulo,
        $genero,
        $portada,
        $escritor_id,
        $editorial_id,
        $estreno,
        $bajada,
        $precio
    ) {
        $conexion = Conexion::getConexion();
        $query = "INSERT INTO mangas VALUES (NULL, :titulo, :genero, :portada, :escritor_id, :editorial_id, :estreno, :bajada, :precio)";
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->execute([
            'titulo' => $titulo,
            'genero' => $genero,
            'portada' => $portada,
            'escritor_id' => $escritor_id,
            'editorial_id' => $editorial_id,
            'estreno' => $estreno,
            'bajada' => $bajada,
            'precio' => $precio
        ]);
    }

    public function edit(
        $id,
        $titulo,
        $genero,
        $portada,
        $escritor_id,
        $editorial_id,
        $estreno,
        $bajada,
        $precio
    ) {
        $conexion = Conexion::getConexion();
        $query = "UPDATE mangas SET titulo = :titulo, genero = :genero, portada = :portada, escritor_id = :escritor_id, editorial_id = :editorial_id, estreno = :estreno, bajada = :bajada, precio = :precio WHERE mangas.id = :id";
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->execute([
            'id' => $id,
            'titulo' => $titulo,
            'genero' => $genero,
            'portada' => $portada,
            'escritor_id' => $escritor_id,
            'editorial_id' => $editorial_id,
            'estreno' => $estreno,
            'bajada' => $bajada,
            'precio' => $precio
        ]);
    }

    public function delete($id) {
        $conexion = Conexion::getConexion();
        $query = "DELETE FROM mangas WHERE mangas.id = $id";
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->execute();
    }
}
