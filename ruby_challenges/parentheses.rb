def check_valid_parentheses(parentheses_string)
  parentheses = parentheses_string.split('')
  count_direct_pairs(parentheses)
end

def count_direct_pairs(parentheses, current_index = 0, total = 0)
  if !parentheses[current_index + 1]
    puts "Total number of direct parenthetical paris is: #{total}"
    return total
  else
    if parentheses[current_index] == '('
      if parentheses[current_index + 1] == ')'
        total += 2
        current_index += 1
        count_direct_pairs(parentheses, current_index, total)
      else
        current_index += 1
        count_direct_pairs(parentheses, current_index, total)
      end
    else
      current_index += 1
      count_direct_pairs(parentheses, current_index, total)
    end
  end
end

# Base Case
    # Once next is nil
  # Recursive Case
    # Is current_parentheses an open parens?
      # If next_parentheses is a close parentheses
        # Add 2 to total_valid_parentheses
        # Add 1 to index
        # Call recursively
      # Else
        # Add 1 to index
        # Call recursively

check_valid_parentheses("())") # => 2
check_valid_parentheses("()())") # => 4
check_valid_parentheses("(()())") # => 4
check_valid_parentheses(")(((") # => 0
check_valid_parentheses("") # => 0
