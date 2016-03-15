class Tribe
	attr_reader :name, :members


	def initialize(options={})
  		@name =  options[:name]
 		@members = options[:members] 
		puts @name
	end
  
  	def to_s
    	@name
  	end
  
	def tribal_council(immune: nil)
		@members.reject { |member| member == immune }.sample
	end

end
