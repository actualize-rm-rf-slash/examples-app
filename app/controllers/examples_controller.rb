class ExamplesController < ApplicationController
  @@count = 0

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

  def counter_method
    @@count = @@count + 1
    render json: {number_of_visits: @@count}
  end
end
