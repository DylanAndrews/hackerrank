require 'pry'
require 'json'
require 'stringio'

# Complete the hourglassSum function below.
class HourGlasses
  def initialize(hour_glass_array:)
    @hour_glass_array =hour_glass_array
    @top_rows = []
    @bottom_rows = []
    @middle_rows = []
    @hour_glass_sums = []
  end

  def get_max_hourglass_sum
    capture_top_rows
    capture_bottom_rows
    capture_middle_rows
    capture_hour_glass_sums

    puts @hour_glass_sums.max
  end

  private
  def capture_hour_glass_sums
    16.times do |i|
      hour_glass = @top_rows[i] + @bottom_rows[i] + @middle_rows[i]
      @hour_glass_sums << hour_glass.sum
    end
  end

  def capture_top_rows
    @hour_glass_array[0..3].each do |ary|
      ary.each_with_index do |num, index|
        if index < 4
          @top_rows << ary[index..index + 2]
        end
      end
    end
  end

  def capture_middle_rows
    @hour_glass_array[1..4].each do |ary|
      ary.each_with_index do |num, index|
        if index > 0 && index < 5
           @middle_rows << [num]
        end
      end
    end
  end

  def capture_bottom_rows
    @hour_glass_array[2..5].each do |ary|
      ary.each_with_index do |num, index|
        if index < 4
          @bottom_rows << ary[index..index + 2]
        end
      end
    end
  end
end

def hourglassSum(arr)
  HourGlasses.new(hour_glass_array: arr).get_max_hourglass_sum
end

arr = [
  [1, 1, 1, 0, 0, 0],
  [0, 1, 0, 0, 0, 0],
  [1, 1, 1, 0, 0, 0],
  [0, 0, 2, 4, 4, 0],
  [0, 0, 0, 2, 0, 0],
  [0, 0, 1, 2, 4, 0],
]

result = hourglassSum(arr)
