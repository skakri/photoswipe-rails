# photoswipe-rails [![Gem Version](https://badge.fury.io/rb/photoswipe-rails.svg)](https://badge.fury.io/rb/photoswipe-rails)

[PhotoSwipe](http://photoswipe.com/) for the Rails asset pipeline.

## Installation

Add photoswipe-rails to the assets group in your Gemfile:

```ruby
gem 'photoswipe-rails'
```

Add the necessary library to `app/assets/javascripts/application.js`:

```js
//= require photoswipe
```

And to `app/assets/stylesheets/application.scss`:

```css
/*
 *= require photoswipe
 */
```

or if you prefer `@import` in your application.scss:

```css
@import "photoswipe/photoswipe";
@import "photoswipe/default-skin/default-skin";
```

## Further set-up

See PhotoSwipe [set-up guide][1] for further instructions.

[1]: http://photoswipe.com/documentation/getting-started.html#init-add-pswp-to-dom
