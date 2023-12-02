<div class="modal fade" id="registerModal" tabindex="-1" role="">
        <div class="modal-dialog modal-login" role="document">
            <div class="modal-content">
                <div class="card card-signup card-plain">
                    <div class="modal-header">
                        <div class="card-header card-header-primary text-center" style="width: 100%">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                <i class="material-icons">clear</i>
                            </button>
                            <h4 class="card-title">Register</h4>
                        </div>
                    </div>
                    <form class="form form-ajax" method="POST" action="UsuarioRegistrar">
                    	<div class="modal-body">
                            <div class="card-body">
                                <div class="form-group bmd-form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="material-icons">face</i></div>
                                        </div>
                                        <input type="text" name="nombre" class="form-control" placeholder="Nombre..." required > 
                                    </div>
                                </div>
                                <div class="form-group bmd-form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="material-icons">face</i></div>
                                        </div>
                                        <input type="text" name="apellido" class="form-control"
                                            placeholder="Apellido...">
                                    </div>
                                </div>
                                <div class="form-group bmd-form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="material-icons">face</i></div>
                                        </div>
                                        <input type="text" name="telefono" class="form-control" required 
                                            placeholder="Teléfono...">
                                    </div>
                                </div>
                                <div class="form-group bmd-form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="material-icons">face</i></div>
                                        </div>
                                        <input type="email" name="email" class="form-control" placeholder="Email..." required >
                                    </div>
                                </div>
                                <div class="form-group bmd-form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="material-icons">face</i></div>
                                        </div>
                                        <input type="text" name="username" class="form-control" required
                                            placeholder="Username...">
                                    </div>  
                                </div>
                                <div class="form-group bmd-form-group">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="material-icons">lock_outline</i>
                                            </div>
                                        </div>
                                        <input type="password" name="password" placeholder="Password..." required
                                            class="form-control">
                                    </div>
                                </div>
                                
                            </div>
	                    </div>
	                    <div class="modal-footer justify-content-center">
                                 <a href="index.jsp" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">ATRAS</a>
	                        <input type="submit" class="btn btn-primary btn-link btn-wd btn-lg" value="Guardar">
	                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>