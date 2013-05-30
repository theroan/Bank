require_relative 'user.rb'
class Clientlist < Hash
	def sign_in(user)
		if (self[user.login].login == user.login and self[user.login].pass == user.pass)
			puts "Logged as #{user.login}"
			return self[user.login]
		else
			puts "Can't log in. Username or password not found."
		end
	end
	
	def sign_up(user)
		self[user.login] = user

		puts "Created user: #{user.login}, write down your password to remember it later."

	
	end

end