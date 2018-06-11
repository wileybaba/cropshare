Rails.application.routes.draw do

  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/faqs'
  get 'static_pages/terms_and_conditions'
  get 'static_pages/privacy_policy'
  get 'static_pages/share_policy'
  get 'static_pages/customer_care'
  get 'static_pages/press'
  root 'application#hello'
end
