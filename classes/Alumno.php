<?php

class Alumno
{
    protected $id;
    protected $nombre;
    protected $foto;
    protected $nacimiento;
    protected $mail_institucional;

    public function traer_alumno_completo()
    {
        $alumnos = [];

        $query = "SELECT * FROM alumnos";
        $conexion = Conexion::getConexion();
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->setFetchMode(PDO::FETCH_CLASS, self::class);
        $PDOStatement->execute();

        $alumnos = $PDOStatement->fetchAll();
        return $alumnos;
    }

    public function getNombre() {
        return $this->nombre;
    }

    public function getFoto() {
        return $this->foto;
    }

    public function getNacimiento() {
        return $this->nacimiento;
    }

    public function getMail() {
        return $this->mail_institucional;
    }
}