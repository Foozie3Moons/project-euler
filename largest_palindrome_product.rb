p_num_1 = 999
p_num_2 = 999
palendrome = false
product = p_num_1 * p_num_2
combinations_checked = []
combinations_checked.push(product)
while palendrome == false
  product = p_num_1 * p_num_2
  if combinations_checked.include?(product)
    p_total_string = product.to_s
    if p_total_string.length == 6
      if p_total_string[0] == p_total_string[5]
        if p_total_string[1] == p_total_string[4]
          if p_total_string[2] == p_total_string[3]
            puts "---"
            puts "p_num_1: #{p_num_2}"
            puts "p_num_2: #{p_num_2}"
            puts "product: #{product}"
            puts "---\n"
            palendrome = true
          else
            p_num_1 - 1
          end
        else
          p_num_1 - 1
        end
      else
        p_num_1 -1
      end
    elsif p_total_string.length == 5
      if p_total_string[0] == p_total_string[4]
        if p_total_string[1] == p_total_string[3]
          puts "---"
          puts "p_num_1: #{p_num_2}"
          puts "p_num_2: #{p_num_2}"
          puts "product: #{product}"
          puts "---\n"
          palendrome = true
        else
          p_num_1 - 1
        end
      else
        p_num_1 - 1
      end
    else
      p_num_1 -1
    end
    p_num_1 -1
    if p_num_1 < 100
      p_num_1 = 999
      p_num_2 = 998
    end
    puts "pushed"
    combinations_checked.push(product)
  else
    puts "skipped"
  end
end
