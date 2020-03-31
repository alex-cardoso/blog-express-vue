const VueLoaderPlugin = require('vue-loader/lib/plugin');
const webpack = require('webpack');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const path = require('path');
const OptimizeCSSAssetsPlugin = require('optimize-css-assets-webpack-plugin');
const UglifyJsPlugin = require('uglifyjs-webpack-plugin');

module.exports = {
    entry: {
        public: ['./src/main.js', './src/assets/styles_main.css'],
        dashboard: ['./src/dashboard.js', './src/assets/styles_dashboard.css'],
        admin: ['./src/admin.js', './src/assets/styles_admin.css'],
    },
    output: {
        path: path.resolve(__dirname, 'dist'),
        filename: './[name].bundle.js',
    },
    module: {
        rules: [
            {
                test: /\.css$/,
                use: [
                    'vue-style-loader',
                    MiniCssExtractPlugin.loader,
                    'css-loader',
                ],
            },
            {
                test: /\.vue$/,
                loader: 'vue-loader',
            },
            {
                test: /\.js$/,
                loader: 'babel-loader',
                exclude: /node_modules/,
            },
        ],
    },
    plugins: [
        new VueLoaderPlugin(),
        new MiniCssExtractPlugin({
            filename: '[name].css',
        }),
        new webpack.ContextReplacementPlugin(/moment[\/\\]locale$/, /pt-br/),
    ],
    // paths simbolicos
    resolve: {
        alias: {
            vue$: 'vue/dist/vue.esm.js',
        },
        extensions: ['*', '.js', '.vue', '.json'],
    },
    optimization: {
        // minimize: process.env.NODE_ENV === 'development' ? false : true,
        minimizer: [
            new UglifyJsPlugin({
                cache: true,
                parallel: true,
                sourceMap: true,
            }),
            new OptimizeCSSAssetsPlugin({}),
        ],
    },
};
