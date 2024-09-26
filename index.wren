import "bialet" for Response
import "_app/template" for Template
import "_app/domain" for BialetDocumentation

//
// Write your web logic here
//
// @see https://bialet.dev

var TITLE = "Your new web app is working!"

System.print(TITLE)
System.print("Go to http://localhost:7000 to see it in action")

var docLink = BialetDocumentation.new()

Response.out(Template.layout(TITLE,
<main>
  <h1>🎉 {{ TITLE }}</h1>
  <p>Edit the <code>index.wren</code> file to change this page.</p>
  <p>Read more on the <a href="{{ docLink.url }}">{{ docLink.label }}</a>.</p>
</main>
))
