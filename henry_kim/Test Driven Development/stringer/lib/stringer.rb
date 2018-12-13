require "stringer/version"

module Stringer
    def self.spacify *strings
 		string = ""
    	strings.each do |s|
            string += s + " "
        end
        string.strip!
    end

    def self.minify string, val
    	string.byteslice(0...val)
    end

    def self.replacify string, find_this, replacement
    	string.sub(find_this, replacement)
    end

    def self.tokenize string
    	string.split
    end

    def self.removify string, remove_this
    	string.slice! " " + remove_this
    	string
    end
end
