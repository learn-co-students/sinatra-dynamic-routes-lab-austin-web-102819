require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do
    @number = params[:number].to_i * params[:number].to_i
    "#{@number}"
  end

  get "/say/:number/:phrase" do
    
    @number = params[:number].to_i
    @phrase = []
    @number.times do
      @phrase << params[:phrase]
    end
    @phrase.join(" ")
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    case params[:operation].downcase
    when "add"
      @ans = params[:number1].to_i + params[:number2].to_i
    when "subtract"
      @ans = params[:number1].to_i - params[:number2].to_i
    when "multiply"
      @ans = params[:number1].to_i * params[:number2].to_i
    when "divide"
      @ans = params[:number1].to_i / params[:number2].to_i
    end

    "#{@ans.to_s}"
  end
end