# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative complements the builtin method require by allowing you to load a file that is relative to the file containing the require_relative statement.

# For example, if you have unit test classes in the "test" directory, and data for them under the test "test/data" directory, then you might use a line like this in a test case:
# require_relative "data/customer_data_1"

#
#
require_relative 'state_data'

class VirusPredictor
  # initalize instance variables by accepting parameters
  # def initialize(state_of_origin, population_density, population)
  #   @state = state_of_origin
  #   @population = population
  #   @population_density = population_density
  # end

  # call predicted_deaths & speed_of_spread functions with arguments
  # def virus_effects
  #   predicted_deaths(@population_density, @population, @state)
  #   speed_of_spread(@population_density, @state)
  # end

  def states_report
    multiples_of_fifty = 2.5
    STATE_DATA.each do |k,v|
      predicted_deaths(v[:population_density], v[:population], k)
      speed_of_spread(v[:population_density], k)
    end
    
  end

  private
  # using instance variable computes number_of_deaths
def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if population_density >= 200
      number_of_deaths = (population * 0.4).floor
    elsif population_density >= 150
      number_of_deaths = (population * 0.3).floor
    elsif population_density >= 100
      number_of_deaths = (population * 0.2).floor
    elsif population_density >= 50
      number_of_deaths = (population * 0.1).floor
    else
      number_of_deaths = (population * 0.05).floor
    end

    print "#{state} will lose #{number_of_deaths} people in this outbreak"

  end


  #using instance variable computes speed
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    multiples_of_fifty = (population_density / 50).to_i
    speed = 0.5
    if population_density < 200
      speed = 2.5 - (multiples_of_fifty * speed)
    end
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


report = VirusPredictor.new
report.states_report()

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section


# What are the differences between the two different hash syntaxes shown in the state_data file?
# Rocket hash and using symbols as keys...
# symbols are immune and their value can not be changed.

# What does require_relative do? How is it different from require?
# require relative includes the state data file
# require_relative complements the builtin method require by allowing you to load a file that is relative to the file containing the require_relative statement.

# For example, if you have unit test classes in the "test" directory, and data for them under the test "test/data" directory, then you might use a line like this in a test case:
# require_relative "data/customer_data_1"


# What are some ways to iterate through a hash?
# hash.each do |key, array|
#   puts "#{key}-----"
#   puts array
# end


# When refactoring virus_effects, what stood out to you about the variables, if anything?
# Instead of instance variables, I used parameters. There was no need to declare and call instance variables.



# What concept did you most solidify in this challenge?
# Refactoring a nested if else statement.





