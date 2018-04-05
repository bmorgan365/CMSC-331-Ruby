# houses methods for #1 and #2
class OtherProbs
  def trim_even(str)
    result = ""
    (0...str.size).each do |i|
      result << str[i] if i.even?
    end
    result
  end

  def sum_arr_elem(arr)
    size = arr.size
    mod = arr.[](3..size)
    result = 0
    mod.each do |i|
      result += i
    end
    result
  end
end