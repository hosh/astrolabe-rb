# -*- coding: utf-8 -*-
require 'rlet'
require 'rlet/lazy_options'

module Astrolabe
  class Degrees
    include Let
    include RLet::LazyOptions
    include Comparable

    attr_reader :degrees, :minutes, :seconds

    def initialize(degrees, minutes = 0, seconds = 0)
      @degrees = degrees
      @minutes = minutes
      @seconds = seconds
    end

    def +(x)
      must_be_degrees! x
      Astrolabe::Degrees.new(degrees + x.degrees, minutes + x.minutes, seconds + x.seconds).normalized
    end

    def -(x)
      must_be_degrees! x
      Astrolabe::Degrees.new(degrees - x.degrees, minutes - x.minutes, seconds - x.seconds).normalized
    end

    def -@
      Astrolabe::Degrees.new(-degrees, -minutes, -seconds).normalized
    end

    def inspect
      "#{degrees}\u00B0 #{minutes}'#{seconds}\""
    end

    # 29 0'0" < 30 0'0"
    # 31 0'0" > 30 0'0"
    # 30 0'0" == 30 0'0"
    # 30 1'0" > 30 0'0"
    # 30 0'1" > 30 0'0"
    # 29 59'59 < 30 0'0"
    # This assumes everything has been normalized
    def <=>(x)
      must_be_degrees! x
      if self.degrees < x.degrees then
        -1
      elsif self.degrees > x.degrees then
        1
      elsif self.degrees == x.degrees && self.minutes > x.minutes then
        1
      elsif self.degrees == x.degrees && self.minutes == x.minutes && self.seconds > x.seconds then
        1
      else
        0
      end
    end

    def normalized
      Astrolabe::Degrees.new(normalized_degrees, normalized_minutes, normalized_seconds)
    end

    # Intermediate
    let(:normalized_degrees) { (degrees.to_i + extra_degrees) % 360 }
    let(:normalized_minutes) { (minutes.to_i + extra_minutes) % 60 }
    let(:normalized_seconds) { seconds.to_i % 60 }

    let(:extra_degrees)      { (minutes.to_i + extra_minutes) / 60 }
    let(:extra_minutes)      { seconds.to_i / 60 }

    private

    def must_be_degrees!(x)
      raise ArgumentError, 'Can only add Astrolabe::Degrees' unless x.is_a?(Astrolabe::Degrees)
    end
  end
end

