<template>
    <div class="d-flex justify-content-between mb-5">
        <div class="bg-primary p-4 text-white">Posts: {{ posts_count }}</div>
        <div class="bg-danger p-4 text-white">Posts Hoje: {{ posts_today_count.length }}</div>
        <div class="bg-success p-4 text-white">Users {{ users_count }}</div>
        <div class="bg-info p-4 text-white">Categorias: {{ categories_count }}</div>
    </div>
</template>

<script>
import http from '../../http';

export default {
    data() {
        return {
            posts_count: [],
            posts_today_count: [],
            users_count: [],
            categories_count: [],
        };
    },
    mounted() {
        this.posts();
        this.users();
        this.categories();
    },
    methods: {
        async posts() {
            try {
                const response = await http.get('/dashboard/posts/data');
                this.posts_count = response.data['count'];
                this.posts_today_count = response.data['rows'].filter(post => {
                    const actualDate = new Date();
                    const createdDate = new Date(post.updatedAt);
                    return (
                        `${actualDate.getDate()}/${actualDate.getFullYear()}` ===
                        `${createdDate.getDate()}/${createdDate.getFullYear()}`
                    );
                });
            } catch (error) {
                this.posts_count = 0;
                this.posts_today_count = 0;
            }
        },

        async users() {
            try {
                const response = await http.get('/dashboard/users/data');
                this.users_count = response.data['count'];
            } catch (error) {
                this.users_count = 0;
            }
        },

        async categories() {
            try {
                const response = await http.get('/dashboard/categories/data');
                console.log(response.data);
                this.categories_count = response.data['count'];
            } catch (error) {
                console.log(error);
            }
        },
    },
};
</script>
