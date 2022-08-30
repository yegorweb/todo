<!-- HOME PAGE -->

<template>
  <Header />
  <div class="manage-container">
    <Input v-bind:input="input" v-on:add-todo="addTodo" />
    <Buttons v-on:change-mode="changeMode" v-bind:mode="mode" />
  </div>
  <div class="container todoList" v-if="todos.length>0">
    <div class="line"></div>
    <div class="todoList-items">
      <template 
        v-for="(todo, id) in todos"
        :key="todo"
      >
        <TodoItem 
          v-if="this.mode=='all'"
          v-bind:id="id"
          v-bind:todo="todo"
          v-on:remove-todo="removeTodo"
        />
        <TodoItem 
          v-if="this.mode=='completed' && todo.completed"
          v-bind:id="id"
          v-bind:todo="todo"
          v-on:remove-todo="removeTodo"
        />
        <TodoItem 
          v-if="this.mode=='uncompleted' && !todo.completed"
          v-bind:id="id"
          v-bind:todo="todo"
          v-on:remove-todo="removeTodo"
        />
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
      todos: []
    }
  },
  mounted: function() {
    //this.todos = document.cookie == '' ? [] : document.cookie
  },
  methods: {
    changeMode(m) {
        this.mode = m
        console.log(m)
    },
    removeTodo(id) {
      this.todos.splice(id, 1)
    },
    addTodo(text) {
      if (text != '') {
        const newTodo = {
          text: text,
          completed: false
        }
        this.todos.push(newTodo)
        //document.cookie = encodeURIComponent(this.todos)
      }
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
    margin-bottom: rem(27);

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
