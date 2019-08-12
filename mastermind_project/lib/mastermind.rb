require_relative "code"

class Mastermind
    def initialize(len)
        @secret_code = Code.random(len)
    end

    def print_matches(code_inst)
        puts "Exact Matches: #{@secret_code.num_exact_matches(code_inst)}"
        puts "Near Matches: #{@secret_code.num_near_matches(code_inst)}"
    end

    def ask_user_for_guess
        puts "Enter a code"
        guess = gets.chomp
        # Code.from_string(guess)
        guess_inst = Code.from_string(guess)
        print_matches(guess_inst)
        return @secret_code == guess_inst
    end
end
