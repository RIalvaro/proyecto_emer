<div class="modal fade" id="loginModal" tabindex="-1" role="">
        <div class="modal-dialog modal-login" role="document">
            <div class="modal-content">
                <div class="card card-signup card-plain">
                    <div class="modal-header">
                        <div class="card-header card-header-primary text-center" style="width: 100%">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                <i class="material-icons">clear</i>
                            </button>
                            <h4 class="card-title">Login</h4>
                        </div>
                    </div>
                    <form class="form form-ajax" method="POST" action="Login">
	                    <div class="modal-body">
                            <div class="card-body">
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
	                        <input type="submit" class="btn btn-primary btn-link btn-wd btn-lg" value="Ingresar">
	                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>