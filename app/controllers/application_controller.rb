class ApplicationController < ActionController::Base


  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb" })
  end


  def calculate_square
    #params = {"results"=>"42"}

    @num = params.fetch("results").to_f
    @square_of_num = @num ** 2

    render({ :template => "calculation_templates/square_results.html.erb" })
  end

end
