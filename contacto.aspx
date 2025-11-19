<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contacto.aspx.cs" Inherits="ITWIP.WebApp.contacto" %>
<%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" 
  TagPrefix="BotDetect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="utf-8" />
    <title>ITW Contacto</title>
    <link rel="icon" type="image/x-icon" href="images/favicon.ico"/>
    
    <!-- Mobile layout -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- Page Style -->
    <link href="Style/DefaultPageStyle.css" rel="Stylesheet" type="text/css" />

    <!-- Bootstrap -->
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet"/>

</head>

<body>
    <form id="form1" runat="server">
        
    <div id="divHeader">

        <nav class="navbar navbar-expand-sm bg-white navbar-light shadow">
            <div class="container-fluid">
                <!--<div class="d-none d-sm-block">-->
                <a class="navbar-brand" href="inicio.html">
                    <img src="Images/logo.jpg" alt="Avatar Logo" class="logo">
                </a>

                <!-- </div>  -->
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
              
                <div class="collapse navbar-collapse w-100" id="collapsibleNavbar">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item d-flex align-items-center gap-1">
                            <img src="Images/globe.svg" class="log-var" />
                            <a class="nav-link" href="inicio.html#divCardWebPage">Páginas Web</a>
                        </li>

                        &nbsp;
                        &nbsp;
                        <li class="nav-item d-flex align-items-center gap-1">
                            <img src="Images/code-slash.svg" class="log-var" />
                            <a class="nav-link" href="inicio.html#divCardAppDev">Desarrollos</a>
                        </li>
                        &nbsp;
                        &nbsp;
                        <li class="nav-item d-flex align-items-center gap-1">
                            <img src="Images/grid-3x3-gap-fill.svg" class="log-var" />
                            <a class="nav-link" href="inicio.html#divCardAppInt">Aplicaciones</a>
                        </li>
                        &nbsp;
                        &nbsp;
                        <li class="nav-item d-flex align-items-center gap-1">
                            <img src="Images/pc-display.svg" class="log-var" />
                            <a class="nav-link" href="inicio.html#divCardCompEquipment">Equipo</a>
                        </li>
                        &nbsp;
                        &nbsp;
                        <li class="nav-item d-flex align-items-center gap-1">
                            <img src="Images/person-fill.svg" class="log-var" />
                            <a class="nav-link" href="contacto.aspx">Contacto</a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>

    </div>

        <div id="divBody" class="container-fluid" >
            
            <div id="divRowOfferServices" class="row mt-5">
                <div class="col-sm-1 col-md-1"></div>
                <div class="col-sm-8 col-md-6 ms-3">
                    <h4>Estamos disponibles para trabajar.</h4>
                    <p>Si esta buscando un proveedor de sistemas confiable, accesible y que tenga como prioridad dar con los resultados esperados, platiquemos de su proyecto.</p>
                    <p><dfn class="h"> <a href="mailto:contacto@intelyware.com" style="text-decoration: none; color: inherit;">contacto@intelyware.com</a> </dfn> <dfn class="fj ms-5"> <a href="tel:+528140050538" style="text-decoration: none; color: inherit;">81.4005.0538</a> </dfn> </p>

                </div>
                <div class="col"></div>
            </div>

            <div id="divRowSomeQuestions-Title" class="row mt-5 pt-5" style="background-color: #F5F4F4">

                <div class="col-1"></div>

                <div class="col-sm-8 col-md-6 ms-2">
                    <h2 class="t-sub">Antes de enviarnos un mensaje, aquí tenemos alguna información que podría importarte:</h2>
                </div>

                <div class="col"></div>

            </div>
           
            <div id="divRowSomeQuestions-List" class="row pb-5 pt-5" style="background-color: #F5F4F4">

                <div class="col-1"></div>

                <div class="col-sm-10 col-md-8">
                    <div class="accordion accordion-flush" >

                         <div class="accordion-item">
                            <h2 class="accordion-header">
                              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                <strong>Qué es Intelyware ?</strong>
                              </button>
                            </h2>
                            <div id="collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                              <div class="accordion-body">
                                Somos una compañía que ofrece una plataforma de aplicaciones integradas para administración de empresas bajo un costo de renta mensual. 
                                <br />
                                <br />
                                Ademas realizamos desarrollo personalizado la medida, diseño de paginas de internet y venta de equipo de cómputo con el fin de cubrir todo el requerimiento tecnológico que necesites.
                              </div>
                            </div>
                          </div>

                         <div class="accordion-item">
                            <h2 class="accordion-header">
                              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="true" aria-controls="collapseOne">
                                <strong>Cuánto cuestan las aplicaciones de Intelyware ?</strong>
                              </button>
                            </h2>
                            <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                              <div class="accordion-body">
                                Aprovecha las funcionalidades de las aplicaciones de Intelyware, todas por una tarifa de servicio mensual. Planes que van desde $100 al mes.
                              </div>
                            </div>
                          </div>

                         <div class="accordion-item">
                            <h2 class="accordion-header">
                              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="true" aria-controls="collapseOne">
                                <strong>Cómo se que tanto desarrollo personalizado necesito ?</strong>
                              </button>
                            </h2>
                            <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                              <div class="accordion-body">
                                Al platicar de su requerimiento primero se intenta cubrir con alguna de las aplicaciones del sistema Intelyware, para cada  funcionalidad que no se cubra se cotizará y realizará como desarrollo.  
                              </div>
                            </div>
                          </div>

                         <div class="accordion-item">
                            <h2 class="accordion-header">
                              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="true" aria-controls="collapseOne">
                                <strong>Es muy costoso el desarrollo de aplicaciones ?</strong>
                              </button>
                            </h2>
                            <div id="collapseFour" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                              <div class="accordion-body">
                                Las grandes empresas de desarrollo suelen cotizar alto el desarrollo de software, nosotros llevamos el conocimiento y experiencia a las pequeñas y medianas empresas pero a un precio muy accesible.
                                <br />
                                <br />
                                Además al conciderar el desarrollo como adecuación de nuestra plataforma de aplicaciones el costo se reduciria por la mitad.   
                              </div>
                            </div>
                          </div>

                         <div class="accordion-item">
                            <h2 class="accordion-header">
                              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="true" aria-controls="collapseOne">
                                <strong> Tengo que pagar de contado  el desarrollo de aplicaciones ?</strong>
                              </button>
                            </h2>
                            <div id="collapseFive" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                              <div class="accordion-body">
                                Solo se pide un anticipo para acordar el proyecto y el resto se difiere en mensualidades.
                                <br />
                                <br />
                                Hasta que se termine el desarollo, se empezaría a pagar la renta del servicio de aplicaciones requeridas.   
                              </div>
                            </div>
                          </div>


                    </div>
                </div>

                <div class="col"></div>

            </div>

            <div id="divRowContactForm" class="row mt-5 pb-5">
                <div class="col-sm-1 col-md-1"></div>
                <div class="col-sm-10 col-md-4 pb-5 ms-2">

                    <h4>Tienes algún proyecto en mente ? </h4>
                    <p>Usa esta forma para darnos más detalle como te sea posible y te contactaremos tan pronto como podamos.</p>
                    <br />
                    <p>También puedes ponerte en contacto usando la siguiente información ó bien mediante los medios sociales.</p>
                    <p><dfn class="h"> <a href="mailto:contacto@intelyware.com" style="text-decoration: none; color: inherit;">contacto@intelyware.com</a> </dfn> <dfn class="fj ms-5"> <a href="tel:+528140050538" style="text-decoration: none; color: inherit;">81.4005.0538</a> </dfn> </p>

                </div>
                <div class="col-sm-10 col-md-6 ms-2 needs-validation was-validated">
                    <div class="row">
                        <div class="col">
                            <h4>Tu Nombre</h4>
                            <asp:TextBox type="text" ID="txtName" class="form-control is-valid mb-2 bg-body-tertiary"  required="" placeholder="Juan Lopez" runat="server"></asp:TextBox>
                            <h4>Tu Compañía</h4>
                            <asp:TextBox type="text" ID="txtCompany" class="form-control is-valid mb-2 bg-body-tertiary"  required="" placeholder="Tu Compañía" runat="server"></asp:TextBox>
                        </div>
                        <div class="col">
                            <h4>Tu Correo</h4>
                            <asp:TextBox type="email" ID="txtEmail" class="form-control is-valid mb-2 bg-body-tertiary" required="" placeholder="Juan.Lopez@email.com" runat="server" TextMode="Email"></asp:TextBox>
                            <h4>Tu Teléfono</h4>
                            <asp:TextBox type="phone" ID="txtPhone" class="form-control is-valid mb-2 bg-body-tertiary" required="" placeholder="81.4005.0532" runat="server" TextMode="Phone"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <h4>Detalles del Proyecto</h4>
                            <asp:TextBox type="text" ID="txtMessage" class="form-control is-valid mb-2 bg-body-tertiary" required="" 
                                placeholder="Hola&#10;&#10;Me gustaría crear un sitio web para mi tienda de ropa.&#10;&#10;Quiero que este sea responsivo para que se pueda accesar desde el celular y que tenga un apartado de tienda virtual.&#10;&#10;Pueden ayudarme con esta inciativa ?&#10;&#10;Saludos!" 
                                runat="server" Rows="20" Height="300" TextMode="MultiLine"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <BotDetect:WebFormsCaptcha ID="ExampleCaptcha" runat="server" 
	                            UserInputID="CaptchaCodeTextBox" />
                            <asp:TextBox ID="CaptchaCodeTextBox" class="form-control is-valid mb-2" required="" placeholder="Texto de la imagen" runat="server" />
                        </div>
                    </div>
                    <div id="divMessage" class="row mt-2 mb-2">
                        <div class="col">
                           <asp:Label ID="lblMessage" class="col-form-label" runat="server" ForeColor="Red"></asp:Label> <br />
                        </div>
                    </div>
                    <div id="divButton" class="row">
                        <div class="col">

                            <asp:Button ID="btnSend" type="submit" class="btn btn-degradado w-100 text-white mt-2 mb-3" runat="server" Text="Vamos a Realizarlo ↓" OnClick="btnSend_Click" />

                        </div>
                    </div>
                </div>

            </div>

        </div>
        
    <div id="divFooter" class=" text-white py-3">
        <div class="container text-center">

            <img class="logo-foother" src="Images/logo-sinfondo.png" />

            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;

        </div>
    </div>

    </form>
</body>

</html>
