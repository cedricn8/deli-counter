def line(katz_deli)
    number = katz_deli.size
    if number > 0
        string = "The line is currently:"
        katz_deli.each.with_index(1) do |name, index|
            string << " #{index}. #{name}"
        end
    else
        string = "The line is currently empty."
    end
    puts string
end

def take_a_number(katz_deli, new_name)
    number = katz_deli.size
    number += 1
    katz_deli << new_name
    puts "Welcome, #{new_name}. You are number #{number} in line."
end

def now_serving(katz_deli)
    number = katz_deli.size
    if number > 0
        name = katz_deli.first
        katz_deli.shift
        string = "Currently serving #{name}."
    else
        string = "There is nobody waiting to be served!"
    end
    puts string
end