# Build a simple guessing game

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# Pseudocode

# Input: a number answer
# Output: whether guesses are correct, higher or lower than the answer
# Steps:
# Step 1 - set up class GuessingGame to take 1 argument, which is the answer
# Step 2 - set up initialize method that will contain the instance variables which will be used accross the instance methods
# Step 3 - set up a guess method with a guess argument to run on the answer and tell us whether the guess is higher, lower or equal to the answer
# Step 4 - set up a solved? methods to see whether the guess equals the answer


# Initial Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @guess > @answer
      return :high
    elsif @guess < @answer
      return :low
    elsif @guess == @answer
      return :correct
    end
  end

   def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  end
end

game = GuessingGame.new(10)
game.solved?
game.guess(5)
game.guess(20)
game.solved?
game.guess(10)
game.solved?

# Refactored Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    return :high if @guess > @answer
    return :low if @guess < @answer
    return :correct if @guess == @answer
  end

  def solved?
    @guess == @answer ? true : false
  end
end

# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# Instance methods are defined inside a class and are intended to be used by all instances of the class. Instance variables are also defined within a class and can be used repeatedly within any methods of its class.
# When should you use instance variables? What do they do for you?
# Instance variables should be used when the variable will be used repeatedly in a class.
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Control flow is how Ruby chooses a path through a program. It was not difficult establishing flow control in this challenge because it was fairly straightforward in that we had to evaluate whether the guess was higher, lower or equal to the anwer.
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# I think we were supposed to use symbols because it uses less of the computer's resources and using a string to represent high, low or correct would be superfluous. Also, the symbols were only going to represent one thing throughout the code, namely the relation of the guess to the answer. Thus, its acceptable that symbols are immutable. Also, since there is not reason to change high, low or correct, it makes sense that they should be immutable.