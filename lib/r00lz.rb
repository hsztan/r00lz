# frozen_string_literal: true

require_relative 'r00lz/version'

module R00lz
  class App
    def call(_env)
      [200,
       { 'Content-Type' => 'text/html' },
       ['Helo from R00lz!']]
    end
  end
end
