<?php

class Usuario
{
    protected $id;
    protected $email;
    protected $nombreUsuario;
    protected $nombreCompleto;
    protected $contraseña;
    protected $rol;

    public function traer_usuarios_admin() {
        $usuarios = [];

        $query = "SELECT * FROM usuarios WHERE usuarios.rol = 'admin'";
        $conexion = Conexion::getConexion();
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->setFetchMode(PDO::FETCH_CLASS, self::class);
        $PDOStatement->execute();

        $usuarios = $PDOStatement->fetchAll();
        return $usuarios;
    }

    public static function usuario_x_username(string $username): ?Usuario
    {
        $conexion = Conexion::getConexion();
        $query = "SELECT * FROM usuarios WHERE nombreUsuario = ?";

        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->setFetchMode(PDO::FETCH_CLASS, self::class);
        $PDOStatement->execute([$username]);

        $result = $PDOStatement->fetch();

        if (!$result) return null;
        return $result;
    }

    public function getId() {
        return $this->id;
    }

    public function getEmail() {
        return $this->email;
    }

    public function getNombreUsuario() {
        return $this->nombreUsuario;
    }

    public function getNombreCompleto() {
        return $this->nombreCompleto;
    }

    public function getContraseña() {
        return $this->contraseña;
    }

    public function getRol() {
        return $this->rol;
    }

    public function registrar_usuario(
        string $email,
        string $nombreUsuario,
        string $nombreCompleto,
        string $contraseña
    ) {
        $conexion = Conexion::getConexion();
        $query = "INSERT INTO usuarios VALUES (NULL, :email, :nombreUsuario, :nombreCompleto, :contraseña, 'usuario')";
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->execute([
            'email' => $email,
            'nombreUsuario' => $nombreUsuario,
            'nombreCompleto' => $nombreCompleto,
            'contraseña' => $contraseña,
        ]);
    }

    public function setAdmin(
        $nombreUsuario,
        $rol
    ) {
        $conexion = Conexion::getConexion();
        $query = "UPDATE usuarios SET rol = :rol WHERE usuarios.nombreUsuario = :nombreUsuario";
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->execute([
            'nombreUsuario' => $nombreUsuario,
            'rol' => $rol,
        ]);
    }

    public function setUsuario(
        $id,
        $rol
    ) {
        $conexion = Conexion::getConexion();
        $query = "UPDATE usuarios SET rol = :rol WHERE usuarios.id = :id";
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->execute([
            'id' => $id,
            'rol' => $rol,
        ]);
    }
}

?>