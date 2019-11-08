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

  def arabic(numeral) when is_binary(numeral) do
    if numeral == "" do
      0
    else
      codepoints = String.codepoints(numeral)
      [hd | rest] = codepoints

      case hd do
        "M" ->
          arabic(codepoints)

        "D" ->
          arabic(codepoints)

        "C" ->
          if List.first(rest) == "M" || List.first(rest) == "D" do
            arabic([hd <> hd(rest) | tl(rest)])
          else
            arabic(codepoints)
          end

        "L" ->
          arabic(codepoints)

        "X" ->
          if List.first(rest) == "C" || List.first(rest) == "L" do
            arabic([hd <> hd(rest) | tl(rest)])
          else
            arabic(codepoints)
          end

        "V" ->
          arabic(codepoints)

        "I" ->
          if List.first(rest) == "V" || List.first(rest) == "X" do
            arabic([hd <> hd(rest) | tl(rest)])
          else
            arabic(codepoints)
          end
      end
    end
  end

  def arabic([hd | tl]) do
    cond do
      hd == "M" -> 1000 + arabic(Enum.join(tl))
      hd == "CM" -> 900 + arabic(Enum.join(tl))
      hd == "D" -> 500 + arabic(Enum.join(tl))
      hd == "CD" -> 400 + arabic(Enum.join(tl))
      hd == "C" -> 100 + arabic(Enum.join(tl))
      hd == "XC" -> 90 + arabic(Enum.join(tl))
      hd == "L" -> 50 + arabic(Enum.join(tl))
      hd == "XL" -> 40 + arabic(Enum.join(tl))
      hd == "X" -> 10 + arabic(Enum.join(tl))
      hd == "IX" -> 9
      hd == "V" -> 5 + arabic(Enum.join(tl))
      hd == "IV" -> 4
      hd == "I" -> 1 + arabic(Enum.join(tl))
    end
  end

  def arabic([]) do
    0
  end
end
