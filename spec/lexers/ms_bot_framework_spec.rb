# -*- coding: utf-8 -*- #

describe Rouge::Lexers::MSBotFramework do
  let(:subject) { Rouge::Lexers::MSBotFramework.new }

  describe 'guessing' do
    include Support::Guessing

    it 'guesses by filename' do
      assert_guess :filename => 'foo.json'
    end

    it 'guesses by mimetype' do
      assert_guess :mimetype => 'text/x-json'
    end
  end
end
