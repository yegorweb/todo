<template>
    <div class="container">
        <router-link class="btn" to="/">Go back</router-link>
        <a class="btn" href="https://github.com/yegych9923">Author</a>
        <a class="btn" href="https://github.com/yegych9923/todo">GitHub</a>
    </div>
</template>

<style lang="scss" scoped>
    @import "@/assets/style.scss";
    .container {
        display: flex;
        flex-direction: column;
        gap: rem(10);
        margin-top: rem(40);
    }
    .btn {
        width: rem(320);
        padding: rem(5) 0;
        background: #E6E6E6;
        text-decoration: none;
        border-radius: rem(6);
        box-shadow: 0 0 0 rem(1) inset #8C8C8C;
        color: #000000;
        transition: all .15s;
        text-align: center;
        margin: 0 auto;

        &:hover {
            background: #dddddd;
            color: #000000;
        } &:active {
            background: #E6E6E6;
            color: #000000;
        }
    }
</style>