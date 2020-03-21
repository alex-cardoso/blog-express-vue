<template>
    <b-pagination
        v-model="currentPage"
        @input="change_page"
        :total-rows="count"
        :per-page="per_page"
        first-text="First"
        prev-text="Prev"
        next-text="Next"
        last-text="Last"
    ></b-pagination>
</template>

<script>
export default {
    props: {
        count: {
            type: Number,
        },
        per_page: {
            type: Number,
        },
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
