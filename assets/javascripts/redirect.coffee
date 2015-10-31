---
---

current_uri = new URI(window.location)
current_params = current_uri.search(true)
return unless current_params.state

decoded_redirect_uri = URI(Base64.decode(current_params.state))
delete current_params.state

redirect_uri = decoded_redirect_uri
  .addSearch(current_params)
  .normalizeSearch()

window.location = redirect_uri.toString()
