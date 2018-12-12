require "stringer/version"
module Stringer
    def self.spacify *strings
        string = ""
        strings.each do |s|
            string += " " + s
        end
        string.strip
        # string
    end
    def self.minify string, num
      string = string.slice!(0...num)
      string << "..."
    end
    def self.replacify (string, word, replacement)
      string.gsub(word, replacement)
    end
    def self.tokenize string
      string.split
    end
    def self.removify string, remove
      string = string.split
      ns = ''
      string.each do |i|
        ns.concat(i+" ")  unless(i==remove)
      end
      ns.strip
    
    end
end
