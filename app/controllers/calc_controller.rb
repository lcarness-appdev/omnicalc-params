class CalcController < ApplicationController
  
  def flex_square
    # Rails, behind the scenes, creates a variable called "params" and assigns
    # params = {"zebra" => 42}
    # Now, we get used to it:
    @a_number = params.fetch("zebra").to_i
    @squared_number = @a_number ** 2 
    render("flex_templates/square.html.erb")
  end
end

