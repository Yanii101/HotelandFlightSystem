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

			//descrip.InnerText = resAddress[1];
		}


	}
}