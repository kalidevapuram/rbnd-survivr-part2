class Contestant
	attr_reader :name

  	def initialize(name)  #Initializing the name 
    	@name = name
  	end

  	def to_s 
   		@name
  	end
 
end