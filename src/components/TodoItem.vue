<template>
    <!-- <input type="checkbox" :todo="todo" @input="this.todoo.completed = $event.target.checked">
    <div>{{this.todo.text}}</div>
    <div>{{this.todo.completed}}</div> -->
    <div class="container">
        <div class="manage">
            <input type="checkbox" v-model="completed" class="doneBtn" :todo="todo" @input="this.todoo.completed = $event.target.checked" />
            <div class="num" v-bind:class="{done: todo.completed}">{{id+1}}</div>
        </div>
        <div class="text" v-bind:class="{done: todo.completed}">{{todo.text}}</div>
        <button class="delBtn" @click="$emit('remove-todo', id)"><img src="@/assets/delete.svg" alt="Delete"></button>
    </div>
</template>


<style lang="scss" scoped>
@import "@/assets/style.scss";
.container {
    padding: rem(14) rem(20);
    background: #E6E6E6;
    box-sizing: border-box;
    border: rem(1) solid #8C8C8C;
    border-radius: rem(8);
    display: flex;
    flex-direction: row;
    align-items: flex-start;
    justify-content: space-between;
}
.manage {
    display: flex;
    flex-direction: row;
    align-items: center;
    gap: rem(16);
    float: left;
    height: rem(30);
}
.doneBtn {
    width: rem(18);
    height: rem(18);
    background: #C9C9C9;
    border: rem(1) solid #8C8C8C;
    border-radius: rem(5);
    cursor: pointer;
    appearance: none;
    padding: rem(4);

    &:checked {
        background: #C9C9C9 url('@/assets/done.svg') 50% 50% no-repeat;
        background-size: auto;
    }
}
.num {
    font-family: 'Montserrat';
    font-style: normal;
    font-weight: 700;
    font-size: rem(18);
    color: #000000;
}
.text {
    margin-left: rem(26);
    margin-right: rem(40);
    width: 100%;
    margin-top: auto;
    margin-bottom: auto;
    font-family: 'Montserrat';
    font-style: normal;
    font-weight: 400;
    font-size: rem(16);
    line-height: rem(20);
    color: #000000;
}
.done {
    text-decoration: line-through;
}
.delBtn {
    width: rem(30);
    height: rem(30);
    align-items: center;
    display: flex;
    justify-content: center;
    background: #E6E6E6;
    border: rem(1) solid #8C8C8C;
    border-radius: rem(6);
    cursor: pointer;
    transition: all .15s;

    &:hover {
        background: #d6d6d6;
    }
    & > * {
        width: rem(16);
        height: rem(16);
        margin: auto;
    }
}
</style>


<script>
export default {
    name: 'TodoItem',
    props: ['todo', 'id'],
    data: function() {
        return {
            todoo: this.todo,
            todoss: this.todos,
            completed: false
        }
    },
    mounted: function() {
        this.completed = this.todo.completed
    }
}
</script>