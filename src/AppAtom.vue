<template>

<button class="botonsend" v-on:click="send"></button>
<div 
  class="drop-zone1-Nucleus"
  @drop = "onDrop($event,0)"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  class="drag-elConducting"
  draggable="false"
  @dragstart="startDrag($event, 1)"
  >
  <h1 v-if="getItem(0).tag == 2" class="nucelustitle"></h1>
  <h1 v-if="getItem(0).tag == 0" class="nucelustitle">Nucleus</h1>
  <h1 v-if="getItem(0).tag == 1" class="electrontitle">Electron</h1>
  </div>
</div>
<div 
  class="drop-zone2-Electron"
  @drop = "onDrop($event,1)"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  class="drag-elInsulating"
  draggable="false"
  @dragstart="startDrag($event, 2)"
  >
  <h1 v-if="getItem(1).tag == 0" class="nucelustitle">Nucleus</h1>
  <h1 v-if="getItem(1).tag == 1" class="electrontitle">Electron</h1>
  </div>
</div>
<div 
  class="drop-zone-Electron2"
  @drop = "onDrop($event,2)"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  v-on="item in getItem(3)" 
  class="drag-el"
  draggable="false"
  @dragstart="startDrag($event, item)"
  >
  <h1 v-if="getItem(2).tag == 0" class="nucelustitle">Nucleus</h1>
  <h1 v-if="getItem(2).tag == 1" class="electrontitle">Electron</h1>
  </div>
</div>

<div 
  class="drop-zone-Electron3"
  @drop = "onDrop($event,3)"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  v-on="item in getItem(2)" 
  class="drag-el"
  draggable="false"
  @dragstart="startDrag($event, item)"
  >
  <h1 v-if="getItem(3).tag == 0" class="nucelustitle">Nucleus</h1>
  <h1 v-if="getItem(3).tag == 1" class="electrontitle">Electron</h1>
  </div>
</div>

<div 
  class="drop-zone-TitleNucleus"
  @drop = "onDrop($event,4)"
  @dragenter.prevent
  @dragover.prevent
>
  <div  
  class="drag-el"
  draggable="true"
  @dragstart="startDrag($event, 0)"
  >
  <h1 class="nucelustitle">Nucleus</h1>
  </div>
</div>

<div 
  class="drop-zone-TitleElectron"
  @drop = "onDrop($event,4)"
  @dragenter.prevent
  @dragover.prevent
>
  <div   
  class="drag-el"
  draggable="true"
  @dragstart="startDrag($event, 1)"
  >
  <h1 class="electrontitle">Electron</h1> 
  </div>
</div>





<img class ="imagen" src="assets/TabletopAtomWhite.png" alt=""/>
</template>

<script>

import { ref } from 'vue' 
 
            var Socket = new io('http://localhost:5005/', {
                    pathname: '/socket.io',
                    transports: ['websocket'],
        });
        
            

export default {
  setup() {

    const items = ref([
      {id: 0, title: 'Nucleus', tag: 2},
      {id: 1, title: 'ElectronR', tag: 2},
      {id: 2, title: 'ElectronL', tag: 2},
      {id: 3, title: 'ElectronD', tag: 2}
    ])

    const getItem = (id) => {
      return items.value.find((item) => item.id == id)
    }

    const startDrag = (event,tag) => {
      console.log(tag)
      event.dataTransfer.dropEffect = 'move'
      event.dataTransfer.effectAllowed = 'move'
      event.dataTransfer.setData('tagNumber', tag)
    }

    const onDrop = (event, id) => {
      const tagNumber = event.dataTransfer.getData('tagNumber')
      const item = items.value.find((item) => item.id == id)
      item.tag = tagNumber
    }

    return {
      getItem,
      onDrop,
      startDrag
    }
  },
      name: 'send',
      methods:{
        send(message){
                
                var session_info = sessionStorage.getItem('chat_session');
                var index = session_info.indexOf("session_id");
                let session_id = session_info.substr(index+13, 32);
                Socket.emit("user_uttered",{"message":message,"customData":{"language":"en"},"session_id":session_id});
            }
      }
}
</script>
<style>
.Game {
  font-family: Avenir, Helvetica, Arial, sans-serif;
   float: left;
    width: 60%;
    height: 100%;
    z-index: 5;
}
.imagen {
  width: 60%;
  position: fixed;
  z-index: 1;
  object-fit: fill;
}

