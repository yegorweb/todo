<!-- eslint-disable vue/multi-word-component-names -->
<!-- INPUT TODO NAME -->

<template>
    <div class="input-container">
        <button class="btn" @click="$emit('add-todo', this.title); this.title=''">+</button>
        <input autofocus type="text" placeholder="Some text..." v-model="title" @keyup.enter="$emit('add-todo', this.title); this.title=''" />
    </div>
</template>


<script>
export default {
    // eslint-disable-next-line vue/multi-word-component-names
    name: 'Input',
    props: ['input'],
    data: function() {
        return {
            title: ''
        }
    }
}
</script>


<style lang="scss" scoped>
@import "@/assets/style.scss";
.input-container {
    display: flex;
    flex-direction: row;
    min-width: 100%;
    gap: rem(16);
    height: rem(36);
    position: relative;
    margin: 0 auto;
}
.btn, input {
    border-radius: rem(8);
    background: #E6E6E6;
    border: rem(1) solid #8C8C8C;
    transition: all .15s;

    &:hover {
        background: #dddddd;
    }
}
.btn {
    height: 100%;
    aspect-ratio: 1 / 1;
    font-family: 'Montserrat';
    font-style: normal;
    font-weight: 500;
    font-size: rem(24);
    color: #000000;
    text-align: center;
    cursor: pointer;

    &:focus {
        background: #E6E6E6;
    }
}
input {
    max-height: 100%;
    width: 100%;
    padding: rem(8) rem(16);
    font-family: 'Montserrat';
    font-style: normal;
    font-weight: 500;
    font-size: rem(16);
    color: #000000;
    outline: none;

    &::placeholder {
        color: #444444;
    }
}
</style>
