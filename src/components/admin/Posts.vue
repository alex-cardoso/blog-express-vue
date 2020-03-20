<template>
    <div>
        <modal name="new-post" width="60%" :adaptive="true" height="auto">
            <div class="p-4 d-flex justify-content-between align-items-center">
                <h3>Novo Post</h3>
                <button
                    class="btn btn-outline-danger btn-sm"
                    @click="$modal.hide('new-post')"
                >Fechar</button>
            </div>
            <hr />
            <section class="p-4">
                <form action @submit.prevent="store_post">
                    <label for>Titulo</label>
                    <span class="error">{{ errors['title'] }}</span>
                    <input
                        type="text"
                        placeholder="Titulo do post..."
                        class="form-control mb-3"
                        v-model="post['title']"
                    />

                    <label for>Slug</label>
                    <span class="error">{{ errors['slug'] }}</span>
                    <input
                        type="text"
                        placeholder="Slug do post..."
                        class="form-control mb-3"
                        v-model="post['slug']"
                    />

                    <label for>Post</label>
                    <span class="error">{{ errors['post'] }}</span>
                    <textarea
                        rows="8"
                        placeholder="Seu post..."
                        class="form-control"
                        v-model="post['post']"
                    ></textarea>

                    <button
                        type="submit"
                        class="btn btn-outline-success btn-sm mt-2 float-right mb-2"
                    >Cadastrar</button>
                </form>
            </section>
        </modal>
        <div class="row ml-auto d-flex align-items-center justify-content-between">
            <h2>Lista de posts</h2>
            <button class="btn btn-outline-primary" @click="new_post">Novo</button>
        </div>

        <hr />
    </div>
</template>

<script>
import http from '../../http';

export default {
    data() {
        return {
            post: {
                title: '',
                slug: '',
                post: '',
            },
            errors: {},
        };
    },
    mounted() {
        this.posts();
    },
    methods: {
        async posts() {
            try {
                const response = await http.get('/dashboard/posts/data');
                console.log(response);
            } catch (error) {
                console.log(error);
            }
        },

        new_post() {
            this.$modal.show('new-post');
        },

        async store_post() {
            try {
                const response = await http.post(
                    '/dashboard/post/store',
                    this.post
                );
                console.log(response);
                console.log('store post');
            } catch (error) {
                if (error.response !== undefined) {
                    this.errors = error.response.data;
                }
                console.log(error.response.data);
            }
        },
    },
};
</script>
