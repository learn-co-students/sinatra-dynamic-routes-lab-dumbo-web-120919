require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    reversed = params[:name].reverse
    "#{reversed}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    squared = num ** 2
    "#{squared}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    phrase * num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    phrase_arr = []
    phrase_arr << params[:word1] << params[:word2] << params[:word3] << params[:word4] << params[:word5]
    phrase_arr.join(' ') + '.'
  end

  get '/:operation/:number1/:number2' do 
    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case op
    when "add"
      product = num1 + num2
    when "subtract"
      product = num1 - num2
    when "multiply"
      product = num1 * num2
    when "divide"
      product = num1 / num2
    end

    product.to_s
  end

end