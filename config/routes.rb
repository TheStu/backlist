Backlist::Application.routes.draw do

  root to: 'statics#home'
  match '/contact', to: 'statics#contact'
  match '/about', to: 'statics#about'
  match '/ultralight-backpacking-checklist', to: 'statics#ultralight', as: 'ultralight'
  match '/summer-backpacking-checklist', to: 'statics#summer', as: 'summer'
  match '/winter-backpacking-checklist', to: 'statics#winter', as: 'winter'
  match '/sale_search', to: 'statics#sale_search'
end
