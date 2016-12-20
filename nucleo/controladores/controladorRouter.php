<?php

class controladorEnrutador
{
	public static function cargarControlador($view='')
	{
		if($view!='')
		{
			if(file_exists('nucleo/controladores/controlador' . ucfirst(strtolower($view)) . '.php'))
			{
				include('nucleo/controladores/controlador' . ucfirst(strtolower($view)) . '.php');
			}else{
				include('nucleo/controladores/controladorError.php');
			}
		}else{
			include('nucleo/controladores/controladorIndex.php');
		}
	}
}
