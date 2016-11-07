class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @num = params[:num]
    @num_squared = @num.to_i * @num.to_i
  end

  def square_root
    @num = params[:num]
    @num_sqrt = sprintf('%.2f',Math.sqrt(@num.to_i))
  end

  def random_num
    @min = params[:min]
    @max = params[:max]
    @random_num = (rand * (@max.to_i - @min.to_i) + @min.to_i).round(0)
  end

  def payment
    @int_rate = params[:int_rate]
    @duration = params[:duration]
    @amount = params[:amount]

    @payment = sprintf('%.2f',@amount.to_i * ((@int_rate.to_f/10000)/12) * (1+(@int_rate.to_f/10000)/12)**(@duration.to_i*12) / ((1+(@int_rate.to_f/10000)/12)**(@duration.to_i*12)-1))
  end
end
