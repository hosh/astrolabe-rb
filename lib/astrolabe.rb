require 'astrolabe/version'

module Astrolabe
  autoload :Degrees,  'astrolabe/degrees'
  autoload :Position, 'astrolabe/position'
  autoload :WesternTropical, 'astrolabe/western_tropical'

  #class << self
  #  delegate_method Astrolabe::WesternTropical::SIGNS.keys, to: Astrolabe::WesternTropical
  #end
end
