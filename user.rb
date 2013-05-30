class User
	attr_accessor :balance
	attr_reader :login, :pass
	
	def initialize(params)
		@login = params[:login]
		@pass = params[:pass]
		@user_balance = params[:balance]
	end
end