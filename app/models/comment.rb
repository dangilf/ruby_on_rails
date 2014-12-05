class Comment < ActiveRecord::Base
    belongs_to :post, counter_cache: true
	belongs_to :user


	def author_name

		if(user) 
			user.full_name
		else 
			"unknown"
		end

	end
end
