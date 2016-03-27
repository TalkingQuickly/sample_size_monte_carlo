class HistogramHash
  def self.generate
    res = {}
    inc = 0.001
    pos = 0
    (0..1000).each do |i|
      res[pos] = 0
      pos += inc
    end
    res
  end
end
