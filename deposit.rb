require_relative 'user.rb'
class Deposit
		def initialize(user, quantity)
				user_balance = user.balance
				user_balance += quantity
				puts
				puts
				"Your new balance is: #{user_balance}"
				puts
				puts
				user.balance = user_balance
		end
end