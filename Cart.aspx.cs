using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class InClassExersice_ustora_Cart : System.Web.UI.Page
{
    Cart c = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        //retrieve the cart frm the session and bind to the ListView
        if (Session["Cart"] != null)
        {
            Cart c = (Cart)Session["Cart"];
            ListView1.DataSource = c.Items;
            if (!IsPostBack)
            {
                ListView1.DataBind();
            }
        }

    }

    protected void ListView1_ItemDeleting(object sender, ListViewDeleteEventArgs e)
    {
        //call the remove item method of the cart class and pass in the ID of the item to be deleted
        string ID = e.Keys["ID"].ToString();

        if (c != null)
        {
            c.RemoveItem(ID);
            ListView1.DataBind();
        }
    }

    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "UpdateQty")
        {
            foreach (ListViewItem item in ListView1.Items)
            {
                string ID = ListView1.DataKeys[item.DataItemIndex].Value.ToString();
                HtmlInputText txtQty = (HtmlInputText)item.FindControl("txtQty");
                int qty = Convert.ToInt16(txtQty.Value);

                c.UpdateQuantity(qty, ID);
            }
            ListView1.DataBind();
        }
    }
}