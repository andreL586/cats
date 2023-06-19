<template>
  <div class="container">
    <div class="row d-flex justify-content-center">
      <div class="col-4">
        <LoginComponent />
      </div>
    </div>
  </div>

</template>

<script>
import LoginComponent from '../components/LoginComponent.vue'

export default {
  name: 'LoginView',
  components: {
    LoginComponent
  }
}
</script>

<style>


</style>
