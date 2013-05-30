require_relative 'list_clients.rb'
require_relative 'withdraw.rb'
require_relative 'deposit.rb'
require_relative 'user.rb'

class Bank


	def initialize

		@user_list = Clientlist.new
		@current_user = nil
		@logged = false

	    @methods1 = [
	      "exit",
	      "log_in",
	      "create_user"
	      ]
	     @methods2 = [
	     	"exit",
	     	"withdraw",
	     	"deposit",
	     	"see_balance"
	     ]
	end


	def menu1
			
			puts "Select an option"
			puts "1 - Log in"
			puts "2 - Create Account"
			puts "0 - Exit"
	end


	def menu2

			puts "Select an option"
			puts "1 - Withdraw"
			puts "2 - Deposit"
			puts "3 - See your balance"
			puts "0 - Exit"
	
	end


	def create_user

		puts "Enter the username"
		login = gets.chomp
		puts "Enter the password"
		pass = gets.chomp
		@user_list.sign_up(User.new({login: login, pass: pass}))

	end


	def log_in
		
		puts "Enter the username"
		login = gets.chomp
		puts "Enter the password"
		pass = gets.chomp

		@current_user = @user_list.sign_in(User.new({login: login, pass: pass}))
		logged = true

	end


	def withdraw

		puts "How much do you want to withdraw?"
		quantity = gets.to_i
		Withdraw.new(quantity)

	end


	def deposit

		puts "How much do you want to deposit?"
		quantity = gets.to_i
		Deposit.new(quantity)

	end


	def see_balance

		puts "Your balance is: #{user.balance}"

	end


	def exit

		Process.exit(0)

	end


	def main
		loged = @logged
		puts "****************"
		puts "Bank manager!"
		puts "****************"
		puts ""
		puts ""
		puts "What do you want to do?"

		menu1


	    option = gets.to_i
	    
	    loop {
	    	if loged == false
	      		self.send(@methods1[option])
	      		menu1
	      		option = gets.to_i
	  		else
	  			self.send(@methods2[option])
	  			menu2
	  			option = gets.to_i
	  		end
	    }
	end
end

app = Bank.new
app.main
