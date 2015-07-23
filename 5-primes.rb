def is_prime?(n)
    return false if n <= 1
    Math.sqrt(n)
        .to_i
        .downto(2)
        .each {|i| return false if n % i == 0}
    return true
end

def result(n)
    puts "The result of is_prime?(#{n.to_s}) is: #{is_prime?(n).to_s}"
end

100.times do |i|
    result(i)
end