load 'wl.rb'

class Game

      def initialize(problem)
            @problem = problem
            @solution_array = []
      end


      def first_letter
            for i in ("a".."z") do
                  new_word = @problem.split("")
                  new_word[0] = i 
                  if FOUR_LETTER_WORDS.include?(new_word.join("")) && new_word.join("") != @problem
                        @solution_array << new_word.join("")
                  end
            end
      end

      def second_letter
            for i in ("a".."z") do
                  new_word = @problem.split("")
                  new_word[1] = i 
                  if FOUR_LETTER_WORDS.include?(new_word.join("")) && new_word.join("") != @problem
                        @solution_array << new_word.join("")
                  end
            end
      end

      def third_letter
            for i in ("a".."z") do
                  new_word = @problem.split("")
                  new_word[2] = i 
                  if FOUR_LETTER_WORDS.include?(new_word.join("")) && new_word.join("") != @problem
                        @solution_array << new_word.join("")
                  end
            end
      end

      def fourth_letter
            for i in ("a".."z") do
                  new_word = @problem.split("")
                  new_word[3] = i 
                  if FOUR_LETTER_WORDS.include?(new_word.join("")) && new_word.join("") != @problem
                        @solution_array << new_word.join("")
                  end
            end
      end

      def check_all
            @solution_array = []
            first_letter
            second_letter
            third_letter
            fourth_letter
            @solution_array
      end

      def check_length (length)
            FOUR_LETTER_WORDS.each do |word|
                  @solution_array = []
                  @problem = word
                  check_all
                  if @solution_array.length == (length)
                        puts word
                  end
            end
      end

      def steps (number)
            if number == 1
                  @solution_array = []
                  first_letter
                  puts @solution_array.length
            elsif number == 2
                  @solution_array = []
                  first_letter
                  second_letter
                  puts @solution_array.length
            elsif number == 3
                  @solution_array = []
                  first_letter
                  second_letter
                  third_letter
                  puts @solution_array.length
            end
      end
end

#get problem word
# replace first letter of problem word with random alphabet
# save to new array
# search array for the new word
# return with any match
# replace second letter

first_problem = Game.new("care")
puts first_problem.check_all
puts first_problem.check_all.length
first_problem.steps(3)


