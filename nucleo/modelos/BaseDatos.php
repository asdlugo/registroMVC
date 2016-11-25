<?php
/**
* La conexion a la base de datos sera una clase abstracta para que solo pueda ser instanciada por sus clases hijas (por seguridad) y se usara PDO por la abstracion a todas las beses de datos.
*/
abstract class BaseDatos
{
/**
* Las varaibles seran staticas para que no las cambien dinamicamente ya que le base de datos sera solo 1 
*/
    private static $bd_manejador = 'pgsql';
    private static $bd_host = '127.0.0.1';
    private static $bd_usuario = 'postgres';
    private static $bd_contraseña = '';
    private static $bd_characterset = 'UTF8';
    //private $bd_puerto = '5432';

    protected $bd_nombre = '';
    protected $conexion;
    protected $consulta;
    protected $filas = array();

    abstract protected function mostrar();
    abstract protected function insertar();
    abstract protected function actualizar();
    abstract protected function eliminar();

    protected function conectar()
    {
       
            $this->conexion = new PDO(SELF::$bd_manejador . ':host=' . SELF::$bd_host . '; dbname=' . $this->bd_nombre, SELF::$bd_usuario, SELF::$bd_contraseña);
            $this->conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            //$this->conexion->exec('SET CLIENT_ENCODING TO' . $this->bd_characterset);
            return $this->conexion;
      
    }
 
    protected function consultaDinamica($valores, $insert = false)
    {
        $this->conectar();
        $resultado = $this->conexion->prepare($this->consulta);
            foreach($valores as $clave => $valor)
            {
                if(is_int($valor))
                { 
                    $tipoDato = PDO::PARAM_INT; 
                }elseif(is_bool($valor)){ 
                    $tipoDato = PDO::PARAM_BOOL; 
                }elseif(is_null($valor)){ 
                    $tipoDato = PDO::PARAM_NULL;
                }elseif(is_string($valor)){ 
                    $tipoDato = PDO::PARAM_STR; 
                }else{ 
                    $tipoDato = FALSE;
                }
                if($tipoDato)
                {
                    $resultado->bindValue(":$clave",$valor,$tipoDato);
                }
            }
            $resultado->execute();
            if($insert == false)
            {
                if($resultado->rowCount() > 1)
                {
                    $this->filas = $resultado->fetchAll();
                }else if($resultado->rowCount() == 1)
                {
                    $this->filas = $resultado->fetch();
                }
            }
        $this->cerrarConexion();
    }

    protected function consultaSimple() 
    { 
        $this->conectar();
        $resultado = $this->conexion->prepare($this->consulta);
        $resultado->execute();
        $this->filas = $resultado->fetchAll();
        $this->cerrarConexion();
    }
    protected function cerrarConexion()
    {
        $this->conexion = null;
    }

}

