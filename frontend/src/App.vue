<template>
  <nav class="navbar navbar-light bg-light mb-5">
    <div class="container">
      <a class="navbar-brand" href="#">
        <h4>katzenposter24.de</h4>
      </a>
      <a href="#" class="align-self-end logout-btn" v-on:click="logout()">Logout</a>
    </div>
  </nav>
  <div id="app">
    <router-view @authenticated="setAuthenticated"/>
  </div>
</template>

<script>

export default {
  name: 'App',
  data() {
    return {
      authenticated: false
    }
  },
  mounted() {
    if(!this.authenticated) {
      this.$router.replace({ name: "LoginView" });
    }
  },
  methods: {
    setAuthenticated(status) {
      this.authenticated = status;
    },
    logout() {
      this.authenticated = false;
      this.$router.replace({ name: "LoginView" });
    }
  }
}
</script>

<style>
.logout-btn {
  line-height: 2.5rem;
  text-decoration: none;
}
</style>
