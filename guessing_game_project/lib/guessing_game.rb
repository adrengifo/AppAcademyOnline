class GuessingGame ()
    def initialize (min, max)
        @min = min
        @max = max
        @secret_num = rand (min..max)
        @num_attempts = 0
        @game_over = false
    end

    def ask_user
        puts "enter a number"
        number = gets.chomp.to_i
        check_num(number)
    end

    def num_attempts
        return @num_attempts
    end

    def game_over?
        return @game_over
    end

    def check_num (guess)
        @num_attempts += 1
        if guess == @secret_num
            @game_over = true
            puts "you win"
        elsif guess > @secret_num
            puts "too big"
        else 
            puts "too small"
        end
        
    end
end
