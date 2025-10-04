require 'csv'

def generate_code(number_of_chars)
  #https://www.rubyguides.com/2015/03/ruby-random/
  charset = Array('A'..'Z') + Array('a'..'z')
  output = Array.new(number_of_chars) { charset.sample }.join
  return output
end

def time_rand from = 0.0, to = Time.now
  t = Time.at(from + rand * (to.to_f - from.to_f))
  out = t.strftime('%m-%d-%Y')
  return out
end

def gencsv(row_count)
  out = CSV.generate_line(["company name","date","description"])

  (1..row_count).each do |number|
    out += CSV.generate_line([generate_code(10), time_rand(), generate_code(32)])
  end
    return out
end

File.write('out.csv', gencsv(8))
