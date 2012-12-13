require "rexml/document";
require_relative "../beans/products_bean";
include REXML; # so no need to suffix REXML where ever we wanted to use it.
module CartXmlParser
  puts("START TIME : #{Time.new()}");
  private 
  @products = Hash.new();
    @xmlFile = File.new(file_path);
    doc = REXML::Document.new(@xmlFile); # no need to prefix REXML:: as we have included it.
    
    root = doc.root;
    ordersxpath = "resources/sps.common.restlet.RestletRef/resource"; 
    allElements = root.elements();
    #puts("Total orders in this response: " + allElements.size().to_s());
    
    # loop all the orders and prepare an object
    allElements.each(ordersxpath){|orderElem|
      # create bean object and set data into that object
      shoppingcartBean = ShoppingCartBean.new();
      shoppingcartBean.oid = orderElem.get_text("oid");
      shoppingcartBean.productTotal = orderElem.get_text("productTotal");
      shoppingcartBean.productTax = orderElem.get_text("productTax");
      shoppingcartBean.shippingTotal = orderElem.get_text("shippingTotal");
      shoppingcartBean.shippingTax = orderElem.get_text("shippingTax");    
      shoppingcartBean.shippingDiscount = orderElem.get_text("shippingDiscount");
      shoppingcartBean.totalRefund = orderElem.get_text("totalRefund");
      shoppingcartBean.partnerOid = orderElem.get_text("partnerOid");
      shoppingcartBean.partnerOid = orderElem.get_text("partnerOid");
      shoppingcartBean.label = orderElem.get_text("label");
      shoppingcartBean.creditCardOid = orderElem.get_text("creditCardOid");
      shoppingcartBean.status = orderElem.get_text("status");
      @orders[shoppingcartBean.oid] = shoppingcartBean;
     }
  
  public
  def CartXmlParser.getOrders()
    return @orders;
  end
  
  
  # loop to test the data.
  #for i in 0..@orders.length
    #puts(@orders.keys[i]);
    #puts(@orders.values[i].to_s());
  #end  
  
  END{
    if(@xmlFile != nil)
      @xmlFile.close();
    end
    puts("END TIME : #{Time.new()}");
  }
end
