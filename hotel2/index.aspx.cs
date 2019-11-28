using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using HtmlAgilityPack;
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
			ucity = destcity.Text;
			udepart = checkin_date.Text;
			ureturn = checkin_date1.Text;


			string[] formats = {"dd/MM/yyyy", "dd-MMM-yyyy", "yyyy-MM-dd",
				   "dd-MM-yyyy", "M/d/yyyy", "dd MMM yyyy"};
			string depart = DateTime.ParseExact(udepart, formats, CultureInfo.InvariantCulture, DateTimeStyles.None).ToString("MM/dd/yyyy");
			string rreturn = DateTime.ParseExact(ureturn, formats, CultureInfo.InvariantCulture, DateTimeStyles.None).ToString("MM/dd/yyyy");



			OpenQA.Selenium.IWebDriver driver = new ChromeDriver(AppDomain.CurrentDomain.BaseDirectory);
			driver.Url = "https://www.hotels.com";
			driver.FindElement(By.CssSelector(".cta.widget-overlay-close")).Click();
			IJavaScriptExecutor js = (IJavaScriptExecutor)driver;
			js.ExecuteScript("document.getElementById('qf-0q-destination').value='" + ucity + "'");
			js.ExecuteScript("document.getElementById('qf-0q-room-0-adults').value='"+ uguest +"'");
			js.ExecuteScript("document.getElementById('qf-0q-localised-check-in').value='"+ depart +"'");
			js.ExecuteScript("document.getElementById('qf-0q-localised-check-out').value='"+ rreturn +"'");
			Thread.Sleep(1000);
			driver.FindElement(By.CssSelector(".cta.cta-strong")).Click();
			Thread.Sleep(1000);
			driver.FindElement(By.CssSelector(".cta.cta-strong")).Click();

			Thread.Sleep(6000);
			String currentURL = driver.Url;
			List<String> result = Address(currentURL);
			List<String> hotelname = HotelName(currentURL);
			List<String> hotelprice = HotelPrice(currentURL);
			List<Scraper> resultSet = new List<Scraper>();

			Scraper data;
			
			
			var output3 = (hotelname.Zip(result, (first, second) => new { Number = first, ABC = second })
			  .Zip(hotelprice, (first, second) => new { Number = first.Number, ABC = first.ABC, PQR = second })).ToList();


			var results = result.Zip(hotelname, (x, y) => x + y).Zip(hotelprice, (x, y) => x + y);
			foreach (var nw in output3)
			{
				data = new Scraper(nw.Number, nw.ABC, nw.PQR);
				resultSet.Add(data);
			}


			Session["hoteldetail"] = resultSet;
			Session["address"] = result;
			Session["name"] = hotelname;
			Session["price"] = hotelprice;
			Response.Redirect("hotel.aspx");
			


		}
		public List<String> Address(String url)
		{
			List<String> result = new List<String>();
			var web = new HtmlWeb();
			var doc = web.Load(url);

			foreach (HtmlNode node in doc.DocumentNode.SelectNodes("//span[@class='address']"))
			{
				result.Add(node.InnerHtml);
			}
			return result;
		}
		public List<String> HotelName(String url)
		{
			List<String> result = new List<String>();
			var web = new HtmlWeb();
			var doc = web.Load(url);

			foreach (HtmlNode node in doc.DocumentNode.SelectNodes("//a[@class='property-name-link']"))
			{
				result.Add(node.InnerHtml);
				guest.Text = "see" + node.InnerText;
			}
			return result;
		}
		public List<String> HotelPrice(String url)
		{
			List<String> result = new List<String>();
			var web = new HtmlWeb();
			var doc = web.Load(url);

			foreach (HtmlNode node in doc.DocumentNode.SelectNodes("//ins"))
			{
				result.Add(node.InnerHtml);
				guest.Text = "see" + node.InnerText;
			}
			return result;
		}



		
	}
		
	}




