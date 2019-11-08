defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals

  test "returns empty string for 0" do
    assert RomanNumerals.numeral(0) == ""
  end

  test "returns I for for 1" do
    assert RomanNumerals.numeral(1) == "I"
  end

  test "returns II for 2" do
    assert RomanNumerals.numeral(2) == "II"
  end

  test "returns III for 3" do
    assert RomanNumerals.numeral(3) == "III"
  end

  test "returns IV for 4" do
    assert RomanNumerals.numeral(4) == "IV"
  end

  test "returns V for 5" do
    assert RomanNumerals.numeral(5) == "V"
  end

  test "returns VI for 6" do
    assert RomanNumerals.numeral(6) == "VI"
  end

  test "returns IX for 9" do
    assert RomanNumerals.numeral(9) == "IX"
  end

  test "returns XXVII for 27" do
    assert RomanNumerals.numeral(27) == "XXVII"
  end

  test "returns XLVIII for 48" do
    assert RomanNumerals.numeral(48) == "XLVIII"
  end

  test "returns LIX for 59" do
    assert RomanNumerals.numeral(59) == "LIX"
  end

  test "returns XCIII for 93" do
    assert RomanNumerals.numeral(93) == "XCIII"
  end

  test "returns CXLI for 141" do
    assert RomanNumerals.numeral(141) == "CXLI"
  end

  test "returns CLXIII for 163" do
    assert RomanNumerals.numeral(163) == "CLXIII"
  end

  test "returns CDII for 402" do
    assert RomanNumerals.numeral(402) == "CDII"
  end

  test "returns DLXXV for 575" do
    assert RomanNumerals.numeral(575) == "DLXXV"
  end

  test "returns CMXI 911" do
    assert RomanNumerals.numeral(911) == "CMXI"
  end

  test "returns MXXIV for 1024" do
    assert RomanNumerals.numeral(1024) == "MXXIV"
  end

  test "returns MMM for 3000" do
    assert RomanNumerals.numeral(3000) == "MMM"
  end
end
