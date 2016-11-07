# Blackjack Advisor

This is a readme for the blackjack program!


Although Blackjack is a game of chance, it is simple enough that the mathematically optimal next move can be given for any hand. Don't worry, though; I won't be asking you to calculate them. Your goal for this assignment is to store the set of optimal moves for a 1 deck blackjack hand, ask the user for his or her current hand (and the dealer's up card), then give the user his or her optimal move.

The set of optimal moves can be found here. For normal mode, use the default settings that occur on this page when you load it (1 deck, etc).

Just to be clear, you do NOT have to understand the full rules of Blackjack to complete this assignment. Normal mode is only asking for advice on your FIRST decision, so please don't worry about what happens after you choose "Hit." Here's one more hint: in this limited scenario, your hand is soft if you have a single Ace and hard if you do not (a pair is a pair regardless of whether they are Aces).

Your program must use hashes or arrays within a hash (at least) to solve this problem.

The prompts to the user should go something like this:

Please enter your first card:
(user enters 9)
Please enter your second card:
(user enters 9)
Please enter the dealer's card:
(user enters 7)
Your optimal move is to stand.
You can either allow the user to enter J, Q, or K for Jack, Queen, or King, respectively, or you can expect the user to enter a 10 for any of these. However, the user should have to enter A for an Ace.

-------------------------------------------
