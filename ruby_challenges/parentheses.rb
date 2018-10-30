def get_largest_valid_substring_from_left(parentheses)
  if is_valid_substring(parentheses)
    return parentheses.length
  else
    substring = parentheses[1..-1]
    get_largest_valid_substring_from_left(substring)
  end
end

def get_largest_valid_substring_from_right(parentheses)
  if is_valid_substring(parentheses)
    return parentheses.length
  else
    substring = parentheses[0..-2]
    get_largest_valid_substring_from_right(substring)
  end
end

def get_largest_valid_substring_count(parentheses)
  right_result = get_largest_valid_substring_from_right(parentheses)
  left_result = get_largest_valid_substring_from_left(parentheses)
  if right_result >= left_result
    puts right_result
    return right_result
  else
    puts left_result
    return left_result
  end
end

def is_valid_substring(parentheses)
  return false if parentheses.length % 2 != 0

  stack = []
  parentheses.each_char do |character|
    if character == '('
      stack.push(character)
    elsif stack.empty? && character == ')'
      return false
    else
      stack.pop
    end
  end
  
  return true if stack.empty?
  return false
end

get_largest_valid_substring_count("())") # => 2
get_largest_valid_substring_count("()())") # => 4
get_largest_valid_substring_count("()()))") # => 4
get_largest_valid_substring_count("(()()") # => 4
get_largest_valid_substring_count("(()())") # => 6
get_largest_valid_substring_count(")(((") # => 0
get_largest_valid_substring_count("") # => 0
