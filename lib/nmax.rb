require "nmax/version"

module Nmax
  class Error < StandardError; end

  def self.parse(argv)
    STDIN.each_line&.reduce([]) do |result, line|
      result += line.scan(/[0-9]{1,1000}/).map(&:to_i)

      result.uniq.sort.reverse[0...argv.first.to_i]
    end
  end
end
