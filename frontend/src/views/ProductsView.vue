<template>
  <div class="container">
    <div class="row">
      <div class="col-4" v-for="product in this.products" v-bind:key="product.id">
        <ProducCardComponent :id="product.id" :image="product.image" :name="product.name" :description="product.description" :article_number="product.article_number"/>
      </div>
    </div>
  </div>

</template>

<script>
import axios from "axios";
import ProducCardComponent from '../components/ProductCardComponent.vue'

export default {
  name: 'ProductsView',
  components: {
    ProducCardComponent
  },
  data() {
    return {
      products: ""
    }
  },
  mounted() {
    this.getProducts();
  },
  methods: {
    getProducts() {
      const url = "http://localhost/products.php?";

      axios.get(url).then(result => {
        this.products = result.data;
      }, error => {
        console.error(error);
      });
    }
  }
}


</script>

<style scoped>

</style>