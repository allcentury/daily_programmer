def select_meth(hash)
  hash.select { |key, val| hash[key] > 1 }
end

def reject_meth(hash)
  hash.reject { |key, val| val == 1}
end
