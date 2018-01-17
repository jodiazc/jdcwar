  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Menu Perfiles
        <!--small>it all starts here</small-->
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Examples</a></li>
        <li class="active">Blank page</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">&nbsp;</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                    title="Collapse">
              <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div>
        </div>
        <div class="box-body">
            <!--Inicio-->
		    <table id="dg" title="Menus por Perfiles" class="easyui-datagrid" style="width:'100%';height:auto"
		            url="models/get_profiles.php"
		            toolbar="#toolbar" pagination="true"
		            rownumbers="true" fitColumns="true" singleSelect="true" data-options="onDblClickRow: editUser" >
		        <thead>
		            <tr>
		                <th field="IdPerfil" width="50">Id Perfil</th>
		                <th field="descripcion" width="50">Perfil</th>
                        <th field="idMenu" width="50">Is Menu</th>
                        <th field="menu" width="50">Menu</th>
		            </tr>
		        </thead>
		    </table>
		    <div id="toolbar">
		        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">Nuevo Menu</a>
		        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">Editar Menu</a>
		        <!--a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">Remove User</a-->
		    </div>
		    
		    <div id="dlg" class="easyui-dialog" style="width:400px"
		            closed="true" buttons="#dlg-buttons">
		        <form id="fm" method="post" novalidate style="margin:0;padding:20px 50px">
		            <div style="margin-bottom:10px">
                        <input class="easyui-combobox" name="idPerfil" id="idPerfil" label="Perfil:" data-options="prompt:'Seleccione',valueField:'id',textField:'text',url:'models/get_perfiles.php'" style="width:200px;">		                
		            </div>		            		            		            
                    <div style="margin-bottom:10px">
                        <input class="easyui-combobox" name="IdMenu" id="IdMenu" label="Estatus:" data-options="prompt:'Seleccione',valueField:'id',textField:'text',url:'models/get_cabecera.php'" style="width:200px;">                      
                    </div>                                      
		        </form>
		    </div>
		    <div id="dlg-buttons">
		        <a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="saveUser()" style="width:90px">Guardar</a>
		        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')" style="width:90px">Cancelar</a>
		    </div>
            <!--Fin inicio-->          
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
          Footer
        </div>
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
      <script type="text/javascript">
        var url;
        function newUser(){
            $('#dlg').dialog('open').dialog('center').dialog('setTitle','Nuevo Menu');
            $('#fm').form('clear');
            url = 'models/set_profile.php';
        }
        function editUser(){
            var row = $('#dg').datagrid('getSelected');
            if (row){
                $('#dlg').dialog('open').dialog('center').dialog('setTitle','Editar Menu');
                $('#fm').form('load',row);
                url = 'models/update_profile.php?id='+row.id;
            }
        }
        function saveUser(){
            $('#fm').form('submit',{
                url: url,
                onSubmit: function(){
                    return $(this).form('validate');
                },
                success: function(result){
                    var result = eval('('+result+')');
                    if (result.errorMsg){
                        $.messager.show({
                            title: 'Error',
                            msg: result.errorMsg
                        });
                    } else {
                        $('#dlg').dialog('close');        // close the dialog
                        $('#dg').datagrid('reload');    // reload the user data
                    }
                }
            });
        }
        function destroyUser(){
            var row = $('#dg').datagrid('getSelected');
            if (row){
                $.messager.confirm('Confirm','Are you sure you want to destroy this user?',function(r){
                    if (r){
                        $.post('destroy_user.php',{id:row.id},function(result){
                            if (result.success){
                                $('#dg').datagrid('reload');    // reload the user data
                            } else {
                                $.messager.show({    // show error message
                                    title: 'Error',
                                    msg: result.errorMsg
                                });
                            }
                        },'json');
                    }
                });
            }
        }
        function formatStatus(val,row){
        	if(row.is_visible==1){
        		return '<span style="color:#000;">Activo</span>';
        	}else{
				return '<span style="color:red;">Inactivo</span>';
        	}
        }
    </script>