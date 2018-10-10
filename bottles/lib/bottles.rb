class Bottles
    def sing
        verses(99,0)
    end
    def verses(start,finish)
            start.downto(finish).map { |n| verse(n) }.join("\n")
    end
    def verse(n)
        bottle = BottleNumber.for(n)
            <<~VERSE
            #{bottle.amount_of_container.capitalize} of beer on the wall, #{bottle.amount_of_container} of beer.
            #{bottle.action}, #{bottle.successor.amount_of_container} of beer on the wall.
            VERSE
    end
    private
    class BottleNumber
        def self.for(n)
            case n
            when 0
                BottleZero.new(n)
            when 1
                BottleOne.new(n)
            else
                BottleNumber.new(n)
            end
        end
        attr_accessor :number
        def initialize(n)
            @number = n
        end
        def amount_of_container
            "#{amount} #{container}"
        end
        def successor
            BottleNumber.for(@number-1)
        end
        def container
            "bottles"
        end
        def describe
            "one"
        end
        def amount
            @number.to_s
        end
        def action
            "Take #{describe} down and pass it around"
        end
    end
    class BottleZero < BottleNumber
        def successor
            BottleNumber.for(99)
        end
        def amount
            "no more"
        end
        def action
            "Go to the store and buy some more"
        end
    end
    class BottleOne < BottleNumber
        def container
            "bottle"
        end
        def describe
            "it"
        end
    end
end
