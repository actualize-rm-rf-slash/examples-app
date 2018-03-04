Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/fortune_url" => "examples#fortune_method"
  get "/lotto_url" => "examples#lotto_method"
  get "/counter_url" => "examples#counter_method"
end
