<?php
class Compra {
    protected $id;
    protected $usuario_id;
    protected $usuario_nombre;
    protected $usuario_apellido;
    protected $usuario_mail;
    protected $usuario_provincia;
    protected $usuario_ciudad;
    protected $usuario_calle;
    protected $usuario_cpa;
    protected $manga;
    protected $volumen;
    protected $cantidad;

    public function insert(
        $usuario_id,
        $usuario_nombre,
        $usuario_apellido,
        $usuario_mail,
        $usuario_provincia,
        $usuario_ciudad,
        $usuario_calle,
        $usuario_cpa,
        $manga,
        $volumen,
        $cantidad
    ) {
        $conexion = Conexion::getConexion();
        $query = "INSERT INTO compras VALUES (NULL, :usuario_id, :usuario_nombre, :usuario_apellido, :usuario_mail, :usuario_provincia, :usuario_ciudad, :usuario_calle, :usuario_cpa, :manga, :volumen, :cantidad)";
        $PDOStatement = $conexion->prepare($query);
        $PDOStatement->execute([
            'usuario_id' => $usuario_id,
            'usuario_nombre' => $usuario_nombre,
            'usuario_apellido' => $usuario_apellido,
            'usuario_mail' => $usuario_mail,
            'usuario_provincia' => $usuario_provincia,
            'usuario_ciudad' => $usuario_ciudad,
            'usuario_calle' => $usuario_calle,
            'usuario_cpa' => $usuario_cpa,
            'manga' => $manga,
            'volumen' => $volumen,
            'cantidad' => $cantidad
        ]);
    }
}
?>
