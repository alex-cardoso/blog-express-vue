const VueLoaderPlugin = require('vue-loader/lib/plugin');
const webpack = require('webpack');

module.exports = {
    entry: {
        public: './src/main.js',
        dashboard: './src/dashboard.js',
        admin: './src/admin.js',
    },
    output: {
        filename: './[name].bundle.js',
    },
    module: {
        rules: [
            {
                test: /\.css$/,
                use: ['vue-style-loader', 'css-loader'],
            },
            {
                test: /\.vue$/,
                loader: 'vue-loader',
                options: {
                    loaders: {},
                },
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
        new webpack.ContextReplacementPlugin(/moment[\/\\]locale$/, /pt-br/),
    ],
    resolve: {
        alias: {
            vue$: 'vue/dist/vue.esm.js',
        },
        extensions: ['*', '.js', '.vue', '.json'],
    },
    optimization: {
        minimize: process.env.NODE_ENV === 'development' ? false : true,
    },
    devServer: {
        historyApiFallback: true,
        noInfo: true,
        overlay: true,
    },
    performance: {
        hints: false,
    },
    devtool: '#eval-source-map',
};
