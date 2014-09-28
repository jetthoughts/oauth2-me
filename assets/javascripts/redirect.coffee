---
---

current_uri = new URI(window.location)
params = current_uri.search(true)
if params.state
  redirect_url = Base64.decode(params.state) + current_uri.search()
  window.location = redirect_url
