# based off of https://www.theodinproject.com/lessons/ruby-debugging

# require 'pry-byebug' # pry is a common debugger, but does not seem to
                       # integrate with vscode debugging very well
require 'debug' # debug gem works with vscode debugging

def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split

  # binding.pry # pry-byebug
  binding.break                          # Program will stop here

  unique_length = string_array.uniq.length
  original_length == unique_length
end

isogram?("Odin")