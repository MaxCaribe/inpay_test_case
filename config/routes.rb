Rails.application.routes.draw do
  mount PaymentEngine::Engine, at: "/payments"
  mount CustomerEngine::Engine, at: "/customers"
end
