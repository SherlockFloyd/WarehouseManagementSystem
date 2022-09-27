using System;
using System.Drawing ;
using System.Web;
using System.Web.UI;
using WebChart;

 
	#region ChartPointSelectedEventArgs 
	public class ChartPointSelectedEventArgs : EventArgs
	{
		public ChartPointSelectedEventArgs(string chartSelected)
		{
			this.ChartSelected=chartSelected;
		}
		public string ChartSelected;
	}
	#endregion

	public delegate void OnChartPointSelected(object sender, ChartPointSelectedEventArgs e);

	/// <summary>
	/// Summary description for MapChart.
	/// </summary>
	public class MapChart : WebChart.ChartControl, IPostBackEventHandler 
	{
		public event OnChartPointSelected ChartPointSelected;

		void IPostBackEventHandler.RaisePostBackEvent(string eventArgument)
		{
			if (this.ChartPointSelected != null)
			{
				this.ChartPointSelected(this, new ChartPointSelectedEventArgs(eventArgument));
			}
		}
		
		
		protected override void Render(HtmlTextWriter writer)
		{
			
			base.Attributes.Add("USEMAP", "#Map" + this.UniqueID);
			base.Render(writer);

			foreach(Chart chart in this.Charts)
			{
				if (chart is MapColumnChart)
				{
					RenderMap(writer, (MapColumnChart)chart );
					return;
				}
			}
		}
		private void RenderMap(HtmlTextWriter writer, MapColumnChart chart)
		{
			writer.WriteLine();
			writer.AddAttribute(HtmlTextWriterAttribute.Name, "Map" + this.UniqueID);
			writer.RenderBeginTag("MAP");

			foreach (Rectangle rect in chart.Rects)
			{
				writer.AddAttribute("SHAPE","rect");
				writer.AddAttribute("COORDS", String.Format("{0},{1},{2},{3}", rect.Left, rect.Top, rect.Right,rect.Bottom));
				writer.AddAttribute("HREF", Page.GetPostBackClientHyperlink(this, rect.ToString ()));
				writer.RenderBeginTag(HtmlTextWriterTag.Area);
				writer.RenderEndTag();
			}
			writer.WriteEndTag("MAP");
		}

	}
 
