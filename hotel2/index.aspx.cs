using System;
using System.Collections.Generic;
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

			OpenQA.Selenium.IWebDriver driver = new ChromeDriver(AppDomain.CurrentDomain.BaseDirectory);
			driver.Url = "https://www.hotels.com";
			driver.FindElement(By.CssSelector(".cta.widget-overlay-close")).Click();
			IJavaScriptExecutor js = (IJavaScriptExecutor)driver;
			js.ExecuteScript("document.getElementById('qf-0q-destination').value='" + ucity + "'");
			js.ExecuteScript("document.getElementById('qf-0q-room-0-adults').value='6'");
			js.ExecuteScript("document.getElementById('qf-0q-localised-check-in').value='30/11/2019'");
			js.ExecuteScript("document.getElementById('qf-0q-localised-check-out').value='12/12/2019'");
			Thread.Sleep(1000);
			driver.FindElement(By.CssSelector(".cta.cta-strong")).Click();
			Thread.Sleep(1000);
			driver.FindElement(By.CssSelector(".cta.cta-strong")).Click();

			Thread.Sleep(6000);
			String currentURL = driver.Url;
			List<String> result = Address(currentURL);
			Session["address"] = result;
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
				guest.Text = "see" + node.InnerText;
			}
			return result;
		}
	}
		
	}




