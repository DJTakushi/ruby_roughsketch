require 'csv'

def gencsv
  out = CSV.generate_line(['foo', '04321'])
  out += CSV.generate_line(['bar', '100'])
  out += CSV.generate_line(['jiffy', 122])
  out += CSV.generate_line(['ipsum lorem', 'm1 garand'])
  return out
end

File.write('out.csv', gencsv())
