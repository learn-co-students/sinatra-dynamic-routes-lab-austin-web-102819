require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @square_number = params[:number].to_i
    "#{@square_number ** 2}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}" * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @one = params[:word1]
    @two = params[:word2]
    @three = params[:word3]
    @four = params[:word4]
    @five = params[:word5]
    "#{@one} #{@two} #{@three} #{@four} #{@five}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    
    case params[:operation]
    when 'add'
      answer = (@num1 + @num2).to_s
    when 'subtract'
      answer = (@num1 - @num2).to_s
    when 'multiply'
      answer = (@num1 * @num2).to_s
    when 'divide'
      answer = (@num1 / @num2).to_s
    end
  end

end