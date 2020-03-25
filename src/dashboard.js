import Vue from 'vue';
import Vuex from 'vuex';

// Components other
import FlashMessage from '@smartweb/vue-flash-message';
import VModal from 'vue-js-modal';
import vuex_modules from './vuex/modules';

Vue.use(FlashMessage);
Vue.use(VModal);
Vue.use(Vuex);

// components
import Boxes from './components/admin/Boxes';
import Posts from './components/admin/Posts';

// css
import 'bootstrap-vue/dist/bootstrap-vue.css';

new Vue({
    el: '#app',
    store: new Vuex.Store({
        modules: vuex_modules,
    }),
    components: {
        Boxes,
        Posts,
    },
});
