require "stringer/version"
module Stringer
    def self.spacify *strings
      string = ""
      strings.each do |s|
          string += " " + s
      end
      string.slice!(0)
      string
    end
    def self.minify string, length
      if string.length > length
        string = string.slice!(0..9) + "..."
      end
      string
    end
    def self.replacify string, old, new
      if string.include? old
        array = string.partition(old)
        string = ''
        array.each do |i|
          if i == old
            i.replace new
          end
          string += i
        end
      end
      string
    end
    def self.tokenize string
      array = string.split(' ')
    end
    def self.removify string, remove
      if string.include? remove
        array = string.split(' ')
        string = ''
        array.each do |i|
          if i != remove
            string += " " + i
          end
        end
        string.slice!(0)
      end
      string
    end
end
