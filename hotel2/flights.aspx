<%@ Page Title="" Language="C#" MasterPageFile="~/Hotel.Master" AutoEventWireup="true" CodeBehind="flights.aspx.cs" Inherits="hotel2.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	 <div class="hero-wrap js-fullheight" style="background-image: url('images/bg_2.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>About</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">About Us</h1>
          </div>
        </div>
      </div>
    </div>


	<form runat="server">
<div class="row mt-20 flight-search">
    <div class="col-md-3">
        <label>Misafir Sayısı</label>
        <input type="type" class="form-control" name="name" value="" />
    </div>
    <div class="col-md-3">
        <label>Nereden</label>
        <input type="type" class="form-control" name="name" value="" />
    </div>
    <div class="col-md-3">
        <label>Nereye</label>
        <input type="type" class="form-control" name="name" value="" />
    </div>
    <div class="col-md-3">
        <button class="btn btn-primary btn-block"> Ara </button>
    </div>
</div>


<h2>Gidiş</h2>

<div class="row flight-list mt-20">
    <div class="flight-list__container">
        <div class="col-lg-12 item">
            <div class="radio-btn">
                <input type="radio" id="radio01" value="" name="radio">
                <label for="radio01"></label>
            </div>
            <div class="logo">
                <img src="https://www.tatilsepeti.com/images/Airlines/TK_TURKISH%20AIRLINES_35x35.gif" alt="Alternate Text" />
            </div>
            <div class="desc">
                <div class="desc__top">
                    Turkish Airlines -Cum. 11.11.2017
                </div>
                <div class="desc_bottom">
                    <span>08:15</span> İstanbul(IST) - <span>08:15</span> Antalya (AYT) 1s 05d
                </div>
            </div>
            <div class="price">
                99,00 TL
            </div>
        </div>
        <div class="divider"></div>
        <div class="col-lg-12 item">
            <div class="radio-btn">
                <input type="radio" id="radio01" value="" name="radio">
                <label for="radio01"></label>
            </div>
            <div class="logo">
                <img src="https://www.tatilsepeti.com/images/Airlines/TK_TURKISH%20AIRLINES_35x35.gif" alt="Alternate Text" />
            </div>
            <div class="desc">
                <div class="desc__top">
                    Turkish Airlines -Cum. 11.11.2017
                </div>
                <div class="desc_bottom">
                    <span>08:15</span> İstanbul(IST) - <span>08:15</span> Antalya (AYT) 1s 05d
                </div>
            </div>
            <div class="price">
                99,00 TL
            </div>
        </div>
        <div class="divider"></div>
        <div class="col-lg-12 item">
            <div class="radio-btn">
                <input type="radio" id="radio01" value="" name="radio">
                <label for="radio01"></label>
            </div>
            <div class="logo">
                <img src="https://www.tatilsepeti.com/images/Airlines/TK_TURKISH%20AIRLINES_35x35.gif" alt="Alternate Text" />
            </div>
            <div class="desc">
                <div class="desc__top">
                    Turkish Airlines -Cum. 11.11.2017
                </div>
                <div class="desc_bottom">
                    <span>08:15</span> İstanbul(IST) - <span>08:15</span> Antalya (AYT) 1s 05d
                </div>
            </div>
            <div class="price">
                99,00 TL
            </div>
        </div><div class="divider"></div>
<div class="col-lg-12 item">
    <div class="radio-btn">
        <input type="radio" id="radio01" value="" name="radio">
        <label for="radio01"></label>
    </div>
    <div class="logo">
        <img src="https://www.tatilsepeti.com/images/Airlines/TK_TURKISH%20AIRLINES_35x35.gif" alt="Alternate Text" />
    </div>
    <div class="desc">
        <div class="desc__top">
            Turkish Airlines -Cum. 11.11.2017
        </div>
        <div class="desc_bottom">
            <span>08:15</span> İstanbul(IST) - <span>08:15</span> Antalya (AYT) 1s 05d
        </div>
    </div>
    <div class="price">
        99,00 TL
		<asp:Button ID="Button2" class="btn.btn-primary" runat="server" Text="Button" />
    </div>
</div><div class="divider"></div>
<div class="col-lg-12 item">
    <div class="radio-btn">
        <input type="radio" id="radio01" value="" name="radio">
        <label for="radio01"></label>
    </div>
    <div class="logo">
        <img src="https://www.tatilsepeti.com/images/Airlines/TK_TURKISH%20AIRLINES_35x35.gif" alt="Alternate Text" />
    </div>
    <div class="desc">
        <div class="desc__top">
            Turkish Airlines -Cum. 11.11.2017
        </div>
        <div class="desc_bottom">
            <span>08:15</span> İstanbul(IST) - <span>08:15</span> Antalya (AYT) 1s 05d
        </div>
    </div>
    <div class="price">
        99,00 TL
    </div>
</div><div class="divider"></div>
<div class="col-lg-12 item">
    <div class="radio-btn">
        <input type="radio" id="radio01" value="" name="radio">
        <label for="radio01"></label>
    </div>
    <div class="logo">
        <img src="https://www.tatilsepeti.com/images/Airlines/TK_TURKISH%20AIRLINES_35x35.gif" alt="Alternate Text" />
    </div>
    <div class="desc">
        <div class="desc__top">
            Turkish Airlines -Cum. 11.11.2017
        </div>
        <div class="desc_bottom">
            <span>08:15</span> İstanbul(IST) - <span>08:15</span> Antalya (AYT) 1s 05d
        </div>
    </div>
    <div class="price">
        99,00 TL
    </div>
</div><div class="divider"></div>
<div class="col-lg-12 item">
    <div class="radio-btn">
        <input type="radio" id="radio01" value="" name="radio">
        <label for="radio01"></label>
    </div>
    <div class="logo">
        <img src="https://www.tatilsepeti.com/images/Airlines/TK_TURKISH%20AIRLINES_35x35.gif" alt="Alternate Text" />
    </div>
    <div class="desc">
        <div class="desc__top">
            Turkish Airlines -Cum. 11.11.2017
        </div>
        <div class="desc_bottom">
            <span>08:15</span> İstanbul(IST) - <span>08:15</span> Antalya (AYT) 1s 05d
        </div>
    </div>
    <div class="price">
        99,00 TL
    </div>
</div><div class="divider"></div>
<div class="col-lg-12 item">
    <div class="radio-btn">
        <input type="radio" id="radio01" value="" name="radio">
        <label for="radio01"></label>
    </div>
    <div class="logo">
        <img src="https://www.tatilsepeti.com/images/Airlines/TK_TURKISH%20AIRLINES_35x35.gif" alt="Alternate Text" />
    </div>
    <div class="desc">
        <div class="desc__top">
            Turkish Airlines -Cum. 11.11.2017
        </div>
        <div class="desc_bottom">
            <span>08:15</span> İstanbul(IST) - <span>08:15</span> Antalya (AYT) 1s 05d
        </div>
    </div>
    <div class="price">
        99,00 TL
    </div>
</div><div class="divider"></div>
<div class="col-lg-12 item">
    <div class="radio-btn">
        <input type="radio" id="radio01" value="" name="radio">
        <label for="radio01"></label>
    </div>
    <div class="logo">
        <img src="https://www.tatilsepeti.com/images/Airlines/TK_TURKISH%20AIRLINES_35x35.gif" alt="Alternate Text" />
    </div>
    <div class="desc">
        <div class="desc__top">
            Turkish Airlines -Cum. 11.11.2017
        </div>
        <div class="desc_bottom">
            <span>08:15</span> İstanbul(IST) - <span>08:15</span> Antalya (AYT) 1s 05d
        </div>
    </div>
    <div class="price">
        99,00 TL
		<asp:Button ID="Button1" runat="server" Text="Book" />
    </div>
</div>    <div class="divider"></div>
    <div class="col-lg-12 item">
        <div class="radio-btn">
            <input type="radio" id="radio01" value="" name="radio">
            <label for="radio01"></label>
        </div>
        <div class="logo">
            <img src="https://www.tatilsepeti.com/images/Airlines/TK_TURKISH%20AIRLINES_35x35.gif" alt="Alternate Text" />
        </div>
        <div class="desc">
            <div class="desc__top">
                Turkish Airlines -Cum. 11.11.2017
            </div>
            <div class="desc_bottom">
                <span>08:15</span> İstanbul(IST) - <span>08:15</span> Antalya (AYT) 1s 05d
            </div>
        </div>
        <div class="price">
            99,00 TL
        </div>
    </div>    <div class="divider"></div>
    <div class="col-lg-12 item">
        <div class="radio-btn">
            <input type="radio" id="radio01" value="" name="radio">
            <label for="radio01"></label>
        </div>
        <div class="logo">
            <img src="https://www.tatilsepeti.com/images/Airlines/TK_TURKISH%20AIRLINES_35x35.gif" alt="Alternate Text" />
        </div>
        <div class="desc">
            <div class="desc__top">
                Turkish Airlines -Cum. 11.11.2017
            </div>
            <div class="desc_bottom">
                <span>08:15</span> İstanbul(IST) - <span>08:15</span> Antalya (AYT) 1s 05d
            </div>
        </div>
        <div class="price">
            99,00 TL
        </div>
    </div>    <div class="divider"></div>
    <div class="col-lg-12 item">
        <div class="radio-btn">
            <input type="radio" id="radio01" value="" name="radio">
            <label for="radio01"></label>
        </div>
        <div class="logo">
            <img src="https://www.tatilsepeti.com/images/Airlines/TK_TURKISH%20AIRLINES_35x35.gif" alt="Alternate Text" />
        </div>
        <div class="desc">
            <div class="desc__top">
                Turkish Airlines -Cum. 11.11.2017
            </div>
            <div class="desc_bottom">
                <span>08:15</span> İstanbul(IST) - <span>08:15</span> Antalya (AYT) 1s 05d
            </div>
        </div>
        <div class="price">
            99,00 TL
        </div>
    </div>    <div class="divider"></div>
    <div class="col-lg-12 item">
        <div class="radio-btn">
            <input type="radio" id="radio01" value="" name="radio">
            <label for="radio01"></label>
        </div>
        <div class="logo">
            <img src="https://www.tatilsepeti.com/images/Airlines/TK_TURKISH%20AIRLINES_35x35.gif" alt="Alternate Text" />
        </div>
        <div class="desc">
            <div class="desc__top">
                Turkish Airlines -Cum. 11.11.2017
            </div>
            <div class="desc_bottom">
                <span>08:15</span> İstanbul(IST) - <span>08:15</span> Antalya (AYT) 1s 05d
            </div>
        </div>
        <div class="price">
            99,00 TL
        </div>
    </div>    <div class="divider"></div>
    <div class="col-lg-12 item">
        <div class="radio-btn">
            <input type="radio" id="radio01" value="" name="radio">
            <label for="radio01"></label>
        </div>
        <div class="logo">
            <img src="https://www.tatilsepeti.com/images/Airlines/TK_TURKISH%20AIRLINES_35x35.gif" alt="Alternate Text" />
        </div>
        <div class="desc">
            <div class="desc__top">
                Turkish Airlines -Cum. 11.11.2017
            </div>
            <div class="desc_bottom">
                <span>08:15</span> İstanbul(IST) - <span>08:15</span> Antalya (AYT) 1s 05d
            </div>
        </div>
        <div class="price">
            99,00 TL
        </div>
    </div>
    </div>
   
</div>
		</form>
</asp:Content>
