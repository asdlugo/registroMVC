<?php

/**
* 
*/
class Ususarios extends DbAbstracta
{

    private $bd_nombre;

    public function __construct() {
        $this->bd_nombre = runoppadb;
    }
    
    //obtiene todos los registros de la tabla usuarios con consultaSimple
    public function mostrar()
    {
        $this->consulta = 'SELECT * FROM registro_productor.tbl_usuariosistema';
        $this->consultaSimple();
        if($this->filas > 0){
            return $this->filas;
        }
    }

    //inserta un nuevo usuario
    public function insertar($user = array())
    {
        //consulta parametrizada
        $this->consulta = 'INSERT INTO registro_productor.tbl_usuariosistema (str_nombreusuario, str_contrasenia, bool_acceso, bool_recuperarcontrasenia, int_idrol, int_idpersonaadmin) 
                           VALUES (:usu, :con, :acc, :rec, :rol, :per)'; 
        //con el segundo parámetro a true hacemos un insert
        $this->consultaDinamica($user, true);
    }

    //actualiza en este caso un usuario, pero puede ser cualquier otra cosa
    public function actualizar($user = array())
    {
       $this->consulta = 'UPDATE usuarios SET username = :username, password = :password, edad = :edad WHERE id = :id';
       $this->consultaDinamica($user, true);
    }

    //elimina un usuario por su id
    public function eliminar($id = array())
    {
        $this->consulta = 'DELETE FROM usuarios WHERE id = :id';
        $this->consultaDinamica($id, true);
    }

}
