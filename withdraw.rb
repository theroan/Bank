require_relative 'user.rb'
class Withdraw
	def initialize(quantity)
		if user.balance >= quantity
			user.balance -= quantity
			"Your new balance is: #{user.balance}"
		else
			puts "You don't have that much money!"
		end
	end
end