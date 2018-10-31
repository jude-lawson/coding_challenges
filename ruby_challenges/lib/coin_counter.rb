class CoinCounter
  def self.smallest_combination(dollar_value, count = 0, record = {}, index = 0)
    possible = [25, 10, 5, 1]
    cents = get_cents(dollar_value)
    next_total = count + possible[index]

    if next_total < cents
      count += possible[index]
      record = update_record(possible[index], record)
      smallest_combination(dollar_value, count, record)
    elsif next_total > cents
      index += 1
      smallest_combination(dollar_value, count, record, index)
    else
      record = update_record(possible[index], record)
      return record
    end
    
    record
  end

  def self.update_record(cents_value, record)
    case cents_value
    when 25
      record[:quarters] += 1 if record[:quarters]
      record[:quarters] = 1 if !record[:quarters]
    when 10
      record[:dimes] += 1 if record[:dimes]
      record[:dimes] = 1 if !record[:dimes]
    when 5
      record[:nickels] += 1 if record[:nickels]
      record[:nickels] = 1 if !record[:nickels]
    when 1
      record[:pennies] += 1 if record[:pennies]
      record[:pennies] = 1 if !record[:pennies]
    end

    record
  end

  def self.get_cents(dollar_value_string)
    (dollar_value_string.to_f * 100).to_i
  end
end
