require 'csv'
require 'erb'
require 'fileutils' # for directory stuff

# Clean up directory
FileUtils.rm_rf("output")
FileUtils.mkdir("output")

# Read from sample file
file_contents = File.read("./sample.csv")
items = CSV.parse(file_contents, headers: true)

# Load our template
template = File.read('./header.erb.h')

# Render the template 
results = ERB.new(template).result( binding )

# Save it to a file
File.open("output/header.h", "w") {|f| f.write(results) }


