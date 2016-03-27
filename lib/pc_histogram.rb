class PcHistogram
  def initialize(histogram)
    @histogram = histogram
  end

  def call
    histogram.collect do |i|
      [i[0], i[1]/dataset_size.to_f]
    end
  end

  private

  attr_reader :histogram

  def dataset_size
    if @dataset_size
      @dataset_size
    else
      @dataset_size = 0
      histogram.each do |i|
        @dataset_size += i[1]
      end
      @dataset_size
    end
  end
end
