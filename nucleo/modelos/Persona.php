<?php

include_once('nucleo/modelos/BaseDatos.php');
/**
* 
*/
class Persona extends BaseDatos
{

    protected $bd_nombre;

    public function __construct()
    {
        $this->bd_nombre = 'runoppadb';
    }

    //obtiene todos los registros de la tabla usuarios con consultaSimple
    public function mostrar()
    {
        $this->consulta = 'SELECT * FROM registro_productor.tbl_persona';
        $this->consultaSimple();
        if($this->filas > 0)
        {
            return $this->filas;
        }
    }

    //inserta un nuevo usuario
    public function insertar($user = array())
    {
        //consulta parametrizada
        $this->consulta = "INSERT INTO registro_productor.tbl_persona
            (str_cedularif,
            date_fechanacimiento,
            str_primernombre,
            str_segundonombre,
            str_primerapellido,
            str_segundoapellido,
            int_estadocivil,
            str_telefonolocal,
            str_telefonomovil,
            str_correoelectronico,
            int_generopersona,
            int_gradointruccion,
            bool_viveup,
            int_tipodocumentoidentidad)
            VALUES
            ($llave)";
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
