class Game
	attr_reader :tribes

	def initialize(tribe1, tribe2)
		@tribes = []
		@tribes << tribe1
		@tribes << tribe2
	end
	
	def clear_tribes
		@tribes = []
	end
	
	def add_tribe(group)
		@tribes << group
		return @tribes
	end
	
	def immunity_challenge
		main_group =  @tribes.sample
		return main_group
	end 
	
	def individual_immunity_challenge
		return @tribes[0].members.sample
	end
# 	
 	def merge(new_tribe_name)
 		new_array =[]
		@tribes.each do |tribe|
			tribe.members.each do |member|
 				new_array  << member
 			end
 		end
 		new_tribe = Tribe.new({name: new_tribe_name, members: new_array})
 		return new_tribe
	end

end