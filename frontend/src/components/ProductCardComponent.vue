<template>
  <div class="card">
    <div class="poster-heading">
      <img :src="image" alt="" class="poster-heading--poster">
      <img src="@/assets/green-sofa-white-living-room-with-free-space.jpg" alt="" class="poster-heading--bg">
    </div>
    <div class="card-body">
      <h5 class="card-title">{{ name }}</h5>
      {{ description }}
    </div>
    <div class="card-footer">
      Article Number: {{ article_number }}
    </div>
  </div>
</template>

<script>
export default {
  name: 'ProductCardComponent',
  props: {
    id: Number,
    image: String,
    name: String,
    description: Text,
    article_number: Number
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  .card {
    text-align: left;
    overflow: hidden;
    margin-bottom: 1rem;
  }
  .poster-heading {
    position: relative;
  }
  .poster-heading .poster-heading--poster {
    position: absolute;
    width: 40%;
    height: 40%;
    object-fit: contain;
    right: 10%;
    top: 10%;
    transform: rotate(4deg);
    transition: all .4s;
  }
  .poster-heading .poster-heading--bg {
    width: 100%;
  }
  .card:hover .poster-heading--poster {
    width: 90%;
    height: 90%;
    transform: rotate(0);
    top: 5%;
    right: 5%;
    transition: all .4s;
  }
</style>
