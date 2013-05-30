require_relative 'user.rb'
class Deposit
	def initialize(quantity)
		user.balance += quantity
		"Your new balance is: #{user.balance}"
	end
end