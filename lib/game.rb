class Game
	attr_reader :tribes
# 
	def initialize(tribe1, tribe2)
	@tribe1 =tribe1  #Assiging tribe1
	@tribe2 = tribe2   #Assiging tribe2
		@tribes = []  #assigning tribes array
		@tribes << @tribe1
		@tribes << @tribe2
	end
# 	
	def clear_tribes #clears the tribes array
		return @tribes = []
	end
# 	
	def add_tribe(tribe_three)   #adds third tribe to add_tribe
		@tribes << tribe_three  #pushing third tribe to tribes array
		return @tribes
	end
# 	
	def immunity_challenge  #it eliminates the one of the tribe randomly 
		selected_tribe =  [@tribe1,@tribe2].sample  #assigning one of the tribe to selected_tribe
		return selected_tribe
# 		
	end 
# 	
	def individual_immunity_challenge

		return @tribes[0].members.sample
	end
# 	
 	def merge(new_tribe_name)  #merging two tribes after phase one
 		
 		new_tribe_array =[]
		@tribes.each do |tribe| 
			tribe.members.each do |member|
 				new_tribe_array  << member #pushing tribe members into new_tribe_array
 			end
 		end
 		new_tribe = Tribe.new({name: new_tribe_name, members: new_tribe_array})
		clear_tribes
		add_tribe(new_tribe)
 		return new_tribe #returning new tribe array which is instance of tribe class
	end

end