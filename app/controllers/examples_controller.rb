class ExamplesController < ApplicationController
  def fortune_method
    fortunes = [
      "You will be a billionaire.",
      "You will be hungry in one hour.",
      "You will die in 7 days."
    ]
    render json: {fortune: fortunes.sample}
  end
end
