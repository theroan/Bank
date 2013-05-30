require_relative 'user.rb'
class Clientlist < Hash
		def sign_in(user)
				return nil if self[user.login].nil?
				if (self[user.login].login == user.login and self[user.login].pass == user.pass)
						puts
						puts
						puts "Logged as #{user.login}"
						puts
						puts
						return self[user.login]
				else
						puts
						puts
						puts "Can't log in. Username or password not found."
						puts
						puts
				end
		end
	
		def sign_up(user)
				self[user.login] = user
				puts
				puts
				puts "Created user: #{user.login}, write down your password to remember it later."
				puts
				puts

		end

end