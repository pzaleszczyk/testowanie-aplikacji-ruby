class ResistorColorDuo
    C2I = {"brown" => 1, "black" => 0, "blue" => 6, "grey" => 8, "yellow" => 4, "violet" => 7, "orange" => 3, "green" => 5}

    def self.value(stripes)
        10 * C2I[stripes[0]] + C2I[stripes[1]]
    end
end