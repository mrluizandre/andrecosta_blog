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
      taxaFixa: 0.0531,
      taxa1:0,
      taxa2:0.043071,
      taxa3: 0.056974,
      taxa4: 0.070557,
      taxa5: 0.083826,
      taxa6: 0.096896,
      taxa7: 0.109626,
      taxa8: 0.122267,
      taxa9: 0.134588,
      taxa10: 0.146594,
      taxa11: 0.15849,
      taxa12: 0.170067
    },
    methods: {
    formatPrice(value) {
      let val = (value/1).toFixed(2).replace('.', ',')
        return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".")
      }
    }
  })
});
