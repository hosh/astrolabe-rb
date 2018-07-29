require 'rlet'
require 'rlet/lazy_options'

module Astrolabe
  class Position
    include Let
    include RLet::LazyOptions

    # Inputs
    let(:degrees) { Astrolabe::Degrees.new(options[:degrees], options[:minutes], options[:seconds]) }

    # Outputs

  end
end
