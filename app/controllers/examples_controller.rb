class ExamplesController < ApplicationController
  def fortune_method
    fortunes = [
      "You will be a billionaire.",
      "You will be hungry in one hour.",
      "You will die in 7 days."
    ]
    render json: {fortune: fortunes.sample}
  end

  def lotto_method
    numbers = []
    6.times do
      # TODO: add if condition to avoid duplicate numbers...
      numbers << rand(1..60)
    end
    render json: {
      lotto_numbers: numbers,
      message: "Not realistically usable results..."
    }
  end
end
