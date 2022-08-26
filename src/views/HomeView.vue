<!-- HOME PAGE -->

<template>
  <Header btns="['Author', 'GitHub']" />
  <div class="manage-container">
    <Input v-bind:input="input" />
    <Buttons @mode="changeMode(m)" v-bind:mode="mode" />
  </div>
  <div class="container todoList">
    
  </div>
  {{mode}}
</template>


<script>
// @ is an alias to /src
import Header from '@/components/Header.vue'
import Input from '@/components/Input.vue'
import Buttons from '@/components/Buttons.vue'

export default {
  name: 'HomeView',
  components: {
    Header,
    Input,
    Buttons
  },
  data: function() {
    return {
      input: '',
      mode: 'all'
    }
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
</style>
