# frozen_string_literal: true

require_relative 'r00lz/version'

module R00lz
  # The App class has a call method that returns a 200 status code, a Content-Type header, and a body.
  class App
    def call(_env)
      [200,
       { 'Content-Type' => 'text/html' },
       ['Helo from R00lz!']]
    end
  end
end
