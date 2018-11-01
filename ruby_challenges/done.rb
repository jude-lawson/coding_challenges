def done_check(string = "D")
  if string == "DONE"
    puts string
    return string
  elsif string == "D"
    puts string
    string = string + "O"
    done_check(string)
  elsif string == "DO"
    puts string
    string = string + "N"
    done_check(string)
  elsif string == "DON"
    puts string
    string = string + "E"
    done_check(string)
  end
end

done_check
