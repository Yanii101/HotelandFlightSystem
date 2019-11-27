using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace hotel2
{
	public class Scraper
	{
			public string Details { get; set; }
			public string Price { get; set; }
			public string Name { get; set; }

			public Scraper(string name, String price, String details)
			{
				Name = name;
				Details = price;
				Price = details;

			}

		}
	}