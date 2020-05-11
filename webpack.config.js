const path = require("path");
const MiniCssExtractPlugin = require("mini-css-extract-plugin");

module.exports = {
  entry: ["./site/styles/index.scss"],
  output: {
    filename: "donhubi.js",
    path: path.resolve(__dirname, "build"),
  },
  module: {
    rules: [
      {
        test: /\.scss$/i,
        use: [MiniCssExtractPlugin.loader, "css-loader", "sass-loader"],
      },
      {
        test: /\.(woff|woff2|eot|ttf|otf|svg)$/,
        use: {
          loader: "file-loader",
          options: {
            name: "[name].[ext]",
            outputPath: "assets",
          },
        },
      },
    ],
  },
  plugins: [
    new MiniCssExtractPlugin({
      filename: "donhubi.css",
      chunkFilename: "[id].css",
      path: path.resolve(__dirname, "build"),
    }),
  ],
};
