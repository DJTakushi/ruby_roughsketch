require 'csv'

def generate_code(number_of_chars)
  #https://www.rubyguides.com/2015/03/ruby-random/
  charset = Array('A'..'Z') + Array('a'..'z')
  output = Array.new(number_of_chars) { charset.sample }.join
  return output
end

def gencsv
  out = CSV.generate_line([generate_code(10), '04321'])
  out += CSV.generate_line(['bar', '100'])
  out += CSV.generate_line(['jiffy', 122])
  out += CSV.generate_line(['ipsum lorem', 'm1 garand'])
  return out
end

File.write('out.csv', gencsv())
