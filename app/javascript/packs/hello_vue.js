import Vue from 'vue/dist/vue.esm'
import TurbolinksAdapter from 'vue-turbolinks'
import VueResource from 'vue-resource'

Vue.use(VueResource)
Vue.use(TurbolinksAdapter)

document.addEventListener('turbolinks:load', () => {
  Vue.http.headers.common['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content')

  var app = new Vue({
    el: '#app',
    data: {
      valorEmprestado: 10000,
      teste3: 1.15,
      teste4: 1.15,
      teste5: 1.15,
      teste7: 1.15,
      teste8: 1.15,
      teste9: 1.15,
      teste10: 1.15,
      teste11: 1.15,
      teste11: 1.15,
    },
    methods: {
    formatPrice(value) {
      let val = (value/1).toFixed(2).replace('.', ',')
        return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".")
      }
    }
  })
});
