<!-- eslint-disable vue/multi-word-component-names -->
<template>
    <div class="container">
        <div class="logo">
            <img src="@/assets/logo.svg" alt="logo" srcset="" class="logo-img">
            <div class="logo-text">TODO Application</div>
        </div>
        <div class="btns">
            <template v-for="btn in buttons"
            :key="btn.id"><a class="btns__item">{{ btn }}</a></template>
        </div>
    </div>
</template>


<style lang="scss" scoped>
@import '@/assets/style.scss';

.container {
    padding: rem(26) 0;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    align-items: center;
}
.logo {
    display: flex;
    flex-direction: row;
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
        font-size: rem(24);
        color: #000000;
    }
}
.btns {
    display: flex;
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
        &:hover:after,
        &:focus:after {
            width: 100%;
        }
    }
}
</style>


<script>
export default {
    props: ['btns'],
    data: function() {
        return {
            buttons: JSON.parse(this.btns.replace(/'/g, '"'))
        }
    }
}
</script>