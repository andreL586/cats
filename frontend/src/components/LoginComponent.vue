<template>
  <div class="card">
    <img class="card-img-top" src="https://placekitten.com/408/287" alt="Cat">
    <div class="card-body">
      <form>
        <!-- Email input -->
        <div class="form-outline mb-4">
          <input type="text" name="username" id="username" v-model="input.username" class="form-control" />
          <label class="form-label" for="username">Username</label>
        </div>

        <!-- Password input -->
        <div class="form-outline mb-4">
          <input type="password" name="password" id="password" v-model="input.password" class="form-control" />
          <label class="form-label" for="password">Password</label>
        </div>

        <!-- Submit button -->
        <button type="button" v-on:click="login()" class="btn btn-primary btn-block mb-4">Sign in</button>
      </form>

      <div class="text-danger">
        {{ this.errorMessage }}
      </div>
    </div>
  </div>

</template>

<script>
import axios from "axios";

export default {
  name: 'LoginComponent',
  data() {
    return {
      input: {
        username: "",
        password: ""
      },
      errorMessage: ""
    }
  },
  methods: {
    login() {
      const url = "http://localhost/login.php?";
      let params = new URLSearchParams([['user', this.input.username], ['password', this.input.password]]);

      axios.get(url, {params}).then(result => {
        if(result.data.login == "success") {
          this.$emit("authenticated", true);
          this.$router.replace({ name: "ProductsView" });
        } else {
          this.errorMessage = result.data.reason;
        }
      }, error => {
        console.error(error);
      });
    }
  }
}
</script>


<style scoped>

</style>
