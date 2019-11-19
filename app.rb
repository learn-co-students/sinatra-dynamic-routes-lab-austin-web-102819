require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do
    n = params[:number].to_i
   "#{n*n}"
  end

  get '/say/:number/:phrase' do
   n = params[:number].to_i
   @p = params[:phrase]
   x = []
    n.times do
      x << @p
    end
    x.flatten
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == 'add'
      "#{@num1 + @num2}"
    elsif @operation == "subtract"
      "#{@num1 - @num2}"
    elsif @operation == "multiply"
      "#{@num1 * @num2}"
    elsif @operation == "divide"
      "#{@num1 / @num2}"
    else
      'invalid'
    end 
  end
end