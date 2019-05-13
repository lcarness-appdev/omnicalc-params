Rails.application.routes.draw do
    match("/flexible/square/:zebra",{:controller => "calc", :action => "flex_square", :via => "get"})
    match("/flexible/square_root/:zebra",{:controller => "calc", :action => "flex_square_root", :via => "get"})
    match("/flexible/payment/:basis_points/:number_of_years/:present_value",{:controller => "calc", :action => "flex_pmt", :via => "get"})
    match("/flexible/random/:min/:max",{:controller => "calc", :action => "flex_rand", :via =>"get"})
end
