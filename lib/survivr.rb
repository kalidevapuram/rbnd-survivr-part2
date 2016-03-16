require_relative "game"
require_relative "tribe"
require_relative "contestant"
require_relative "jury"

#After your tests pass, uncomment this code below
#=========================================================
# Create an array of twenty hopefuls to compete on the island of Borneo
@contestants = %w(carlos walter aparna trinh diego juliana poornima juha sofia julia fernando dena orit colt zhalisa farrin muhammed ari rasha gauri)
@contestants.map!{ |contestant| Contestant.new(contestant) }.shuffle!

# Create two new tribes with names
@coyopa = Tribe.new(name: "Pagong", members: @contestants.shift(10))
@hunapu = Tribe.new(name: "Tagi", members: @contestants.shift(10))

# Create a new game of Survivor
@borneo = Game.new(@coyopa, @hunapu)
#=========================================================


#This is where you will write your code for the three phases
def phase_one
	8.times do
		@tribe_obj = @borneo.immunity_challenge #assiging selected lost tribe to tribe_obj
		phase_one_output = @tribe_obj.tribal_council # rejecting the lost tribe contestant 
		 puts "#{phase_one_output} ".light_blue + "is out" 
	end
end

def phase_two
	3.times do
		@tribe_obj = @borneo.individual_immunity_challenge  #returns immune member
		phase_two_output = @merge_tribe.tribal_council #returns the member to reject
		puts "#{phase_two_output}" .light_blue+ " is out" 
	end
	
end
# # 
def phase_three
	7.times do
		jury_member = @merge_tribe.tribal_council #assigning the third phase jury member to jury_member
		puts "#{jury_member}".light_blue + " is out" 
		@jury.add_member(jury_member) #adding the jury_member to add_member method
	end
end


# If all the tests pass, the code below should run the entire simulation!!
#=========================================================
puts "@coyopa---first tribe members" .green
puts @coyopa.members
puts "@hunapu---second tribe members".green
puts @hunapu.members
puts "Phase one:".red
phase_one #8 eliminations
@merge_tribe = @borneo.merge("Cello") # After 8 eliminations, merge the two tribes together
puts "phase_two:".red
phase_two #3 more eliminations
@jury = Jury.new
puts "phase_three:".red
phase_three #7 elminiations become jury members
finalists = @merge_tribe.members #set finalist
puts "printing the jury members votes".green
vote_results = @jury.cast_votes(finalists) #Jury members report votes
@jury.report_votes(vote_results) #Jury announces their votes
@jury.announce_winner(vote_results) #Jury announces final winner
