require 'pry'
require 'csv'
require_relative 'lib/simulation'
require_relative 'lib/histogram'
require_relative 'lib/pc_histogram'

PROBABILITY = 0.01
SAMPLE_SIZE = 100000
ITERATIONS = 1000
vals = (0..ITERATIONS).collect do |i|
  Simulation.new(PROBABILITY, SAMPLE_SIZE).call
end

raw_histogram = Histogram.new(vals).call
pc_histogram = PcHistogram.new(raw_histogram).call

pc_histogram.each do |i|
  puts "#{i[0]}, #{i[1]}"
end
