<template>
    <div>
        <h2>Últimos Posts</h2>
    </div>
</template>

<script>
import http from '../../http';
export default {
    data() {
        return {
            latest_posts_data: [],
        };
    },

    mounted() {
        this.latest_posts();
    },

    methods: {
        async latest_posts() {
            try {
                const response = await http.get('/posts/latest');
                console.log(response.data);
                this.latest_posts_data = response.data;
            } catch (error) {
                console.log(error);
            }
        },
    },
};
</script>
