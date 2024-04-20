<?php

class Escritor
{
    protected $id;
    protected $nombre;
    protected $biografia;

    public function traer_nombre_escritor(int $id)
    {
        $escritores = "";

        $query = "SELECT nombre 
                FROM escritores 
                WHERE escritores.id = $id";
        $conexion = Conexion::getConexion();
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->setFetchMode(PDO::FETCH_CLASS, self::class);
        $PDOStatement->execute();

        $escritores = $PDOStatement->fetchColumn();
        return $escritores;
    }

    public function traer_escritor_x_id( $escritorSleccionado ) {
        $escritores = [];

        $query = "SELECT * 
                FROM escritores 
                WHERE escritores.id = $escritorSleccionado";
        $conexion = Conexion::getConexion();
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->setFetchMode(PDO::FETCH_CLASS, self::class);
        $PDOStatement->execute();

        $escritores = $PDOStatement->fetchAll();
        return $escritores;
    }

    public function traer_escritor_completo()
    {
        $escritores = [];

        $query = "SELECT * FROM escritores";
        $conexion = Conexion::getConexion();
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->setFetchMode(PDO::FETCH_CLASS, self::class);
        $PDOStatement->execute();

        $escritores = $PDOStatement->fetchAll();
        return $escritores;
    }

    public function getId()
    {
        return $this->id;
    }

    public function getNombre()
    {
        return $this->nombre;
    }

    public function getBiografia()
    {
        return $this->biografia;
    }

    public function insert(
        $nombre,
        $biografia
    ) {
        $conexion = Conexion::getConexion();
        $query = "INSERT INTO escritores VALUES (NULL, :nombre, :biografia)";
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->execute([
            'nombre' => $nombre,
            'biografia' => $biografia
        ]);
    }

    public function edit(
        $id,
        $nombre,
        $biografia
    ) {
        $conexion = Conexion::getConexion();
        $query = "UPDATE escritores SET nombre = :nombre, biografia = :biografia WHERE escritores.id = :id";
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->execute([
            'id' => $id,
            'nombre' => $nombre,
            'biografia' => $biografia
        ]);
    }
}
