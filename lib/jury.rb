
class Jury
	attr_accessor :members

	def initialize
		@members = []
		@finalist_hash = {}
		

	end 
 
	def add_member(name)
		@members << name
	end 

	def cast_votes(finalist)
		
		@count_orit = 0
		@count_colt = 0
		@finalist_hash[finalist[0].name] = 0
		@finalist_hash[finalist[1].name]  = 0
	
		@members.each do |member|
			puts "#{member} vote for " + (@finalist_hash.keys).sample 
			if (@finalist_hash.keys).sample == finalist[0].name
		
				@count_orit = @count_orit+1
				
			else
				@count_colt = @count_colt + 1
			end
		end
		
# 		
		@finalist_hash[finalist[0].name] = @count_orit
		@finalist_hash[finalist[1].name] = @count_colt
		 
		return @finalist_hash
	end
	
	
	def report_votes(final_votes)
		puts final_votes[@finalist_hash.keys[1]] 
		puts final_votes[@finalist_hash.keys[1]] 

	end
# 
	def announce_winner(final_votes)
	
		# puts "Annouces"
# 		puts "#{final_votes.keys} = #{options.values[0]}"
# 		puts "#{key_array.last} = #{options.values[1]}"
		if final_votes.values[0] >  final_votes.values[1]
			return final_votes.keys[0]
		else
			return final_votes.keys[1]
		end
	end




end
