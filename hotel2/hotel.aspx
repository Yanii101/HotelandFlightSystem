<%@ Page Title="" Language="C#" MasterPageFile="~/Hotel.Master" AutoEventWireup="true" CodeBehind="hotel.aspx.cs" Inherits="hotel2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

	



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	 <div class="hero-wrap js-fullheight" style="background-image: url('images/bg_5.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>Hotel</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Hotels</h1>
          </div>
        </div>
      </div>
    </div>


    <section class="ftco-section ftco-degree-bg">
      <div class="container">

				<div class="row justify-content-start mb-4 pb-3">
          <div class="col-md-7 heading-section ftco-animate">
          	<span class="subheading">Special Offers</span>
            <h2 class="mb-4"><strong>Popular</strong> Hotels &amp; Rooms</h2>
          </div>
        </div>    		
    	</div>
    	<div class="container-fluid">
    		<div class="row">
				        <form runat="server">
						<% for (int i= 0;i < sc.Count;i++){%>			     
    			<div class="col-sm col-md-4 col-lg ftco-animate">
    				<div class="destination">
    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/hotel-1.jpg);">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>

    					<div class="text p-3">
    						<div class="d-flex">
    							<div class="one">
		    						<h3><a id="hotelname" href="#"><%= sc[i].Name%></a></h3>
		    						<p class="rate">
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star-o"></i>
		    							<span>8 Rating</span>
		    						</p>
	    						</div>
	    						<div class="two">
	    							<span id="hotelprice" class="price per-price"><%= sc[i].Price%></span>
    							</div>
    						</div>
    						<p id="hoteldetails"><%= sc[i].Details%></p>
    						<hr>
    						<p class="bottom-area d-flex">
    							<span><i class="icon-map-o"></i> Miami, Fl</span> 
								<input class="ml-auto" type="button" value="Book Now" onclick="AssignButtonClicked(this); Details;" 
                                   data-assigned-id="<%= sc[i].Name +"-"+ sc[i].Price +"-" +sc[i].Details%>" />
								<asp:Button id="btn" runat="server" style="display:none;" onclick="Details" Text="Button" />
    						</p>
    					</div>
    				</div>
    			</div>
				<%}%>
<asp:HiddenField ID="HiddenField" runat="server" Value="5" Visible="true" />

							 								</form>
    	
    		</div>
    	</div>
          	<div class="row mt-5">
		          <div class="col text-center">
		            <div class="block-27">
		              <ul>
		                <li><a href="#">&lt;</a></li>
		                <li class="active"><span>1</span></li>
		                <li><a href="#">2</a></li>
		                <li><a href="#">3</a></li>
		                <li><a href="#">4</a></li>
		                <li><a href="#">5</a></li>
		                <li><a href="#">&gt;</a></li>
		              </ul>
		            </div>
		          </div>
		        </div>
           <!-- .col-md-8 -->
      
    </section> <!-- .section -->

		<script type="text/javascript">
			function AssignButtonClicked(elem) {
				var id = $(elem).data('assigned-id');
				document.getElementById('<%= HiddenField.ClientID%>').value = id;
				console.log(document.getElementById('<%= HiddenField.ClientID%>').value)
				var clickButton = document.getElementById("<%= btn.ClientID %>");
				clickButton.click();

			}
</script>
</asp:Content>
