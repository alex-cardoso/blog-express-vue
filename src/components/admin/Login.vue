<template>
    <div>
        <FlashMessage position="right bottom"></FlashMessage>
        <form @submit.prevent="login">
            <div class="row justify-content-md-center mt-3">
                <div class="col">
                    <label for>Email</label>
                    <input
                        type="text"
                        v-model="email"
                        name="email"
                        class="form-control"
                    />
                </div>
                <div class="col">
                    <label for>Senha</label>
                    <input
                        type="password"
                        v-model="password"
                        name="password"
                        class="form-control"
                    />
                </div>
            </div>
            <div class="row justify-content-end mr-auto">
                <button type="submit" class="btn btn-outline-success mt-1">
                    Logar
                </button>
            </div>
        </form>
    </div>
</template>

<script>
import http from '../../http';

export default {
    data() {
        return {
            email: 'Dora77@hotmail.com',
            password: '123',
        };
    },
    methods: {
        async login() {
            try {
                const response = await http.post('/admin/login', {
                    username: this.email,
                    password: this.password,
                });

                if (response.data === 'logged') {
                    window.location.href = '/dashboard';
                    return false;
                }
            } catch (error) {
                if (error.response.data === 'Unauthorized') {
                    this.flashMessage.show({
                        status: 'error',
                        title: 'Erro ao logar',
                        message: 'Email ou senha inválidos',
                        time: 10000,
                        blockClass: 'custom_msg',
                    });
                }
            }
        },
    },
};
</script>
