require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @nums = params[:number].to_i 
    "#{@nums * @nums}"
  end

  get '/say/:number/:phrase' do
    phrases = ''
    @nums = params[:number].to_i.times do 
      phrases += params[:phrase]
    end
    phrases
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

   get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

      answer = 'Unable to perform this operation'

      case params[:operation]
      when 'add'
        answer = (number1 + number2).to_s
      when 'subtract'
        answer = (number1 - number2).to_s
      when 'multiply'
        answer = (number1 * number2).to_s
     when 'divide'
        answer = (number1 / number2).to_s
      end
    end

end

# get "/goodbye/:name" do
#   @name = params[:name]
#   "Goodbye, #{@name}."
# end

# get "/multiply/:num1/:num2" do
#   @product = params[:num1].to_i * params[:num2].to_i
#   "#{@product}"
# end

# Create a dynamic route at get '/:operation/:number1/:number2' that accepts 
# an operation (add, subtract, multiply or divide) and performs the operation on 
# the two numbers provided, returning a String. For example, going to /add/1/2 
# should render 3 as a String.