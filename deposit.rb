require_relative 'user.rb'
class Deposit
		def initialize(quantity)
				user_balance = User.balance
				user_balance += quantity
				puts
				puts
				"Your new balance is: #{user_balance}"
				puts
				puts
				User.balance = user_balance
		end
end