<!-- HOME PAGE -->

<template>
  <Header />
  <div class="manage-container">
    <Input v-bind:input="input" />
    <Buttons @mode="changeMode(m)" v-bind:mode="mode" />
  </div>
  <div class="container todoList" v-if="todos.length>0">
    <div class="line"></div>
    <div class="todoList-items">
        <template v-for="todo in todos" 
        :key="todo">
            <TodoItem v-bind:todo="todo" />
        </template>
    </div>
    <div class="line"></div>
  </div>
</template>


<script>
// @ is an alias to /src
import Header from '@/components/Header.vue'
import Input from '@/components/Input.vue'
import Buttons from '@/components/Buttons.vue'
import TodoItem from '@/components/TodoItem.vue'

export default {
  name: 'HomeView',
  components: {
    Header,
    Input,
    Buttons,
    TodoItem
  },
  data: function() {
    return {
      input: '',
      mode: 'all',
      todos: [{
        id: 1,
        text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip',
        completed: false
      },
      {
        id: 2,
        text: 'Wash plates',
        completed: false
      },
      {
        id: 3,
        text: 'Try to center a div',
        completed: false
      }]
    }
  },
  mounted: function() {
    
  },
  methods: {
    changeMode(m) {
        this.mode = m
        console.log(m)
    }
  }
}
</script>


<style lang="scss" scoped>
@import "@/assets/style.scss";
.manage-container {
  @include adaptive-value(width, rem(400), rem(400), rem(400), rem(400), rem(320));
  display: flex;
  flex-direction: column;
  gap: rem(18);
  margin: 0 auto;
  margin-top: rem(28);
}
.todoList {
    margin-top: rem(27);

    .line {
        margin: 0 auto;
        width: 80%;
        height: rem(1);
        background: #ACACAC;
    }
    &-items {
        margin: rem(21) 0;
        display: flex;
        flex-direction: column;
        gap: rem(25);
        min-width: 100%;

        & > * {
            min-width: 100%;
        }
    }
}
</style>
