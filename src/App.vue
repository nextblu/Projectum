<template>
  <div id="app" class="is-marginless is-paddingledd">
    <UpVote></UpVote>
  </div>
</template>

<script>
import UpVote from './components/UpVote'

export default {
  name: 'app',
  components: {
    UpVote
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  background-color: rgb(38, 42, 65);
  margin-top: 60px;
}
</style>
