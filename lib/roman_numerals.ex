defmodule RomanNumerals do
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
    cond do
      div(number, 1000) > 0 -> "M" <> numeral(number - 1000)
      div(number, 900) > 0 -> "CM" <> numeral(number - 900)
      div(number, 500) > 0 -> "D" <> numeral(number - 500)
      div(number, 400) > 0 -> "CD" <> numeral(number - 400)
      div(number, 100) > 0 -> "C" <> numeral(number - 100)
      div(number, 90) > 0 -> "XC" <> numeral(number - 90)
      div(number, 50) > 0 -> "L" <> numeral(number - 50)
      div(number, 40) > 0 -> "XL" <> numeral(number - 40)
      div(number, 10) > 0 -> "X" <> numeral(number - 10)
      number == 9 -> "IX"
      div(number, 5) > 0 -> "V" <> numeral(number - 5)
      number == 4 -> "IV"
      div(number, 1) > 0 -> "I" <> numeral(number - 1)
      number == 0 -> ""
    end
  end
end
