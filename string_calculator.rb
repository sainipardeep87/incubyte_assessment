class StringCalculator

    def add(str)
        return 0 if str.length.zero?
        return str.split(',').map(&:to_i).inject(:+)
    end
end