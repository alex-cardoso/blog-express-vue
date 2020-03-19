import Vue from 'vue';

// Components other
import FlashMessage from '@smartweb/vue-flash-message';
Vue.use(FlashMessage);

// components
import Login from './components/Login';
import Boxes from './components/Boxes';

// css
import './assets/styles_admin.css';

new Vue({
    el: '#app',
    components: {
        Login,
        Boxes,
    },
});
