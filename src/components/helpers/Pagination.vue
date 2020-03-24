<template>
    <BPagination
        v-model="currentPage"
        @input="change_page"
        :total-rows="count"
        :per-page="per_page"
        first-text="First"
        prev-text="Prev"
        next-text="Next"
        last-text="Last"
    ></BPagination>
</template>

<script>
import { BPagination } from 'bootstrap-vue';

export default {
    props: {
        count: {
            type: Number,
        },
        per_page: {
            type: Number,
        },
    },
    components: {
        BPagination,
    },
    data() {
        return {
            currentPage: 1,
        };
    },
    methods: {
        change_page() {
            this.$emit('change_page', this.currentPage);
        },
    },
};
</script>

<style scoped></style>
