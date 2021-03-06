module EleetScript
  VERSION = "0.0.30"

  class LexicalError < RuntimeError
    def initialize(char, line)
      @char = char
      @line = line
    end

    def message
      "Unknown character encountered '#{@char}' on line ##{@line}"
    end
  end

  class ParseError < RuntimeError; end
end

ES = EleetScript

require "lang/interpreter"
require "engine/engine"
