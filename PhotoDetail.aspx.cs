using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InClassExersice_ustora_ProductDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void FormView1_ItemCommand(object sender, EventArgs e)
    {
        HiddenField hfID = (HiddenField)FormView1.FindControl("hfID");
        HiddenField hfTitle = (HiddenField)FormView1.FindControl("hfTitle");
        HiddenField hfPrice = (HiddenField)FormView1.FindControl("hfPrice");
        TextBox txtQty = (TextBox)FormView1.FindControl("txtQty");
        string id = hfID.Value;
        string title = hfTitle.Value;
        decimal price = Convert.ToDecimal(hfPrice.Value);
        int quantity = Convert.ToInt16(txtQty);
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