﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotel2
{
	public partial class WebForm5 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			hname.InnerText = (String)Session["hotelname"];
			hadd.InnerText = (String)Session["hoteladd"];
			hprice.InnerText = (String)Session["hotelprice"];
		}
	}
}