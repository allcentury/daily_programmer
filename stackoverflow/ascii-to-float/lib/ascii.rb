ASCII_NUM_START = 48 # start of ascii code for 0 
require 'pry'


def ascii_to_i(int_as_str) 

  array_ascii = int_as_str.bytes 
  converted_arr = array_ascii.map {|ascii| ascii - ASCII_NUM_START } 
  converted_arr.inject { |sum, n| sum * 10 + n } 
end 

def ascii_to_f(float_as_str) 
  int_split = float_as_str.split(".")
  results = []
  int_split.each { |val| results << ascii_to_i(val) }
  results[0] + (results[1] / (10.0 ** int_split.last.length))
end
