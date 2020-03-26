import Vue from 'vue';
import FlashMessage from '@smartweb/vue-flash-message';

Vue.use(FlashMessage);

// components
import Login from './components/admin/Login';

new Vue({
    el: '#app',
    components: {
        Login,
    },
});
