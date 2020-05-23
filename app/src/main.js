import Vue from 'vue'
import App from './App.vue'
import './registerServiceWorker'
import router from './router'
require('vue-ionicons/ionicons.css')

Vue.config.productionTip = false

Vue.config.ignoredElements = [/^ion-/]


new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
