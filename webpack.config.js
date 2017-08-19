const path = require('path');
const ExtractTextPlugin = require("extract-text-webpack-plugin");

const extractSass = new ExtractTextPlugin({
  filename: "donhubi.css"
});

module.exports = {
  entry: [
    './site/scripts/index.js',
    './site/styles/index.scss'
  ],
  output: {
    filename: 'donhubi.js',
    path: path.resolve(__dirname, 'build')
  },
  devtool: "source-map",
  module: {
    rules: [{
      test: /\.scss$/,
      use: extractSass.extract({
        use: [{
          loader: "css-loader",
          options: {
            sourceMap: true
          }
        }, {
          loader: 'postcss-loader',
          options: {
            sourceMap: true
          }
        }, {
          loader: "sass-loader",
          options: {
            sourceMap: true
          }
        }]
      })
    }]
  },
  plugins: [
    extractSass
  ]
};