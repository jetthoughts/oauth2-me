---
---
REDIRECT_PATH = '../redirect/'

current_uri = URI(window.location)
current_params = current_uri.query(true)

request_url = current_params.request_uri
return unless request_url

request_uri = URI(request_url)
request_params = request_uri.query(true)

return unless request_params.redirect_uri

redirect_uri = URI(request_params.redirect_uri)
  .removeSearch('state')
  .addSearch(state: request_params.state)
  .normalizeSearch()

alert redirect_uri.toString()

encoded_redirect_uri = Base64.encode(redirect_uri.toString())
new_redirect_uri = URI(REDIRECT_PATH).absoluteTo(window.location)

new_request_url = request_uri
  .removeSearch('redirect_uri')
  .removeSearch('state')
  .addSearch(redirect_uri: new_redirect_uri.toString(), state: encoded_redirect_uri)
  .normalizeSearch()
  .toString()


window.location = new_request_url
