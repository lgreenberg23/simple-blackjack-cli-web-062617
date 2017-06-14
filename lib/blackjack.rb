require 'pry'

card_sum = 0

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
  #card_sum = card + card_sum
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_sum)
  # code #end_game here
  puts "Sorry, you hit #{card_sum}. Thanks for playing!"
end

def initial_round
  card_1 = deal_card
  card_2 = deal_card
  card_sum = card_1 + card_2
  display_card_total(card_sum)
  card_sum
  # code #initial_round here
end

def hit?(card_sum)
  prompt_user
  input = get_user_input

  if input != 'h' && input != 's'
    invalid_command
    prompt_user
    input = get_user_input
  elsif input == 'h'
    new_card = deal_card
    card_sum = card_sum + new_card
  else
  end
card_sum
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_sum = initial_round
  until card_sum > 21
    card_sum = hit?(card_sum)
    display_card_total(card_sum)
  end
  end_game(card_sum)
  # code runner here
end
