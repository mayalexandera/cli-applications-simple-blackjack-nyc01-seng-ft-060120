def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  return total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  display_card_total(deal_card() + deal_card())
end

def hit?(curr_card)
  prompt_user()
  result = get_user_input()
  card_total = curr_card
  
  if result == 's'
    return curr_card
  elsif result == "h"
    curr_sum = card_total + deal_card()
    return curr_sum
  else
    invalid_command()
    prompt_user()
  end
end

def invalid_command
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  curr_sum = initial_round()
  until curr_sum > 21
    hit?()
    display_card_total(number)
  elsif 
end
    
