class Room
    def initialize (num)
        @capacity = num
        @occupants = []
    end

    def capacity
        return @capacity
    end

    def occupants
        return @occupants
    end

    def full?
        if occupants.length < @capacity
            return false
        end
        return true
    end

    def available_space
        return @capacity - occupants.length
    end

    def add_occupant (guest)
        if full? 
            return false
        else
            @occupants << guest
            return true
        end
    end
end
