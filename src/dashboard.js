import Vue from 'vue';
import Vuex from 'vuex';

// Components other
import FlashMessage from '@smartweb/vue-flash-message';
import VModal from 'vue-js-modal';
import vuex_modules from './vuex/modules';
import { BPagination } from 'bootstrap-vue/esm/components/pagination/pagination';

// Registered globally
Vue.use(FlashMessage);
Vue.use(VModal);
Vue.use(Vuex);

// components
import Boxes from './components/admin/Boxes';
import Posts from './components/admin/Posts';
import Users from './components/admin/Users';

// components from bootstrap-vue
Vue.component('b-pagination', BPagination);

new Vue({
    el: '#app',
    store: new Vuex.Store({
        modules: vuex_modules,
    }),
    components: {
        Boxes,
        Posts,
        Users,
    },
});
