require 'astrolabe/version'

module Astrolabe
  autoload :Position, 'astrolabe/position'
  autoload :WesternTropical, 'astrolabe/western_tropical'

  class << self
    delegate_method Astrolabe::WesternTripical.keys, to: Astrolabe::WesternTropical
  end
end
