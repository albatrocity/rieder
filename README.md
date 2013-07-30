This is an HTML5 application, built with
[Brunch](http://brunch.io) and
[Chaplin](http://chaplinjs.org).

## Getting started
* Install [Brunch](http://brunch.io): `npm install -g brunch`.
* Install Brunch plugins: `npm install`.
* Install Bower components: `bower install`
* Watch the project with continuous rebuild by
`brunch watch --server`. This will also launch HTTP server.
* Build the minified project with `brunch build --optimize`.
* Open the `public/` dir to see the result.
* Write your code in `app` dir, put scripts in `vendor` dir.

See [Chaplin site](http://chaplinjs.org) for docs and more info.

## Reader
Chapter 1 of Alice in Wonderland is in [book.json](app/assets/book.json), which is fetched on initialization and
formatted with marked.js. Currently supports `paragraph`, `heading`, and `image` content types.