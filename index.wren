import "_app/template" for Template
import "_app/domain" for BialetDocumentation

System.log("It works! Go to %( docLink.url )")

//
// Write your web logic here
//
// @see https://bialet.dev

var title = "Your new web app is working!"
var meta = [
  {
    "key": "description",
    "value": "Use this repository to start your Bialet project, clone it or fork it"
  },
]
var docLink = BialetDocumentation.new()

var html = <main>
  <h1>🎉 {{ title }}</h1>
  <p>Edit the <code>index.wren</code> file to change this page.</p>
  <p>Read more on the <a href="{{ docLink.url }}">{{ docLink.label }}</a>.</p>
</main>

return Template.layout(title, html, meta)
