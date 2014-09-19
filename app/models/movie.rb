class Movie < ActiveRecord::Base
	 validates :title, presence: true,
                    length: { minimum: 5 }

	def self.search(query)                                                       
   		where('title LIKE :query OR description LIKE :query OR year_released LIKE :query', :query => "%#{query}%") 
  	end    
end