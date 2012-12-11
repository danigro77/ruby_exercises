x = 1
while x != 2
  b = gets.chomp
  if b == ""
    b = gets.chomp
    if b == ""
      Process.exit
    end
  end

  if b == b.upcase
    puts "NO NOT SINCE 1944!!"
  else  
    puts "hunh?!?"
  end 
end
