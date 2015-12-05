require 'yaml'

def yaml_load
	yaml_string = File.read 'test.txt'
	YAML::load(yaml_string)
end

read_array = yaml_load

read_array.each_line do |x|
	puts x.chomp
end