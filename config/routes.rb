Rails.application.routes.draw do
    match("/flexible/square/:zebra",{:controller => "calc", :action => "flex_square", :via => "get"})
end
