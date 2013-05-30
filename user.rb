class User


		attr_accessor :balance

		attr_reader :login, :pass
	


		def initialize(params)
				@login = params[:login]
				@pass = params[:pass]

				@balance = params[:balance]
				@balance = 0
		end


		def balance
				balance = @balance
				@balance = balance
		end


end