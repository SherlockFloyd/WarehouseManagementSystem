using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using WebChart;
using System.Collections;

 
	/// <summary>
	/// Creates a vertical column chart
	/// </summary>
	public class MapColumnChart : Chart 
	{

		private ArrayList rects;
		public ArrayList Rects
		{
			get{return rects;}
			set{rects = value;}
		}


	#region CONSTRUCTORS
		/// <summary>
		/// Creates a new Column Chart from existing data
		/// </summary>
		public MapColumnChart( ChartPointCollection data ) : base(data) 
		{
		}
		/// <summary>
		/// Creates a new Column Chart
		/// </summary>
		public MapColumnChart() : base() 
		{
		}
		/// <summary>
		/// Creates a new Column Chart with the specified data and color
		/// </summary>
		/// <param name="data">Existing Data</param>
		/// <param name="color">The column color</param>
		public MapColumnChart( ChartPointCollection data, Color color) : base(data,color) 
		{
		}
	#endregion

	#region METHODS
		/// <summary>
		///		Renders the chart
		/// </summary>
		/// <param name="graphics">Graphics object to output the drawing</param>
		/// <param name="width">Specifies the Width of the chart</param>
		/// <param name="height">Specifies the height of the chart</param>
		public override void Render( System.Drawing.Graphics graphics, int width, int height) 
		{
			ChartEngine engine = this.Engine;
			float scaleX = engine.ScaleX, scaleY = engine.ScaleY;
			Pen pen = this.Line.GetPen(graphics);
			Brush brush = this.Fill.GetBrush(graphics); 

			float xStart=0, xWidth;
		
			int xCount = 0, xPosFinal=0;
			if (engine.Charts.Count > 1) 
			{	
				foreach (Chart c in engine.Charts) 
				{
					if (c.Equals(this))	xPosFinal = xCount;
					if (c as MapColumnChart != null) xCount ++;
				}
				xWidth = ((scaleX-1)/xCount) ;
				xStart = xWidth * xPosFinal + 1;
			}
			else 
			{
				xStart=1;
				xWidth=scaleX;
			}

			float y;
			float yHeight;
			float x=0;
			foreach (ChartPoint p in this.Data) 
			{				
				if (p.YValue * scaleY < 0) 
				{
					y=(p.YValue * scaleY);
					yHeight=-(p.YValue * scaleY);
				}

				else 
				{
					y=0;
					yHeight=(p.YValue * scaleY);
				}
				Rectangle rect = new Rectangle(
					(int)((float)(x * scaleX) + xStart) ,
					(int)y,
					(int)xWidth,
					(int)yHeight);

				Point []points  = new Point[]{ rect.Location };
				graphics.TransformPoints(
					System.Drawing.Drawing2D.CoordinateSpace.Page,
					System.Drawing.Drawing2D.CoordinateSpace.World,
					points);

				if (this.rects !=null)
					this.rects.Add(
						new Rectangle(
						points[0], new Size((int)xWidth, (int)yHeight))
						);
				graphics.FillRectangle( brush, rect);
				graphics.DrawRectangle( pen, rect);
				x++;
			}
		}
	#endregion
	}
 
