require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    # Get the param hash value for :name key
    # Set it equal to an instance variable
    # Reverse the order of the characters in the variable.
    @reversed_name= params[:name].reverse

  end

  get "/square/:number" do
    @number= params[:number].to_i
    @squared_number= @number * @number
    "#{@squared_number}"

  end

  get "/say/:number/:phrase" do
    # create a variable equal to an empty string. 
    answer = ''

    # Get the :number from params, convert it to an integer and then do the following thing that many times:
    params[:number].to_i.times do
      answer += params[:phrase] # Get the :phrase from params, add it to the answer variable and set it equal to the new value
    end

    answer # return answer
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."



  end

  get '/:operation/:number1/:number2' do
    # Create two variables for number1 and number2 so we can do work on them later
    number1= params[:number1].to_i
    number2= params[:number2].to_i

    #Write conditional logic to decide what to do, depending on what is entered in :operation
    case params[:operation]
      when "add"
        answer = (number1 + number2).to_s

      when "multiply"
        answer= (number1 * number2).to_s

      when "divide"
        answer= (number1 / number2).to_s

      when "subtract"
        answer= (number2 - number1).to_s
        
    end
  end


end

# Question about this lab: 
  #1. Why do we need to interpolate @squared_number on line 17 for it to read it to the browser? 
  # For the reversed name method, we were able to just return it, but in this second method we had to interpolate the instance variable for it to be read. 

  #2. Why do we use regular variables in line 23? When would we use instance variables vers regular variables? 
  #3. Why do we need to translate the numbers back to strings when we pass them back to the browser?