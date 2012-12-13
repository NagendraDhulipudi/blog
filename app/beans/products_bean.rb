class ProductsBean
 attr_accessor:name, :mrchoid, :uri

 def to_s()
 return "Name::"+name.to_s()+"\tMRCH-OID::"+mrchoid.to_s()+"\tProduct URI::"+uri.to_s()+"\n"
 end
end
