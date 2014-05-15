class BracketValidator

  def self.validate(string)
    valid_bracks = {
      "(" => ")",
      "[" => "]",
      "{" => "}"
    }
    brack_arr = string.split(" ")
    last_inner_open_index = 0
    last_inner_open_char = ""
    brack_arr.each_with_index do |brack, index|
      if valid_bracks.has_key?(brack)
        last_inner_open_index = index
        last_inner_open_char = brack
      end
    end
    if brack_arr[last_inner_open_index + 1] != valid_bracks[last_inner_open_char]
      return false
    else
      brack_arr.delete_at(last_inner_open_index)
      brack_arr.delete_at(last_inner_open_index)
      if brack_arr.length != 0
        validate(brack_arr.join(" "))
      end
    end
    true
  end

end
