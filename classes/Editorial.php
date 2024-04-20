<?php

class Editorial
{
    protected $id;
    protected $nombre;
    protected $origen;
    protected $fundacion;
    protected $logo;

    public function traer_nombre_editorial( int $id )
    {
        $editoriales = "";

        $query = "SELECT nombre 
                FROM editoriales 
                WHERE editoriales.id = $id";
        $conexion = Conexion::getConexion();
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->setFetchMode(PDO::FETCH_CLASS, self::class);
        $PDOStatement->execute();

        $editoriales = $PDOStatement->fetchColumn();
        return $editoriales;
    }

    public function traer_editorial_x_id( int $editorialSeleccionada )
    {
        $editoriales = [];

        $query = "SELECT * 
                FROM editoriales 
                WHERE editoriales.id = $editorialSeleccionada";
        $conexion = Conexion::getConexion();
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->setFetchMode(PDO::FETCH_CLASS, self::class);
        $PDOStatement->execute();

        $editoriales = $PDOStatement->fetchAll();
        return $editoriales;
    }

    public function traer_editorial_completa()
    {
        $editoriales = [];

        $query = "SELECT * FROM editoriales";
        $conexion = Conexion::getConexion();
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->setFetchMode(PDO::FETCH_CLASS, self::class);
        $PDOStatement->execute();

        $editoriales = $PDOStatement->fetchAll();
        return $editoriales;
    }

    public function getId()
    {
        return $this->id;
    }

    public function getNombre()
    {
        return $this->nombre;
    }

    public function getOrigen()
    {
        return $this->origen;
    }

    public function getFundacion()
    {
        return $this->fundacion;
    }

    public function getLogo()
    {
        return $this->logo;
    }

    public function insert(
        $nombre,
        $origen,
        $fundacion,
        $logo
    ) {
        $conexion = Conexion::getConexion();
        $query = "INSERT INTO editoriales VALUES (NULL, :nombre, :origen, :fundacion, :logo)";
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->execute([
            'nombre' => $nombre,
            'origen' => $origen,
            'fundacion' => $fundacion,
            'logo' => $logo
        ]);
    }

    public function edit(
        $id,
        $nombre,
        $origen,
        $fundacion,
        $logo
    ) {
        $conexion = Conexion::getConexion();
        $query = "UPDATE editoriales SET nombre = :nombre, origen = :origen, fundacion = :fundacion, logo = :logo WHERE editoriales.id = :id";
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->execute([
            'id' => $id,
            'nombre' => $nombre,
            'origen' => $origen,
            'fundacion' => $fundacion,
            'logo' => $logo
        ]);
    }
}
