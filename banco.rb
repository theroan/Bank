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

				logged = @logged
				if logged
						self.menu2
				else
				puts "Select an option"
				puts
				puts "1 - Log in"
				puts
				puts "2 - Create Account"
				puts
				puts "0 - Exit"
				end
		end


		def menu2

				
				puts "Select an option"
				puts
				puts "1 - Withdraw"
				puts
				puts "2 - Deposit"
				puts
				puts "3 - See your balance"
				puts
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
				logged = @logged
				puts "Enter the username"
				login = gets.chomp
				puts "Enter the password"
				pass = gets.chomp

				@current_user = @user_list.sign_in(User.new({login: login, pass: pass}))
				if @current_user == nil
						puts
						puts
						puts "username or password do not exist"
						puts 
						puts 
				else
				logged = true
				@logged = logged
				end
		end


		def withdraw
				user = @current_user
				puts
				puts
				puts "How much do you want to withdraw?"
				puts
				puts
				quantity = gets.to_i
				Withdraw.new(user, quantity)

		end


		def deposit
				user = @current_user
				puts
				puts
				puts "How much do you want to deposit?"
				puts
				puts
				quantity = gets.to_i
				Deposit.new(user, quantity)

		end


		def see_balance
				user = @current_user
 				puts
				puts
				puts "Your balance is: #{user.balance}"
				puts
				puts
				
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
				puts
				puts
				puts	
				menu1


			    option = gets.to_i
			    
			    loop {
			    	loged = @logged
			    			puts
			    			puts
				    	if loged
					  			self.send(@methods2[option])
					  			menu2
					      		option = gets.to_i
				  		else
					      		self.send(@methods1[option])
					      		menu1
					  			option = gets.to_i
				  		end
			    }
		end
end

app = Bank.new
app.main