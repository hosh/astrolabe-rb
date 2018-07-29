module Astrolabe
  module WesternTropical
    SIGNS = {
      aries:       0,
      taurus:      30,
      gemini:      60,
      cancer:      90,
      leo:         120,
      virgo:       150,
      libra:       180,
      scorpio:     210,
      sagittarius: 240,
      capricorn:   270,
      aquarius:    300,
      pisces:      330
    }.freeze

    #class << self
    #  SIGNS.each do |sign, start_degree|
    #    define_method(sign) do |degrees = 0, minutes = 0, seconds = 0|
    #      Astrolabe::Position.new(degrees: start_degree + degrees, minutes: minutes, seconds: seconds)
    #    end
    #  end
    #end
  end
end
