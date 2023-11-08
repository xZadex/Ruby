# def guess_number(guess)
#     number = 25
#     if guess == number
#         return "You got it!"
#     elsif guess > number
#         return "Guess was too high!"
#     elsif guess < number
#         return "Guess was too low!"
#     end
# end


def guess_number(guess)
    number = 25
    unless guess == number
        return guess > number ? "Guess was too high!" : "Guess was too low!"
    end
    "You got it!"
end

puts guess_number(25)
puts guess_number(1)
puts guess_number(30)
