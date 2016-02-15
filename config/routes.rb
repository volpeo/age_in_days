Rails.application.routes.draw do

  root "age_in_days#ask"
  # get "/" => "age_in_days#ask"
  get   "answer" => "age_in_days#answer"
  post  "answer" => "age_in_days#answer"
  get   "posts/:id" => "blabla#blabla"

end
