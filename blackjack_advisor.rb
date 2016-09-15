J = 10
Q = 10
K = 10

card_array = [0.to_i, 2, 3, 4, 5, 6, 7, 8, 9, 10]
first_card = {
  card_1: "2",
  card_2: "3",
  card_3: "4",
  card_4: "5",
  card_5: "6",
  card_6: "7",
  card_7: "8",
  card_8: "9",
  card_9: "10",
  card_10: "A" #remember this is equal to 0 as far as Ruby is concerned
}

second_card = {
  card_1: "2",
  card_2: "3",
  card_3: "4",
  card_4: "5",
  card_5: "6",
  card_6: "7",
  card_7: "8",
  card_8: "9",
  card_9: "10",
  card_10: "A" #remember this is equal to 0 as far as Ruby is concerned
}

 print second_card
dealer_array = [2, 3, 4, 5, 6, 7, 8, 9, 10, 0.to_i]

optimal_move = {

}


print "Please enter your first card: ≈ "
user_first_card = gets.chomp.to_i
if card_array.include? user_first_card
else
  puts "This is not a card.  If you entered a facecard please enter 10!"
end

print "Please enter your second card: ≈ "
user_second_card = gets.chomp.to_i
if card_array.include? user_second_card
else
  puts "This is not a card.  If you entered a facecard please enter 10!"
end

user_hand = user_first_card + user_second_card
if user_hand = 21
  print "Stand you dummy! You've beaten the dealer!"
elsif user_hand = [17..20]
  

print "Your hand is a #{user_hand}, good start! Here's what to do: "
