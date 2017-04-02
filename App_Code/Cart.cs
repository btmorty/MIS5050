using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;


/// <summary>
/// This class represents a shopping cart with a list of CartItem objects
/// </summary>
public class Cart
{
    // Empty constructor
    public Cart()
    {

    }
    
    //private list of CartItem objects that represents the items stored in the cart
    private List<CartItem> items = new List<CartItem>();

    //public property to access (not modify) the items list
    public List<CartItem> Items
    {
        get { return items; }
    }

    //Boolean property indicating whether the cart has items in it (count of items > 0)
    public bool HasItems
    {
       get { return items.Count > 0; }
    }

    // Method to add an item to the cart.  ****IMPORTANT*** If the product already exists in the Items list, just update the quantity by one 
    public void AddItem(string id, string name, decimal price, int qty)
    {
        //check to see if item is already in cart
        bool isInCart = false;
        CartItem item = null;

        foreach (CartItem c in items)
        {
            if (id == c.ID)
            {
                isInCart = true;
                item = c;
            }
        }
        if (isInCart)
        {
            item.Quantity += 1;
        }
        else
        {
            //instantiat a new cartItem and add it to the list
            CartItem newItem = new CartItem(id, name, price, qty);
            items.Add(newItem);
        }
    }

    // Method to remove an item from the cart
    public void RemoveItem(string ItemID)
    {
        CartItem itemToRemove = null;
        foreach (CartItem item in items)
        {
            if (ItemID == item.ID)
            {
                itemToRemove = item;
            }
        }

        items.Remove(itemToRemove);
    }

    // Method to update the  quantity of an Item the cart. 
    public void UpdateQuantity(int UpdateQty, string ItemID)
    {
        foreach (CartItem item in items)
        {
            if (ItemID == item.ID)
            {
                item.Quantity = UpdateQty;
            }
        }
    }

    // Method to return the total dollar amount in the cart
    public decimal GetTotal()
    {
        decimal totalAmount = 0;

        foreach (CartItem item in items)
        {
            totalAmount += item.Price * item.Quantity;
        }

        return totalAmount;
    }
    
   

 
}
