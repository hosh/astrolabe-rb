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

    # Intermediate

    let(:normalized_degrees) { (raw_degrees.to_i + extra_degrees) % 360 }
    let(:normalized_minutes) { (raw_minutes.to_i + extra_minutes) % 60 }
    let(:normalized_seconds) { raw_second.to_i % 60 }

    let(:extra_degrees)      { (raw_minutes.to_i + extra_minutes) / 60 }
    let(:extra_minutes)      { raw_second.to_i / 60 }
  end
end
