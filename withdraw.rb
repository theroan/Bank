require_relative 'user.rb'
class Withdraw
		def initialize(quantity)
				user_balance = User.balance
				if user_balance >= quantity
						user_balance -= quantity
						puts
						puts
						"Your new balance is: #{user.balance}"
						puts
						puts
				else
						puts
						puts
						puts "You don't have that much money!"
						puts
						puts
				end
				User.balance = user_balance
		end
end