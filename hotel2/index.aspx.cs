using System;
using System.Threading;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;

namespace hotel2
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		protected void SearchData(object sender, EventArgs e)
		{
			String uguest, ucountry, ucity;
			String udepart, ureturn;

			uguest = guest.Text;
			ucountry = destcountry.Text;
			ucity = destcountry.Text;
			udepart = checkin_date.Text;
			ureturn = checkin_date1.Text;

			OpenQA.Selenium.IWebDriver driver = new ChromeDriver(AppDomain.CurrentDomain.BaseDirectory);
			driver.Url = "https://www.hotels.com";
			IJavaScriptExecutor js = (IJavaScriptExecutor)driver;
			js.ExecuteScript("document.getElementById('qf-0q-destination').value='new york'");
			js.ExecuteScript("document.getElementById('qf-0q-room-0-adults').value='6'");
			js.ExecuteScript("document.getElementById('qf-0q-localised-check-in').value='30/11/2019'");
			js.ExecuteScript("document.getElementById('qf-0q-localised-check-out').value='12/12/2019'");
			Thread.Sleep(1000);
			driver.FindElement(By.CssSelector(".cta.cta-strong")).Click();
			Thread.Sleep(1000);
			driver.FindElement(By.CssSelector(".cta.cta-strong")).Click();



		}
	}
}



			/**IWebDriver driver = new ChromeDriver(AppDomain.CurrentDomain.BaseDirectory);
			driver.Url = "https://www.hotels.com";
			driver.FindElement(By.CssSelector(".cta.widget-overlay-close")).Click();
			IJavaScriptExecutor js = (IJavaScriptExecutor)driver;
			js.ExecuteScript("document.getElementById('qf-0q-destination').value='new york'");
			js.ExecuteScript("document.getElementById('qf-0q-room-0-adults').value='6'");
			js.ExecuteScript("document.getElementById('qf-0q-localised-check-in').value='30/11/2019'");
			js.ExecuteScript("document.getElementById('qf-0q-localised-check-out').value='12/12/2019'");
			Thread.Sleep(1000);
			driver.FindElement(By.CssSelector(".cta.cta-strong")).Click();
			Thread.Sleep(1000);
			driver.FindElement(By.CssSelector(".cta.cta-strong")).Click();


			


			Thread.Sleep(6000);
			String currentURL = driver.Url;
			currentURL = currentURL.Replace("\"", "");

			Scraper sc = new Scraper();
			///test.Text = currentURL;

			IWebElement elements = driver.FindElement(By.XPath("//span[@class='address']"));

			//List<String> result = new List<String>();
			//result = testing();




		}



		public List<String> testing()
		{
			List<String> result = new List<String>();
			var web = new HtmlWeb();
			var doc = web.Load("https://www.hotels.com/search.do?resolved-location=CITY%3A1506246%3AUNKNOWN%3AUNKNOWN&destination-id=1506246&q-destination=New%20York,%20New%20York,%20United%20States%20Of%20America&q-check-in=2019-11-28&q-check-out=2019-11-29&q-rooms=1&q-room-0-adults=6&q-room-0-children=0");
			//HtmlNodeCollection node =doc.DocumentNode.SelectNodes("//span[@class='address']");

			foreach (HtmlNode node in doc.DocumentNode.SelectNodes("//span[@class='address']"))
			{
				result.Add(node.InnerHtml);
			}
			return result;
		}
		public void see(object sender, EventArgs e)
		{
			for (int x = 1; x <= 4; x++)
			{
				System.Web.UI.HtmlControls.HtmlGenericControl createDiv =
			   new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
				createDiv.ID = "createDiv";
				createDiv.Style.Add(HtmlTextWriterStyle.BackgroundColor, "Yellow");
				createDiv.Style.Add(HtmlTextWriterStyle.Color, "Red");
				createDiv.Style.Add(HtmlTextWriterStyle.Height, "100px");
				createDiv.Style.Add(HtmlTextWriterStyle.Width, "400px");
				createDiv.InnerHtml = " I'm a div, from code behind ";
				this.Controls.Add(createDiv);
			}
		}
	}
}*/



