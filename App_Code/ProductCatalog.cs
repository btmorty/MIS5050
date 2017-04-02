using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ProductCatalog
/// </summary>
public class ProductCatalog
{
    // Create Product List
    private List<TaxableProduct> products = new List<TaxableProduct>();

    public void AddProduct(string name, decimal price, string imageUrl)
    {
        TaxableProduct prod = new TaxableProduct(name, price, imageUrl);
        products.Add(prod);
    }
    public Product GetHighPricedProduct()
    {
        Product highPricedProduct = null;
        decimal highestPrice = 0M;

        foreach(Product p in products)
        {
            if (p.Price > highestPrice)
            {
                highPricedProduct = p;
                highestPrice = p.Price;
            }
        }
        return highPricedProduct;
    }

    public string GetCatalogHtml()
    {
        string catalogHTML = "";
        foreach (TaxableProduct tp in products)
        {
            catalogHTML += tp.GetHtml();
        }
        return catalogHTML;
    }

    public ProductCatalog()
    {
        //constructor
    }
}