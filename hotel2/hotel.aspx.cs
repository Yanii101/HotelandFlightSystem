using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotel2
{
	public partial class WebForm2 : System.Web.UI.Page
	{
		public List<String> resAddress;
		public List<String> resName;
		public List<String> resprice;
		public List<Scraper> sc;
		protected void Page_Load(object sender, EventArgs e)
		{
			resAddress = (List<String>)Session["address"];
			resName = (List<String>)Session["name"];
			resprice= (List<String>)Session["price"];

			sc = (List<Scraper>)Session["hoteldetail"];
			var value = this.HiddenField.Value;




			//descrip.InnerText = resAddress[1];
		}
		public void Details(object sender, EventArgs e)
		{
			var value = this.HiddenField.Value;
			string[] ssize = value.Split('-');
			String hotelname = ssize[0];
			String hotelprice = ssize[1];
			String hoteadd = ssize[2];
			Session["hotelname"] = hotelname;
			Session["hotelprice"] = hotelprice;
			Session["hoteladd"] = hoteadd;
			Response.Redirect("roomtype.aspx");
		}

	}


}
