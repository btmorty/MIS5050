using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// This is a simple class representing an item that can be added to the shopping cart.
/// </summary>
public class CartItem
{
	//constructor
    public CartItem(string id, string name, decimal price, int qty) 
    {
        this.id = id;
        this.name = name;
        this.price = price;
        this.qty = qty;
    }

    //private member variables
    private string name;
    private decimal price;
    private int qty;
    private string id;

    //public properties (notice only Quantity has a set accessor)
    public string ID
    {
        get
        { return id; }

    }

    public string Name 
    {
        get
        { return name; }

    }


    public decimal Price 
    {
        get
        { return price; }

    }

    public int Quantity 
    {
        get
        { return qty; }
        set { qty = value; }
    }

    public decimal ExtendedPrice
    {
        get { return price * qty; }
    }

}
