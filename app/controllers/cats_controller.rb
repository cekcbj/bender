class CatsController < ApplicationController
  def list

    @cats = []
    @cats << "https://media.giphy.com/media/JwW4oYd3Wjv6E/giphy.gif"
    @cats << "https://media2.giphy.com/media/hkC9qHkrrfdqE/200.gif"

  end
end
