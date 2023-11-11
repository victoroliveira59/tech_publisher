# frozen_string_literal: true
module AccountsHelper
  def calculate_dv(number, digit)
    weight = [2, 3, 4, 5, 6, 7]
    products = number.reverse.chars.map.with_index do |element, index|
      element.to_i * weight[index]
    end
    sums = products.sum

    if sums % 11 == 0
      0
      else sums % 11 == 1
      'p'
      end
    digit_val = 11 - (sums % 11)

    if digit_val.to_s == digit.to_s
      'digit is valid'
    else
      'digit invalid'
    end
  end
end


