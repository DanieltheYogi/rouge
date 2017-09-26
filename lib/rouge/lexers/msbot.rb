# -*- coding: utf-8 -*- #

module Rouge
  module Lexers
    class MsBotFramework < Lexer
      title "MS Bot Framework"
      desc "A boring lexer that doesn't highlight anything"

      tag 'msbot'
      aliases 'msbot'
      filenames '*.txt'
      mimetypes 'text/plain'

      attr_reader :token
      def initialize(*)
        super

        @token = token_option(:token) || Text
      end

      def stream_tokens(string, &b)
        yield self.token, string
      end
    end
  end
end
