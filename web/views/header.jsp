<div class="header">
    <div class="container">
        <div class="head">
            <div class=" logo">
                <a href="index.jsp"><img src="images/logo.png" alt=""></a>	
            </div>
        </div>
    </div>
    <div class="header-top">
        <div class="container">
        <div class="col-sm-5 col-md-offset-2  header-login">
            <ul>
                <%
                    if(session.getAttribute("id") == null) {
                %>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="register.jsp">Cadrastre-se</a></li>
                <%
                    } else { 
                %>
                <li><a href="">Ol�, <%= session.getAttribute("nome") %>!</a></li>
                <li><a href="account.jsp">Minha conta</a></li>
                <li><a href="logout">Logout</a></li>
                <%
                    }
                %>
                <li><a href="cart">Carrinho</a></li>
            </ul>
        </div>
        <div class="col-sm-5 header-social">		
            <ul>
                <li><a href="#"><i></i></a></li>
                <li><a href="#"><i class="ic1"></i></a></li>
                <li><a href="#"><i class="ic2"></i></a></li>
                <li><a href="#"><i class="ic3"></i></a></li>
                <li><a href="#"><i class="ic4"></i></a></li>
            </ul>
        </div>
        <div class="clearfix"> </div>
        </div>
    </div>
		
    <div class="container">	
        <div class="head-top">	
            <div class="col-sm-8 col-md-offset-2 h_menu4">
                <nav class="navbar nav_bottom" role="navigation">
 
 <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header nav_2">
      <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
     
   </div> 
   <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
        <ul class="nav navbar-nav nav_1">
            <li><a class="color" href="index.jsp">Home</a></li>
            <li class="dropdown mega-dropdown active">
                <a class="color1" href="#" class="dropdown-toggle" data-toggle="dropdown">Feminino<span class="caret"></span></a>				
                <div class="dropdown-menu ">
                    <div class="menu-top">
                        <div class="col1">
                            <div class="h_nav">
                                <h4>Roupas</h4>
                                    <ul>
                                        <li><a href="product.jsp">Blusas</a></li>
                                        <li><a href="product.jsp">Saias Curtas</a></li>
                                        <li><a href="product.jsp">Saias Longas</a></li>
                                        <li><a href="product.jsp">Moletons e Camisolas</a></li>
                                        <li><a href="product.jsp">Casacos</a></li>
                                        <li><a href="product.jsp">Jeans</a></li>
                                        <li><a href="product.jsp">Macac�es</a></li>
                                    </ul>	
                            </div>							
                        </div>
                        <div class="col1">
                            <div class="h_nav">
                                <h4>Acess�rios</h4>
                                <ul>
                                    <li><a href="product.jsp">Brincos</a></li>
                                    <li><a href="product.jsp">Colares</a></li>
                                    <li><a href="product.jsp">Pulseiras</a></li>
                                    <li><a href="product.jsp">Rel�gios</a></li>
                                    <li><a href="product.jsp">An�is</a></li>
                                </ul>	
                            </div>							
                        </div>
                        <div class="col1">
                            <div class="h_nav">
                                <h4>Cal�ados</h4>
                                <ul>
                                    <li><a href="product.jsp">Saltos</a></li>
                                    <li><a href="product.jsp">Sand�lias</a></li>
                                    <li><a href="product.jsp">Sapat�nis</a></li>
                                    <li><a href="product.jsp">Sapatilhas</a></li>
                                    <li><a href="product.jsp">T�nis</a></li>
                                </ul>	
                            </div>							
                        </div>
                        <div class="col1 col5">
                            <img src="images/me.png" class="img-responsive" alt="">
                        </div>
                        <div class="clearfix"></div>
                    </div>                  
                </div>				
            </li>
            <!-- <li class="dropdown mega-dropdown active">
                <a class="color2" href="#" class="dropdown-toggle" data-toggle="dropdown">Masculino<span class="caret"></span></a>				
                    <div class="dropdown-menu mega-dropdown-menu">
                <div class="menu-top">
                    <div class="col1">
                        <div class="h_nav">
                            <h4>Submenu1</h4>
                            <ul>
                                <li><a href="product.jsp">Accessories</a></li>
                                <li><a href="product.jsp">Bags</a></li>
                                <li><a href="product.jsp">Caps & Hats</a></li>
                                <li><a href="product.jsp">Hoodies & Sweatshirts</a></li>
                            </ul>	
                        </div>							
                    </div>
                    <div class="col1">
                        <div class="h_nav">
                            <h4>Submenu2</h4>
                            <ul>
                                <li><a href="product.jsp">Jackets & Coats</a></li>
                                <li><a href="product.jsp">Jeans</a></li>
                                <li><a href="product.jsp">Jewellery</a></li>
                                <li><a href="product.jsp">Jumpers & Cardigans</a></li>
                                <li><a href="product.jsp">Leather Jackets</a></li>
                                <li><a href="product.jsp">Long Sleeve T-Shirts</a></li>
                            </ul>	
                        </div>							
                    </div>
                    <div class="col1">
                        <div class="h_nav">
                            <h4>Submenu3</h4>
                            <ul>
                                <li><a href="product.jsp">Shirts</a></li>
                                <li><a href="product.jsp">Shoes, Boots & Trainers</a></li>
                                <li><a href="product.jsp">Sunglasses</a></li>
                                <li><a href="product.jsp">Sweatpants</a></li>
                                <li><a href="product.jsp">Swimwear</a></li>
                                <li><a href="product.jsp">Trousers & Chinos</a></li>
                            </ul>	
                        </div>							
                    </div>
                    <div class="col1">
                        <div class="h_nav">
                            <h4>Submenu4</h4>
                            <ul>
                                <li><a href="product.jsp">T-Shirts</a></li>
                                <li><a href="product.jsp">Underwear & Socks</a></li>
                                <li><a href="product.jsp">Vests</a></li>
                                <li><a href="product.jsp">Jackets & Coats</a></li>
                                <li><a href="product.jsp">Jeans</a></li>
                                <li><a href="product.jsp">Jewellery</a></li>
                            </ul>	
                        </div>							
                    </div>
                <div class="col1 col5">
                    <img src="images/me1.png" class="img-responsive" alt="">
                </div>
                <div class="clearfix"></div>
                </div>                  
                </div>				
            </li> -->
                <!-- <li><a class="color3" href="product.jsp">Sale</a></li> -->
            <li><a class="color4" href="404.jsp">Sobre</a></li>
            <!-- <li><a class="color5" href="typo.jsp">Short Codes</a></li> -->
            <li ><a class="color6" href="contact.jsp">Contato</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->

    </nav>
            </div>
    <div class="col-sm-2 search-right">
        <ul class="heart">
            <li>
                <a href="wishlist.jsp" >
                    <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                </a>
            </li>
            <li>
                <a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"></i></a>
            </li>
        </ul>
        <div class="cart box_1">
                <a href="cart">
                    <h3><img src="images/cart.png" alt=""/></h3>   
                </a>
                <!-- provavelente esvazia o carrinho
                <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p> -->

        </div>
        <div class="clearfix"> </div>

        <!----->

        <!---pop-up-box---->					  
    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
    <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
    <!---//pop-up-box---->
    <div id="small-dialog" class="mfp-hide">
        <div class="search-top">
                <div class="login-search">
                        <input type="submit" value="">
                        <input type="text" value="Pesquisar.." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search..';}">		
                </div>
                <p>Looks Up Store</p>
        </div>				
    </div>
<script>
    $(document).ready(function() {
    $('.popup-with-zoom-anim').magnificPopup({
    type: 'inline',
    fixedContentPos: false,
    fixedBgPos: true,
    overflowY: 'auto',
    closeBtnInside: true,
    preloader: false,
    midClick: true,
    removalDelay: 300,
    mainClass: 'my-mfp-zoom-in'
    });

    });
</script>		
                            <!----->
    </div>
			<div class="clearfix"></div>
		</div>	
	</div>	
</div>