.imageIcon {
  object-fit: cover;
  width: 15%;
  margin-left: 15%;
}
.Conducting-Title {
  position:absolute;
  margin-top: 15%;
  margin-left: 12.5%;
  margin-right: 70%;
  color: #fb91af;
  z-index: 3;
}

.Insulating-Title {
  position:absolute;
  margin-top: 15%;
  margin-left: 40%;
  margin-right: 70%;
  color: transparent;
  z-index: 3;
}
.drop-zone1-Nucleus {
   text-align:center;
  position:absolute;
  margin-top: 18%;
  margin-left: 25%;
  margin-right: 70%;
  width: 10%;
  background-color: transparent;
  height: 20%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}
.drop-zone1 > div{
  background-color: transparent;
  padding:1em;
  }

.drop-zone1 > div:nth-child(odd){
  background-color: transparent;
}
.drop-zone2-Electron {
   text-align:center;
  position:absolute;
  margin-top: 12.5%;
  margin-left: 35.5%;
  margin-right: 70%;
  width: 5%;
  background-color: transparent;
  height: 10%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}
.drop-zone2 > div{
  background-color: transparent;
  padding:1em;
  }

.drop-zone2 > div:nth-child(odd){
  background-color: transparent;
}
.drop-zone-Electron2 {
  text-align:center;
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 18%;
  margin-left: 15%;
  width: 5%;
  background-color: transparent;
  height: 10%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}
.drop-zone3 > div{
  background-color: transparent;
  padding:1em;
  }

.drop-zone3 > div:nth-child(odd){
  background-color: transparent;
}

.drop-zone-Electron3 {
   text-align:center;
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 30%;
  margin-left: 32%;
  background-color: transparent;
  width: 5%;
  height: 10%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-TitleNucleus {
   text-align:center;
  position:absolute;
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  margin-top: 40%;
  margin-left: 15%;
  width: 5%;
  background-color: #fb91af;
  border-radius: 20px;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  text-align:center;
}

.drop-zone-TitleElectron {
  position:absolute;
  text-align:center;
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  margin-top: 40%;
  margin-left: 40%;
  width: 5%;
  background-color: #fb91af;
  border-radius: 20px;
  height: 8%;
  min-width: 5%;
  z-index: 4;
}

.nucelustitle {
  font-family: 'Roboto', sans-serif;
  color: black;
 padding-top: 18%;
  text-align: center;
}

.electrontitle {
  text-align:center;
  font-family: 'Roboto', sans-serif;
  color: black;
  padding-top: 18%;
  text-align: center;
}

.drag-el {
  position: relative;
  text-align:center;
  width: 300%;
  height: 100%;
  z-index: 8;
}

.drag.el:nth-last-of-type(1){
  margin-bottom: 0%;
}
.TitleofBox{
  background-color: rgba(255, 136, 0, 1);
  position:absolute;
  margin-top: 2.5%;
  margin-left: 2.5%;
  margin-right: 70%;
  width: 55%;
  z-index: 8;
}
.ItemsTitle{
position: relative;
font-family: Avenir, Helvetica, Arial, sans-serif;
font-size: 120%;
padding-left: 46%;
}

.botonsend {
  position: absolute;
  margin-left: 30%;
  z-index: 10;
}

.drag-elConducting {
  position:absolute;
  width: 100%;
  background-attachment: fixed;
  background-repeat: no-repeat;
  height: 100%;
  z-index: 8;
}

.drag-elInsulating {
  position:absolute;
  width: 100%;
  background-attachment: fixed;
  background-repeat: no-repeat;
  height: 100%;
  z-index: 8;
}
</style>
