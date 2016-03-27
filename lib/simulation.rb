class Simulation
  def initialize(probability, sample_size)
    @probability = probability
    @sample_size = sample_size.to_f
  end

  def call
    results.select{|i| i == true}.count / sample_size
  end

  private

  attr_reader :probability, :sample_size

  def results
    @results ||= (0..sample_size).collect do |i|
      get_val
    end
  end

  def get_val
    if rand < probability
      true
    else
      false
    end
  end
end
