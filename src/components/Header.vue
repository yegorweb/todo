<!-- eslint-disable vue/multi-word-component-names -->
<!-- HEADER -->

<template>
    <div class="container">
        <div class="logo">
            <img src="@/assets/logo.svg" alt="logo" srcset="" class="logo-img">
            <div class="logo-text">TODO Application</div>
        </div>
        <div class="btns">
            <a href="https://github.com/yegych9923" class="btns__item">Author</a>
            <a href="https://github.com/yegych9923/todo" class="btns__item">GitHub</a>
        </div>
    </div>
</template>


<script>
export default {
    // eslint-disable-next-line vue/multi-word-component-names
    name: 'Header'
}
</script>


<style lang="scss" scoped>
@import '@/assets/style.scss';

.container {
    padding-top: rem(26);
    margin: 0 auto;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    align-items: center;
}
.logo {
    display: flex;
    flex-direction: row;
    @include adaptive-value(gap, rem(24), rem(24), rem(24), rem(24), rem(22));
    gap: rem(24);
    align-items: center;

    &-img {
        height: rem(32);
        width: auto;
    }
    &-text {
        font-family: 'Montserrat';
        font-style: normal;
        font-weight: 800;
        @include adaptive-value(font-size, rem(24), rem(24), rem(24), rem(24), rem(22));
        color: #000000;
    }
}
.btns {
    @include adaptive-value(display, flex, flex, flex, none, none);
    flex-direction: row;
    gap: rem(40);

    &__item {
        font-family: 'Montserrat';
        font-style: normal;
        font-weight: 600;
        font-size: rem(16);
        color: #000000;
        cursor: pointer;
        position: relative;
        text-decoration: none;

        &:after {
            display: block;
            content: "";
            background-color: #000000;
            height: rem(2);
            width: 0%;
            left: 50%;
            position: absolute;
            transition: width .15s ease-in-out;
            transform: translateX(-50%);
        }
        &:active {
            background-color: rgba($color: #000000, $alpha: 0);
        }
        &:hover:after,
        &:focus:after {
            width: 100%;
        }
    }
}
</style>