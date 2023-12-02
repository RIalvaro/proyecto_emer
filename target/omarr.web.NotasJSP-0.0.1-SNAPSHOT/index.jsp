<%@page import="dto.Usuario"%>
<% session.setAttribute("paginaActual", "Notas App"); %>
<% Usuario usuarioActual = (Usuario) session.getAttribute("usuarioActual"); %>
<% if (usuarioActual == null) { %>
<!doctype html>
<html lang="es">
<head>
	<jsp:include page="include/design-resources.jsp" flush="true" />
</head>
<body>
	<nav class="navbar navbar-color-on-scroll navbar-transparent fixed-top navbar-expand-lg" color-on-scroll="100">
        <div class="container">
            <div class="navbar-translate">
                <a class="navbar-brand" href="index.html">
                    INICIO</a>
                <a href="index.jsp" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true"> Clic!!</a>

                <button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="navbar-toggler-icon"></span>
                    <span class="navbar-toggler-icon"></span>
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>

            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a href="#" class="nav-link" data-toggle="modal" data-target="#registerModal">
                            Registrate <i class="material-icons">assignment</i>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link" data-toggle="modal" data-target="#loginModal">
                            Logeate! <i class="material-icons">assignment</i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="page-header header-filter" data-parallax="true"
        style="background-image: url('resource/img/bg.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-md-8 ml-auto mr-auto">
                    <div class="brand text-center">
                        <h1>NOTAS  ACADEMICAS</h1>
                        <h3 class="title text-center">Sistema de notas académicas</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="main main-raised">
        <div class="container">
            <div class="section text-center">
                <h2 class="title">LUIS MIGUEL OLIVERA OSCO &  ALVARO ROJAS ILARI</h2>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header card-header-text card-header-primary">
                            <div class="card-text">
                                <h4 class="card-title">TECNOLOGIAS  EMERGENTES II</h4>
                            </div>
                        </div>
                        <div class="card-body">
                             Proyecto de final de semestre.
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header card-header-text card-header-primary">
                            <div class="card-text">
                                <h4 class="card-title">Ingenieria de Sistemas</h4>
                            </div>
                        </div>
                        <div class="card-body">
                            Universidad Publica de El ALTO 2023
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <jsp:include page="include/modal-login.jsp" flush="true" />
    
    <jsp:include page="include/modal-register.jsp" flush="true" />
    
    <jsp:include page="include/footer.jsp" flush="true" />
    
	<jsp:include page="include/interaction-resources.jsp" flush="true" />
</body>
</html>
<% }  else { %>
<script>window.location.href="inicio.jsp"</script>
<% } %>