# def is_valid_substring(parentheses)
#   return false if parentheses.length % 2 != 0

#   stack = []
#   parentheses.each_char do |character|
#     if character == '('
#       stack.push(character)
#     else
#       stack.pop
#     end
#   end
  
#   return true if stack.empty?
#   return false
# end

# def get_largest_valid_substring_from_left(parentheses)
#   if is_valid_substring(parentheses)
#     return parentheses.length
#   else
#     substring = parentheses[1..-1]
#     get_largest_valid_substring_from_left(substring)
#   end
# end

# def get_largest_valid_substring_from_right(parentheses)
#   if is_valid_substring(parentheses)
#     return parentheses.length
#   else
#     substring = parentheses[0..-2]
#     get_largest_valid_substring_from_right(substring)
#   end
# end

# def get_largest_valid_substring_count(parentheses)
#   right_result = get_largest_valid_substring_from_right(parentheses)
#   left_result = get_largest_valid_substring_from_left(parentheses)
#   if right_result >= left_result
#     puts right_result
#     return right_result
#   else
#     puts left_result
#     return left_result
#   end
# end

# Solution from leetcode using a stack: https://leetcode.com/problems/longest-valid-parentheses/solution/#approach-3-using-stack

def get_largest_valid_substring_count(parentheses)
  maximum_answer = 0
  stack = [-1]
  parentheses.each_char.with_index do |parenthesis, index|
    if parenthesis == '('
      stack.push(index)
    else
      stack.pop
      if stack.empty?
        stack.push(index)
      else
        maximum_answer = [maximum_answer, index - stack.last].max
      end
    end
  end
  puts maximum_answer
  return maximum_answer
end

get_largest_valid_substring_count("())") # => 2
get_largest_valid_substring_count("()())") # => 4
get_largest_valid_substring_count("()()))") # => 4
get_largest_valid_substring_count("(()()") # => 4
get_largest_valid_substring_count("(()())") # => 6
get_largest_valid_substring_count(")(((") # => 0
get_largest_valid_substring_count("") # => 0
get_largest_valid_substring_count(")()())") # => 4
