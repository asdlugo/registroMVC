<?php

include_once('nucleo/modelos/BaseDatos.php');

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
        $this->consulta = "
            INSERT INTO registro_productor.tbl_persona (int_tipodocumentoidentidad, str_cedularif, str_primernombre, str_primerapellido, str_correoelectronico, str_telefonomovil, int_estadocivil, date_fechanacimiento, int_generopersona, int_gradointruccion, bool_viveup) 
            VALUES (:tipo_documento, :cedula, :nombre, :apellido, :correo, :telefono, :edo_civil, :fecha_nac, :genero, :grado_instruccion, :vive_up)";
        //con el segundo parámetro a true hacemos un insert
        $this->consultaDinamica($user, true);
    }

    public function insertarNatural($user = array())
    {
        //consulta parametrizada
        $this->consulta = "
            INSERT INTO registro_productor.tbl_persona (int_tipodocumentoidentidad, str_cedularif, str_primernombre, str_primerapellido, str_correoelectronico, str_telefonomovil, int_estadocivil, date_fechanacimiento, int_generopersona, int_gradointruccion, bool_viveup) 
            VALUES (:tipo_documento, :cedula, :nombre, :apellido, :correo, :telefono, :edo_civil, :fecha_nac, :genero, :grado_instruccion, :vive_up)";
        //con el segundo parámetro a true hacemos un insert
        $this->consultaDinamica($user, true);
    }

    public function insertarJuridico($user = array())
    {
        //consulta parametrizada
        $this->consulta = "INSERT INTO registro_productor.tbl_persona 
            (int_tipodocumentoidentidad, str_cedularif, str_primernombre, str_telefonomovil, str_correoelectronico) 
                       VALUES (:tipo_documento, :cedula, :nombre, :telefono, :correo)";
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
