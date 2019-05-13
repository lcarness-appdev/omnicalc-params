class CalcController < ApplicationController
  
  
  def flex_square
    # Rails, behind the scenes, creates a variable called "params" and assigns
    # params = {"zebra" => 42}
    # Now, we get used to it:
    @a_number = params.fetch("zebra").to_i
    @squared_number = @a_number ** 2 
    render("flex_templates/square.html.erb")
  end
  
  
  def flex_square_root
    @a_number = params.fetch("zebra").to_f.round(0)
    @square_root_number = (@a_number ** 0.5)
    render("flex_templates/square_root.html.erb")
  end

  
  def flex_pmt
    @basis_points = params.fetch("basis_points").to_f / 10000
    @monthly_basis_points = @basis_points / 12
    @number_of_years = params.fetch("number_of_years").to_f
    @number_of_months = @number_of_years * 12
    @present_value = params.fetch("present_value"). to_f
    @payment = ((@monthly_basis_points * @present_value) / (1 - (1 + @monthly_basis_points) ** (- @number_of_months)))
    render("flex_templates/pmt.html.erb")
  end


  def flex_rand
    @min = params.fetch("min").to_i
    @max = params.fetch("max").to_i
    @random_number = rand(@min...@max)
    render("flex_templates/rand.html.erb")
  end


  def square_form
    render("form_templates/square.html.erb")
  end

  def process_square_form
    @num = params.fetch("num_to_square").to_f
    @square_of_num = @num ** 2
    render("results_templates/square.html.erb")
  end


  def square_root_form
    render("form_templates/square_root.html.erb")
  end

  def process_square_root_form
    @num = params.fetch("num_to_square_root").to_f
    @square_root_of_num = @num ** 0.5 
    render("results_templates/square_root.html.erb")
  end


  def pmt_form
    render("form_templates/pmt.html.erb")
  end
  
  def process_pmt_form
    @rate = params.fetch("rate").to_f / 12
    @years = params.fetch("num_of_years").to_f
    @months = @years * 12
    @present_value = params.fetch("present_value").to_f
    @payment = ((@rate * @present_value) / (1 - (1 + @rate) ** (- @months)))
    render("results_templates/pmt.html.erb")
  end


  def rand_form
    render("form_templates/rand.html.erb")
  end

  def process_rand_form
    render("results_templates/rand.html.erb")
  end


end