class Reservation < ActiveRecord::Base

	belongs_to :restaurant
	belongs_to :user
    
    validate :can_reserve

    def can_reserve
    	reso_time = restaurant.reservations.where(:date_time => date_time)
    	reso_sizes = reso_time.sum(:party_size)

    	if restaurant.capacity <= party_size + reso_sizes
    		errors.add(:party_size, "restaurant is full at this time, sorreh")
    	end
    end

    def event_date_formatted
    event_date.strftime("%m/%d/%Y")
    end


end
