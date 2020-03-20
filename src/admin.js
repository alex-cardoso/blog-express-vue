import Vue from 'vue';

// Components other
import FlashMessage from '@smartweb/vue-flash-message';
import VModal from 'vue-js-modal';

Vue.use(FlashMessage);
Vue.use(VModal);

// components
import Login from './components/admin/Login';
import Boxes from './components/admin/Boxes';
import Posts from './components/admin/Posts';

// css
import './assets/styles_admin.css';

new Vue({
    el: '#app',
    components: {
        Login,
        Boxes,
        Posts,
    },
});
