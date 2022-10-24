require "pry"

class Person
    attr_reader :name
    attr_accessor :bank_account
    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    # def happiness=(happiness)
    #     @happiness = happiness <= 10 ? happiness >= 0 ? happiness : 0 : 10
        
    # end
    def happiness=(happiness)
        if happiness <= 10
            if happiness >= 0
                @happiness = happiness
            else 
                @happiness = 0
            end
        else 
            @happiness = 10
        end
    end

    def happiness
        @happiness
    end

    def hygiene=(hygiene)
        @hygiene = hygiene <= 10 ? hygiene >= 0 ? hygiene : 0 : 10
    end

    def hygiene
        @hygiene
    end
    def happy?
        self.happiness >7 ? true : false
    end
    def clean?
        self.hygiene >7 ? true : false
    end 
    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end
    def call_friend(person)
        person.happiness += 3
        self.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person, topic)
        case topic
        when "politics"
            person.happiness -= 2
            self.happiness -= 2 
            "blah blah partisan blah lobbyist"
        when "weather"
            person.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            'blah blah blah blah blah'
        end
    end
end
# binding.pry
