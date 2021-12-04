import { createApp } from 'vue'
import App from './App.vue'

import VueSessionStorage from 'vue-sessionstorage'
Vue.use(VueSessionStorage)

createApp(App).mount('.Game')
