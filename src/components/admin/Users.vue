<template>
    <div>
        <FlashMessage position="right bottom"></FlashMessage>

        <div class="row ml-auto">
            <h2>Lista de users ({{ users_data['count'] }})</h2>
        </div>

        <table class="table table-striped mt-3">
            <thead>
                <tr>
                    <th scope="col">Nome</th>
                    <th scope="col">Email</th>
                </tr>
            </thead>
            <tbody>
                <tr v-if="dont_have_users">
                    <td colspan="2">Nenhum user cadastrado</td>
                </tr>
                <tr v-for="user in users_data['rows']" :key="user.id">
                    <td>
                        {{ user.name }} {{ user.last_name }} -
                        <span class="font-italic"
                            >cadastrado
                            {{ moment(user['updatedAt']).fromNow() }}</span
                        >
                    </td>
                    <td>{{ user['email'] }}</td>
                </tr>
            </tbody>
        </table>
        <div class="overflow-auto">
            <Pagination
                :count="users_data['count']"
                :per_page="users_data['per_page']"
                @change_page="users"
            ></Pagination>
        </div>
    </div>
</template>

<script>
import http from '../../http';
import moment from 'moment';
import Pagination from '../helpers/Pagination';

export default {
    data() {
        return {
            users_data: [],
            moment,
        };
    },

    mounted() {
        this.users();
        moment.locale('pt-br');
    },

    components: {
        Pagination,
    },

    computed: {
        dont_have_users() {
            return (
                this.users_data['rows'] !== undefined &&
                this.users_data['rows'].length <= 0
            );
        },
    },

    methods: {
        async users(page) {
            try {
                const response = await http.get('/dashboard/users/data', {
                    params: {
                        page,
                    },
                });
                this.users_data = response.data;
                console.log(response.data);
            } catch (error) {
                console.log(error);
            }
        },
    },
};
</script>
