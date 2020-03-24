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

        <table class="table table-striped mt-3">
            <thead>
                <tr>
                    <th scope="col">Titulo</th>
                    <th scope="col"></th>
                </tr>
            </thead>
            <tbody>
                <tr v-if="dont_have_posts">
                  <td colspan="2">Nenhum post cadastrado</td>
                </tr>
                <tr v-for="(post, index) in posts_data['rows']" :key="post.id">
                  <td>{{ post.title }} - <span class="font-italic">postado por {{ post['user']['name'] }} {{ post['user']['last_name'] }}</span></td>
                    <td>
                        <button
                            class="btn btn-outline-danger"
                            @click="exclude(post.id, index)"
                        >
                            Excluir
                        </button>
                    </td>
                </tr>
            </tbody>
        </table>

        <div
            class="overflow-auto"
            v-if="posts_data['count'] > posts_data['per_page']"
        >
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
    computed: {
        dont_have_posts() {
            return (
                this.posts_data['rows'] !== undefined &&
                this.posts_data['rows'].length <= 0
            );
        },
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
                const response = await http.post('/dashboard/post', this.post);

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
            }
        },

        async exclude(post_to_exclude, index) {
            try {
                const response = await http.delete('/dashboard/post', {
                    data: {
                        post: post_to_exclude,
                    },
                });

                if (response.data === 'deleted') {
                    this.flashMessage.show({
                        status: 'success',
                        title: 'Deletado',
                        message: 'Post deletado com sucesso !',
                        time: 10000,
                        blockClass: 'custom_msg',
                    });
                    this.posts_data['rows'].splice(index, 1);
                }
            } catch (error) {
                this.flashMessage.show({
                    status: 'error',
                    title: 'Erro ao deletar post',
                    message:
                        'Erro ao deletar post, tente novamente em alguns segundos',
                    time: 10000,
                    blockClass: 'custom_msg',
                });
                console.log(error);
            }
        },
    },
};
</script>
