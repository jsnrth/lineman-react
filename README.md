# lineman-react

Compiles JSX files in your [Lineman](http://linemanjs.com) app. Uses [grunt-react](https://www.npmjs.org/package/grunt-react) under the hood.

## Installation

```bash
$ npm install lineman-react --save
```

## Generated files

This will compile all of the JSX files in `app/js/**/*.jsx` to `generated/jsx/**/*.js`, and then include them in the generated `app.js` file. This does generate and concatenate sourcemaps for the compiled JSX files onto `app.js.map`.

You will need to include the JSX directive at the top of each JSX file.

```javascript
/** @jsx React.DOM */

window.app.components.MyComponent = React.createClass({

  render: function(){
    return <p>A react component!</p>;
  }

});
```

## License

[MIT License.](http://opensource.org/licenses/MIT)
