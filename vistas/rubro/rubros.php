<?php include("vistas/general/encabezado.html") ?>
<?php include("vistas/general/header.html") ?>
<script type="text/javascript">
	$(document).ready(function(){
		$('.filterable .btn-filter').click(function(){
			var $panel = $(this).parents('.filterable'),
			$filters = $panel.find('.filters input'),
			$tbody = $panel.find('.table tbody');
			if ($filters.prop('disabled') == true) {
				$filters.prop('disabled', false);
				$filters.first().focus();
			} else {
				$filters.val('').prop('disabled', true);
				$tbody.find('.no-result').remove();
				$tbody.find('tr').show();
			}
		});
		$('.filterable .filters input').keyup(function(e){
			/* Ignore tab key */
			var code = e.keyCode || e.which;
			if (code == '9') return;
			/* Useful DOM data and selectors */
			var $input = $(this),
			inputContent = $input.val().toLowerCase(),
			$panel = $input.parents('.filterable'),
			column = $panel.find('.filters th').index($input.parents('th')),
			$table = $panel.find('.table'),
			$rows = $table.find('tbody tr');
			/* Dirtiest filter function ever ;) */
			var $filteredRows = $rows.filter(function(){
				var value = $(this).find('td').eq(column).text().toLowerCase();
				return value.indexOf(inputContent) === -1;
			});
			/* Clean previous no-result if exist */
			$table.find('tbody .no-result').remove();
			/* Show all rows, hide filtered ones (never do that outside of a demo ! xD) */
			$rows.show();
			$filteredRows.hide();
			/* Prepend no-result row if all rows are filtered */
			if ($filteredRows.length === $rows.length) {
				$table.find('tbody').prepend($('<tr class="no-result text-center"><td colspan="'+ $table.find('.filters th').length +'">No se encontraron resultados</td></tr>'));
			}
		});
	});
</script>
<div class="container">
	<div class="subcolumna subcolumna2 rounded_borders centered panel panel-primary filterable"> 
		<a href="pef/ayuda.pdf"><img class="info" title="Ayuda" src="../images/info.png"></a>
		<p class="title subtitulos rounded_borders">Rubros de Unidad de Producci&oacute;n</p>
		<div class="table-responsive rounded_borders">			
			<table class="table table-hover table-bordered" >
				<thead bgcolor=#a3d88a>
					<tr>					
						<th colspan="3"></th>
						<th colspan="3">Superficie</th>
						<th colspan="2">Maquinaria</th>
						<th><a ><span class="glyphicon glyphicon-search"></span></a></th>
					</tr>					
					<tr class="filters">
						<th><input type="text" id="filtro" placeholder="#"></th>
						<th><input type="text" id="filtro" placeholder="Nombre"></th>
						<th><input type="text" id="filtro" placeholder="Direcci&oacute;n"></th>
						<th><input type="text" id="filtro" placeholder="Total"></th>
						<th><input type="text" id="filtro" placeholder="Aprovechable"></th>
						<th><input type="text" id="filtro" placeholder="Aprovechada"></th>
						<th><input type="text" id="filtro" placeholder="Tipo"></th>
						<th><input type="text" id="filtro" placeholder="Cantidad"></th>
						<th><input type="text" id="filtro" placeholder="Acciones" disabled></th>
					</tr>
				</thead>
				<tbody  bgcolor= white>
					<?php $c=1; while($c<10){ ?>				
						<tr>
							<td> <?php echo$c ?> </td>
							<td>  </td>
							<td>  </td>
							<td>  </td>
							<td>  </td>
							<td>  </td>
							<td>  </td>
							<td>  </td>
							<td> 
								<a href="rubros.php"><span style="color:black; padding:4px" title="Ver" class="glyphicon glyphicon-eye-open"></span></a>
								<a href="#"><span style="padding:4px" title="Editar" class="glyphicon glyphicon-pencil"></span></a> 
								<a href="#"><span style="color:red" title="Eliminar" class="glyphicon glyphicon-remove"></span></a>
							</td>
						</tr>
						<?php $c++; } ?>
					<tr>
						<td> <?php echo$c ?> </td>
						<td>  </td>
						<td>  </td>
						<td>  </td>
						<td>  </td>
						<td>  </td>
						<td>  </td>
						<td>  </td>
						<td> 
							<a href="sectores.php"><span title="Agregar"  class="glyphicon glyphicon-plus-sign"></span></a> 
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<input class="button" value="Cancelar" type="button" onclick="location.href='../index.php'">
		<input class="button" value="Enviar" type="submit">
	</div>
</div>

<?php include('vistas/general/footer.html') ?>
<?php include('vistas/general/piepagina.html') ?>