using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace furnitur_website2
{ 
    public class Cart
    {
        public string prodid { get; set; }
        public string prodname { get; set; }
        public string brand { get; set; }
        public string Primarymaterial { get; set; }
        public int netprice { get; set; }
        public int discount { get; set; }
        public int price { get; set; }
        public string photo { get; set; }
        public int quantity { get; set; }
        public int Amount { get; set; }

        public DataSet getcart()
        {
            DataTable dt = new DataTable("cartdata");
            dt.Columns.Add("Srno");
            dt.Columns.Add("prodid");
            dt.Columns.Add("prodname");
            dt.Columns.Add("brand");
            dt.Columns.Add("Primarymaterial");
            dt.Columns.Add("netprice");
            dt.Columns.Add("price");
            dt.Columns.Add("discount");
            dt.Columns.Add("quantity");
            dt.Columns.Add("Amount");
            dt.Columns.Add("photo");


            if (HttpContext.Current.Session["cartlistsession"] != null)
            {
                List<Cart> cartlist = (List<Cart>)HttpContext.Current.Session["cartlistsession"];

                for (int i = 0; i <= cartlist.Count - 1; i++)
                {
                    Cart obj = cartlist[i];
                    DataRow dr = dt.NewRow();
                    dr[0] = (i + 1);
                    dr[1] = obj.prodid;
                    dr[2] = obj.prodname;
                    dr[3] = obj.brand;
                    dr[4] = obj.Primarymaterial;
                    dr[5] = obj.netprice;
                    dr[6] = obj.price;
                    dr[7] = obj.discount;
                    dr[8] = obj.quantity;
                    dr[9] = obj.Amount;
                    dr[10] = obj.photo;
                    dt.Rows.Add(dr);
                }
            }

            DataSet ds = new DataSet();
            ds.Tables.Add(dt);
            return ds;
        }


    }
}
