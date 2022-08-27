<template>
    <input type="checkbox" :checked="checked" @input="checked = $event.target.checked">
    {{this.todo.completed}}
</template>


<style lang="scss" scoped>
@import "@/assets/style.scss";

</style>


<script>
export default {
    name: 'TodoItem',
    props: ['todo'],
    data: function() {
        return {
            checked: false
        }
    },
    mounted: function() {
        this.$emit('changeTodo', this.checked, this.todo.id)
    },
    methods: {
        changeTodo() {
            this.$emit('changeTodo', this.checked, this.todo.id)
        }
    }
}
</script>