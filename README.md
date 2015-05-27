# photoswipe-rails

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

## Further set-up

See PhotoSwipe [set-up guide][1] for further instructions.

[1]: http://photoswipe.com/documentation/getting-started.html#init-add-pswp-to-dom
