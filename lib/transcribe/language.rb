# coding: utf-8
require "transcribe/term"
require "yaml"

module Transcribe
  class Language
    def initialize(name)
      @name = name
      load_yaml(@name)
    end

    def transcribe(text)
      @terms.each { |t| t.apply! text }
      text
    end

    private

    def load_yaml(name)
      @terms = []
      path = File.join(File.expand_path(File.dirname(__FILE__)), "language", "#{name}.yml")
      yaml = YAML.load_file(path)
      yaml.each { |t| @terms << Term.create_from_yaml(t) }
    end
  end
end
