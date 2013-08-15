module.exports = (match) ->
  match '', 'home#index'
  match 'publications/:id', 'publications#show'
