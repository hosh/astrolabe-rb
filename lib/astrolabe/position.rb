require 'rlet'
require 'rlet/lazy_options'

module Astrolabe
  class Position
    include Let
    include RLet::LazyOptions

    # Inputs
    let(:raw_degrees) { options[:degrees] }
    let(:raw_minutes) { options[:minutes] }
    let(:raw_seconds) { options[:seconds] }

    # Outputs

  end
end
