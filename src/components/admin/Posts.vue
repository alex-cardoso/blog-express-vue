<template>
    <div>
        <FlashMessage position="right bottom"></FlashMessage>
        <modal name="new-post" width="60%" :adaptive="true" height="auto">
            <div class="p-4 d-flex justify-content-between align-items-center">
                <h3>Novo Post</h3>
                <button
                    class="btn btn-outline-danger btn-sm"
                    @click="$modal.hide('new-post')"
                >
                    Fechar
                </button>
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
                    >
                        Cadastrar
                    </button>
                </form>
            </section>
        </modal>
        <div
            class="row ml-auto d-flex align-items-center justify-content-between"
        >
            <h2>Lista de posts</h2>
            <button class="btn btn-outline-primary" @click="new_post">
                Novo
            </button>
        </div>

        <hr />

        <ul>
            <li v-for="post in posts_data['rows']" :key="post.id">
                {{ post['title'] }}
            </li>
        </ul>

        <div class="overflow-auto">
            <Pagination
                :count="posts_data['count']"
                :per_page="posts_data['per_page']"
                @change_page="posts"
            ></Pagination>
        </div>
    </div>
</template>

<script>
import http from '../../http';
import Pagination from '../helpers/Pagination';

export default {
    data() {
        return {
            post: {
                title: '',
                slug: '',
                post: '',
            },
            errors: {},
            posts_data: [],
        };
    },
    components: {
        Pagination,
    },
    mounted() {
        this.posts();
    },
    methods: {
        async posts(page) {
            try {
                const response = await http.get('/dashboard/posts/data', {
                    params: {
                        page,
                    },
                });
                this.posts_data = response.data;
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

                if (response.data['title'] !== undefined) {
                    this.post = {};
                    this.errors = {};
                    this.$modal.hide('new-post');
                    this.posts_data['rows'].push(response.data);
                    this.flashMessage.show({
                        status: 'success',
                        title: 'Cadastrado',
                        message: 'Post cadastrado com sucesso !',
                        time: 10000,
                        blockClass: 'custom_msg',
                    });
                }
            } catch (error) {
                if (error.response !== undefined) {
                    this.errors = error.response.data;
                    return false;
                }

                this.flashMessage.show({
                    status: 'error',
                    title: 'Erro ao cadastrar post',
                    message:
                        'Erro ao cadastrar post, tente novamente em alguns segundos',
                    time: 10000,
                    blockClass: 'custom_msg',
                });
                console.log(error.response.data);
            }
        },
    },
};
</script>
