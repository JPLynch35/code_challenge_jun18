class Chocolates
  def initialize(all_scores)
    @all_scores = all_scores
    @chocolate_count = []
  end

  def find_chocolate_count
    find_first_set
    @all_scores.each_with_index do |_, index|
      if index > 1
        if @all_scores[index] > @all_scores[index - 1]
          @chocolate_count << @chocolate_count[index - 1] + 1
        elsif @all_scores[index] < @all_scores[index - 1] && @chocolate_count[index - 1] > 1
          @chocolate_count << 1
        elsif @all_scores[index] < @all_scores[index - 1] && @chocolate_count[index - 1] == 1
          @chocolate_count << 1
          increase_previous_chocolates(index)
        else
          @chocolate_count << @chocolate_count[index - 1]
        end
      end
    end
    @chocolate_count.sum
  end

  def find_first_set
    focused_scores = [@all_scores[0], @all_scores[1]]
    if focused_scores[0] < focused_scores[1]
      @chocolate_count << 1
      @chocolate_count << 2
    elsif focused_scores[0] > focused_scores[1]
      @chocolate_count << 2
      @chocolate_count << 1
    else
      @chocolate_count << 1
      @chocolate_count << 1
    end
  end

  def increase_previous_chocolates(index)
    @chocolate_count[index - 1] = @chocolate_count[index - 1] + 1
    index -= 1
    while @chocolate_count[index - 1] >= @chocolate_count[index]
      @chocolate_count[index - 1] = @chocolate_count[index - 1] + 1
      index -= 1
      break if index == 0
    end
    unless @chocolate_count[index] - @chocolate_count[index + 1] < 2
      @chocolate_count[index] -= 1
    end
  end
end
