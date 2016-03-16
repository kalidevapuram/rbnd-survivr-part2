
class Jury
	attr_accessor :members
# 
	def initialize
		@members = [] #initializing members array
		@finalist_hash = Hash.new(0) #initializing empty hash
	end 
#  
	def add_member(name)
		@members << name  #pushing names into members array
	end 
# 
	def cast_votes(finalist)
	
		@count_orit = 0 #assigning finalist hash vlaues to 0
		@count_colt = 0
		@finalist_hash[finalist[0].name] = @count_orit #assigning finalist keys to values
		@finalist_hash[finalist[1].name] = @count_colt #assigning finalist keys to values
				
		@members.each do |member|
		
		sample_key_var = (@finalist_hash.keys).sample  #randomly selecting one key from finalist 
		
			puts "#{member} vote goes to " + sample_key_var .yellow  #printing jury_members votes to randomly selected finalist
			if sample_key_var == finalist[0].name #checking first key of finalist to randomly selected finalist 
		
				@count_orit = @count_orit+1 #incrementing the finalist value to one 
				
			else
				@count_colt = @count_colt + 1
			end
		end
		
		@finalist_hash[finalist[0].name] = @count_orit
		@finalist_hash[finalist[1].name] = @count_colt
		return @finalist_hash
	end
# 	
# 	
	def report_votes(final_votes)
		#printing finalist keys and values
		puts "#{final_votes.keys[0]} = #{final_votes.values[0]}" .pink 
		puts "#{final_votes.keys[1]} = #{final_votes.values[1]}" .pink
# 
	end
# # 
	def announce_winner(final_votes)
		#checking the finalist with maximum number of votes and printing
		if final_votes.values[0] >  final_votes.values[1]
			puts "The Winner is : #{final_votes.keys[0]}" .blue
			return final_votes.keys[0]
		else
			puts "The Winner is : #{final_votes.keys[1]}" .blue
			return final_votes.keys[1]
		end
	end




end
