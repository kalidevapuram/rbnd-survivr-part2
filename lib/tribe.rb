class Tribe
	attr_reader :name, :members
# 
# 
	def initialize(options={})
  		@name =  options[:name] 
 		@members = options[:members] 
		puts @name #printing name
	end
#   
  	def to_s
    	@name
  	end
#   
	def tribal_council(immune: nil)
		rejected_member = @members.reject { |member| member == immune }.sample  #rejecting the member and assigning to rejected_member
		 @members.delete(rejected_member)  #deleting the rejected_member
		 return rejected_member
	end

end
