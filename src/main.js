import Vue from 'vue';

import LatestPosts from './components/site/LatestPosts';

new Vue({
    el: '#app',
    components: {
        Posts: LatestPosts,
    },
});
