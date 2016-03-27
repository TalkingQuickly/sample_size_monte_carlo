class Histogram
  def initialize(vals)
    @vals = vals
  end

  def call
    lower_bound = 0
    inc = 0.01
    vals = (0..100).collect do
      a = [lower_bound,vals_in_range(lower_bound, lower_bound + inc)]
      lower_bound += inc
      a
    end
    vals
  end

  private

  def vals_in_range(lower, upper)
    vals.select{|i| (i >= lower.round(2) && i < upper.round(2)) }.count
  end

  attr_reader :vals

end
