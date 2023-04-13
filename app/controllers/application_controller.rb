class ApplicationController < ActionController::Base


  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb" })
  end


  def calculate_square
    #ruby brings params = {"results"=>"42"}

    @num = params.fetch("results_square").to_f
    @square_of_num = @num ** 2

    render({ :template => "calculation_templates/square_results.html.erb" })
  end


  def blank_random_form
    render({ :template => "calculation_templates/random_form.html.erb" })
  end


  def calculate_random
  #Parameters: {"user_min"=>"1", "user_max"=>"5"}

  @lower = params.fetch("user_min").to_f
  @upper = params.fetch("user_max").to_f
  @result_random = rand(@lower..@upper)

    render({ :template => "calculation_templates/random_results.html.erb" })
  end

  def blank_square_root_form
    render({ :template => "calculation_templates/square_root_form.html.erb" })
  end  


  def calculate_square_root

    @num = params.fetch("results_square_root").to_f
    @square_root_of_num = @num ** 0.5
      render({ :template => "calculation_templates/square_root_results.html.erb" })
    end






end
