<!-- eslint-disable vue/multi-word-component-names -->
<!-- BUTTONS -->

<template>
    <div class="buttons-container">
        <div @click="change('all')" class="btn selected">All</div>
        <div @click="change('completed')" class="btn">Completed</div>
        <div @click="change('uncompleted')" class="btn">Uncompleted</div>
    </div>
</template>


<script>
export default {
    // eslint-disable-next-line vue/multi-word-component-names
    name: 'Buttons',
    props: ['mode'],
    currentMode: "all",
    data: function() {
        return {
            currentMode: this.mode
        }
    },
    methods: {
        change(m) {
            this.$emit("mode", m)
        }
    }
}
</script>


<style lang="scss" scoped>
@import "@/assets/style.scss";
.buttons-container {
    max-width: 100%;
    display: flex;
    padding: rem(3);
    margin: 0 rem(-1.5);
    gap: rem(3);
    @include adaptive-value(flex-direction, row, row, row, row, column);
    @include adaptive-value(align-items, center, center, center, center, none);
    justify-content: space-around;
    background: #E6E6E6;
    border-radius: rem(8);
    border: rem(1) solid #8C8C8C;
}
.btn {
    text-align: center;
    padding: rem(5) rem(32);
    min-width: auto;
    margin: 0 rem(1.5);
    //@include adaptive-value(padding, rem(5) rem(26), rem(5) rem(26), rem(5) rem(26), rem(5) rem(26), rem(5) auto);
    border-radius: rem(6);
    cursor: pointer;
    transition: all .15s;

    &:hover {
        box-shadow: 0 0 0 rem(1) inset #8C8C8C;
    }
}
.selected {
    background: #CACACA;
    box-shadow: 0 0 0 rem(1) inset #8C8C8C;
}
</style>
