require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}."
  end
  
    get "/square/:number" do
      @num = params[:number]
      "#{@num.to_i*@num.to_i}"
    end

    get "/say/:number/:phrase" do
      @num = params[:number]
      @phrase = params[:phrase]
        
        return_string = ''
        (@num.to_i).times do 
          return_string += @phrase
        end 
        return_string
    end
    get "/say/:word1/:word2/:word3/:word4/:word5" do
      @word1 = params[:word1]
      @word2 = params[:word2]
      @word3 = params[:word3]
      @word4 = params[:word4]
      @word5 = params[:word5]
      
          "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
      
    end

    get "/:operation/:number1/:number2" do 
      @operation = params[:operation]
      @number1   = params[:number1] 
      @number2   = params[:number2]
        if (@operation == "add")
          "#{@number1.to_i + @number2.to_i}"
        elsif (@operation == "subtract")
          "#{@number1.to_i - @number2.to_i}"
        elsif (@operation == "multiply")
          "#{@number1.to_i * @number2.to_i}"
        elsif (@operation == "divide")
          "#{@number1.to_i / @number2.to_i}"
        else
          "wrong oparand"
        end 
    end 


    

end