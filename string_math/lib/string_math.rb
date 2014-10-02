require 'pry'
def compute_math(str)
  compute = []
  str_array = str.split
  ctr = 0
  while str_array.length != 0 
    binding.pry
    if str_array[ctr] == "*"
      compute << str_array[ctr-1].to_f * str_array[ctr+1].to_f
      str_array.delete_at(ctr-1)
      str_array.delete_at(ctr+1)
      str_array.delete_at(ctr)
    elsif str_array[ctr] == "/"
      compute << str_array[ctr-1].to_f / str_array[ctr+1].to_f
      str_array.delete_at(ctr-1)
      str_array.delete_at(ctr+1)
      str_array.delete_at(ctr)
    elsif str_array[ctr] == "+"
      compute << str_array[ctr-1].to_f + str_array[ctr+1].to_f
      str_array.delete_at(ctr-1)
      str_array.delete_at(ctr+1)
      str_array.delete_at(ctr)
    elsif str_array[ctr] == "-"
      compute << str_array[ctr-1].to_f - str_array[ctr+1].to_f
      str_array.delete_at(ctr-1)
      str_array.delete_at(ctr+1)
      str_array.delete_at(ctr)
    else 
      compute << str_array[ctr]
      str_array.delete_at(ctr)
    end
    ctr += 1
  end
end
