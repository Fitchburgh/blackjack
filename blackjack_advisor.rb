card_array = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", 11]
has_ace_arr = ["a", "A", "ACE", "11", "1", 1, 11, 0]
user_hand = 0

optimal_move_without_ace = {
  "hit" => {
    4 => [0, *2..10],
    5 => [0, *2..10],
    6 => [0, *2..10],
    7 => [0, *2..10],
    8 => [0, *2..4, *7..10],
    9 => [0, *7..10],
    10 => [0, 10],
    12 => [0, 2, 3, *7..10],
    13 => [0, *7..10],
    14 => [0, *7..10],
    15 => [0, *7..10],
    16 => [0, *7..10]
  },
  "stand" => {
    12 => [4, 5, 6],
    13 => [*2..6],
    14 => [*2..6],
    15 => [*2..6],
    16 => [*2..6],
    17 => [0, *2..6],
    18 => [0, *2..6],
    19 => [0, *2..6],
    20 => [0, *2..6],
    "A" => [0, *2..6]
  },
  "double_or_hit" => {
    8 => [5, 6],
    9 => [0, *2..6],
    10 => [0, *2..9],
    11 => [0, *2..10]
  }
}
optimal_move_with_ace = {
  "hit" => {
    13 => [0, 2, 3, *7..10],
    14 => [0, 2, 3, *7..10],
    15 => [0, 2, 3, *7..10],
    16 => [0, 2, 3, *7..10],
    17 => [0, *7..10],
    18 => [9, 10]
  },
  "stand" => {
    18 => [0, 2, 7, 8],
    19 => [0, *2..5, *7..10],
    20 => [0, *2..10]
    },
  "double_or_hit" => {
    13 => [*4..6],
    14 => [*4..6],
    15 => [*4..6],
    16 => [*4..6],
    17 => [*2..6]
  },
  "double_or_stand" => {
    18 => [*3..6],
    19 => [6]
  },
}

def get_optimal_move(user_hand, dealer_card, optimal_moves)
  optimal_moves.each do |optimal_move, user_vs_dealer|
    if user_vs_dealer.has_key?(user_hand)
      dealer_cards = user_vs_dealer[user_hand]
      if dealer_cards.include?(dealer_card)
        return optimal_move
      end
    end
  end
end

print "Please enter your first card => ≈ "
user_first_card = gets.chomp
if user_first_card == "A"
  user_first_card = 11
end

while !card_array.include?(user_first_card)
  puts "This is not a card.  If you entered a facecard please enter 10!"
  print "Please enter your first card => ≈ "
  user_first_card = gets.chomp
  if user_first_card == "A".downcase.to_i

  end
end

print "Please enter your second card => ≈ "

user_second_card = gets.chomp

if user_second_card.to_i + user_first_card.to_i == 21
  print "You've beaten the dealer! Rake in your dough!"
else
  while !card_array.include?(user_second_card)
    puts "This is not a card.  If you entered a facecard please enter 10!"
    print "Please enter your second card => ≈ "
    user_second_card = gets.chomp
  end



  if user_second_card == "A"
    user_second_card = 11
  end

  user_hand = user_first_card.to_i + user_second_card.to_i
  print "So you've got a #{user_hand}...What is the house showing: ≈ "
  dealer_card = gets.chomp.to_i

  if has_ace_arr.include?(dealer_card)
    puts "Better just stand..."
  elsif user_hand == 22
      print "Split those bad boys!"
  elsif user_hand != 22 && (user_first_card != 11 || user_second_card != 11)
    optimal_move = get_optimal_move(user_hand, dealer_card, optimal_move_with_ace)
    puts "Optimal Move: #{optimal_move}"
  elsif user_first_card == 11 || user_second_card == 11
    optimal_move = get_optimal_move(user_hand, dealer_card, optimal_move_without_ace)

    puts "Optimal Move: #{optimal_move}"
  end
end

# p "Your hand is #{user_hand}"




# break
# print "You've beaten the dealer! Rake in your dough!"
