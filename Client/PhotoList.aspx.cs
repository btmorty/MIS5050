using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InClassExersice_ustora_Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //get the titleID, title, and price
        HiddenField hfID = (HiddenField)ListView1.Items[ListView1.SelectedIndex].FindControl("hfID");
        HiddenField hfTitle = (HiddenField)ListView1.Items[ListView1.SelectedIndex].FindControl("hfTitle");
        HiddenField hfPrice = (HiddenField)ListView1.Items[ListView1.SelectedIndex].FindControl("hfPrice");

        string id = hfID.Value;
        string title = hfTitle.Value;
        decimal price = Convert.ToDecimal(hfPrice.Value);
        int quantity = 1;
        Cart c;

        if (Session["Cart"] != null) //cart already exists
        {
            //pull the cart out of the session
            c = (Cart)Session["Cart"];
        }
        else
        {
            //instantiate new cart
            c = new Cart();
        }

        c.AddItem(id, title, price, quantity);

        //put the cart back in the session
        Session["Cart"] = c;

        //Redirect to Cart Page
        Response.Redirect("Cart.aspx");

    }
}