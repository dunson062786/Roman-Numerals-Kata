defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals

  test "numeral returns empty string for 0" do
    assert RomanNumerals.numeral(0) == ""
  end

  test "numeral returns I for for 1" do
    assert RomanNumerals.numeral(1) == "I"
  end

  test "numeral returns II for 2" do
    assert RomanNumerals.numeral(2) == "II"
  end

  test "numeral returns III for 3" do
    assert RomanNumerals.numeral(3) == "III"
  end

  test "numeral returns IV for 4" do
    assert RomanNumerals.numeral(4) == "IV"
  end

  test "numeral returns V for 5" do
    assert RomanNumerals.numeral(5) == "V"
  end

  test "numeral returns VI for 6" do
    assert RomanNumerals.numeral(6) == "VI"
  end

  test "numeral returns IX for 9" do
    assert RomanNumerals.numeral(9) == "IX"
  end

  test "numeral returns XXVII for 27" do
    assert RomanNumerals.numeral(27) == "XXVII"
  end

  test "numeral returns XLVIII for 48" do
    assert RomanNumerals.numeral(48) == "XLVIII"
  end

  test "numeral returns LIX for 59" do
    assert RomanNumerals.numeral(59) == "LIX"
  end

  test "numeral returns XCIII for 93" do
    assert RomanNumerals.numeral(93) == "XCIII"
  end

  test "numeral returns CXLI for 141" do
    assert RomanNumerals.numeral(141) == "CXLI"
  end

  test "numeral returns CLXIII for 163" do
    assert RomanNumerals.numeral(163) == "CLXIII"
  end

  test "numeral returns CDII for 402" do
    assert RomanNumerals.numeral(402) == "CDII"
  end

  test "numeral returns DLXXV for 575" do
    assert RomanNumerals.numeral(575) == "DLXXV"
  end

  test "numeral returns CMXI 911" do
    assert RomanNumerals.numeral(911) == "CMXI"
  end

  test "numeral returns MXXIV for 1024" do
    assert RomanNumerals.numeral(1024) == "MXXIV"
  end

  test "numeral returns MMM for 3000" do
    assert RomanNumerals.numeral(3000) == "MMM"
  end

  test "arabic returns 0 for ''" do
    assert RomanNumerals.arabic("") == 0
  end

  test "arabic returns 1 for I" do
    assert RomanNumerals.arabic("I") == 1
  end

  test "arabic returns 2 for II" do
    assert RomanNumerals.arabic("II") == 2
  end

  test "arabic returns 3 for III" do
    assert RomanNumerals.arabic("III") == 3
  end

  test "arabic returns 4 for IV" do
    assert RomanNumerals.arabic("IV") == 4
  end

  test "arabic returns 5 for V" do
    assert RomanNumerals.arabic("V") == 5
  end

  test "arabic returns 6 for VI" do
    assert RomanNumerals.arabic("VI") == 6
  end

  test "arabic returns 9 for IX" do
    assert RomanNumerals.arabic("IX") == 9
  end

  test "arabic returns 27 for XXVII" do
    assert RomanNumerals.arabic("XXVII") == 27
  end

  test "arabic returns 48 for XLVIII" do
    assert RomanNumerals.arabic("XLVIII") == 48
  end

  test "arabic returns 59 for LIX" do
    assert RomanNumerals.arabic("LIX") == 59
  end

  test "arabic returns 93 for XCIII" do
    assert RomanNumerals.arabic("XCIII") == 93
  end

  test "arabic returns 141 for CXLI" do
    assert RomanNumerals.arabic("CXLI") == 141
  end

  test "arabic returns 163 for CLXIII" do
    assert RomanNumerals.arabic("CLXIII") == 163
  end

  test "arabic returns 402 for CDII" do
    assert RomanNumerals.arabic("CDII") == 402
  end

  test "arabic returns 575 for DLXXV" do
    assert RomanNumerals.arabic("DLXXV") == 575
  end

  test "arabic returns 911 for CMXI" do
    assert RomanNumerals.arabic("CMXI") == 911
  end

  test "arabic returns 1024 for MXXIV" do
    assert RomanNumerals.arabic("MXXIV") == 1024
  end

  test "arabic returns 3000 for MMM" do
    assert RomanNumerals.arabic("MMM") == 3000
  end

  test "arabic is reverse of numeral" do
    Enum.all?(1..3000, fn x -> x == RomanNumerals.arabic(RomanNumerals.numeral(x)) end)
  end
end
