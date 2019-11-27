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
		protected void Page_Load(object sender, EventArgs e)
		{
			resAddress = (List<String>)Session["address"];
			//descrip.InnerText = resAddress[1];
		}

		
	}
}