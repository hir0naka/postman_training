Rails.application.routes.draw do
  # postManControllerのtopアクションを呼び出す
  root 'postman#top', as: 'top'

  # postManControllerのpostManアクションを呼び出す
  get '/postman' => 'postman#postman', as: 'postman'

  # Jsonを利用して非同期通信を行う
  get "/result" => 'postman#result', as: 'result'
end
