class StringCalculator

    def add(str)
        return 0 if str.length.zero?
        str = str.gsub(/\n/, ',')
        str = str.gsub('//', '')
        str = str.gsub(/:/, ',')
        error = negative_number_validation(str)
        return error.join(',') if error.any?
        return str.split(',').map(&:to_i).reject{|n| n > 1000}.inject(:+)
    end

    def negative_number_validation(str)
        negetives = str.split(',').map(&:to_i).select{|n| n < 0}
        negetives.map{|n| "Negative number #{n} is not supported"} 
    end
end