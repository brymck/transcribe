# coding: utf-8
require "transcribe/term"

module Transcribe
  class Term
    WORD_BOUNDARY = "\\b"
    REPETITION    = "+"

    class << self
      def create_from_yaml(yaml)
        from, to = yaml.shift
        Term.new from, to, yaml
      end
    end

    def initialize(from, to, opts = {})
      @to = to
      if opts.empty?
        @from = from
      else
        from  = Regexp.escape(from)
        flags = ""
        from.concat  REPETITION    if opts["repeatable"]
        from.prepend WORD_BOUNDARY if opts["word_initial"]
        from.concat  WORD_BOUNDARY if opts["word_final"]
        @from = Regexp.new(from, flags)
      end
    end

    def apply!(text)
      text.gsub! @from, @to
    end
  end
end
