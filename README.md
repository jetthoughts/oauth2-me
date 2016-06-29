oauth2-me
=========

[oauth2.me] is a web service that proxifies your oauth requests.

It enables an ability to use 1 credentials on multiple domains without modifying the redirect uri settings.

### Usage

1. You need to set your redirect uri to http://www.jetthoughts.com/oauth2-me/redirect

2. Your application should use the [state parameter] to pass your redirect URI encoded with [base64]

  We've created a gem for rubyists to do it automatically: [oauth2-me-ruby]

**Note:** You should never use [oauth2.me] with your production servers, the [state parameter] we are using,
should be used to protect your application from [CSRF attacks].


[oauth2.me]:http://www.jetthoughts.com/oauth2-me/
[state parameter]:https://tools.ietf.org/html/rfc6749#section-4.1.1
[oauth2-me-ruby]:https://github.com/jetthoughts/oauth2-me-ruby
[base64]:http://en.wikipedia.org/wiki/Base64
[CSRF attacks]:https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF)
