<template>

<div class="TitleofBox">
<h1 class="ItemsTitle"> Items </h1>
</div>
<div 
  class="drop-zone1"
  @drop = "onDrop($event,1)"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  v-for="item in getList(1)" 
  :key="item.id" 
  class="drag-el"
  draggable="true"
  @dragstart="startDrag($event, item)"
  >
    <img class="imageIcon" :src = item.icon>
  </div>
</div>

<div 
  class="drop-zone2"
  @drop = "onDrop($event,2)"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  v-for="item in getList(2)" 
  :key="item.id" 
  class="drag-el"
  draggable="true"
  @dragstart="startDrag($event, item)"
  >
    <img class="imageIcon" :src = item.icon>
  </div>
</div>
<div 
  class="drop-zone3"
  @drop = "onDrop($event,3)"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  v-for="item in getList(3)" 
  :key="item.id" 
  class="drag-el"
  draggable="true"
  @dragstart="startDrag($event, item)"
  >
    <img class="imageIcon" :src = item.icon>
  </div>
</div>
<img class ="imagen" src="img/Background.jpg" alt=""/>
</template>

<script>


import { ref } from 'vue'

 
            var Socket = new io('http://localhost:5005/', {
                    pathname: '/socket.io',
                    transports: ['websocket'],
        });
        
            function send(){
                
                var session_info = sessionStorage.getItem('chat_session');
                var index = session_info.indexOf("session_id");
                let session_id = session_info.substr(index+13, 32);
                Socket.emit("user_uttered",{"message":"Hi","customData":{"language":"en"},"session_id":session_id});
            }


export default {
  setup() {

    const items = ref([
      {id: 0, title: 'Potato', icon: "./src/assets/Potato.png", list: 1},
      {id: 1, title: 'Lemon', icon: "./src/assets/Lemon.png", list: 1},
      {id: 2, title: 'Corch', icon: "./src/assets/Cork.png", list: 2},
      {id: 3, title: '5Euros', icon: "./src/assets/5Euros.png", list: 1},
      {id: 4, title: 'Lego', icon: "./src/assets/Lego.png", list: 1},
      {id: 5, title: 'RubberBand', icon: "./src/assets/RubberBand.png", list: 1},
    ])

    const getList = (list) => {
      return items.value.filter((item) => item.list == list)
    }

    const startDrag = (event,item) => {
      console.log(item)
      event.dataTransfer.dropEffect = 'move'
      event.dataTransfer.effectAllowed = 'move'
      event.dataTransfer.setData('itemID', item.id)
    }

    const onDrop = (event, list) => {
      const itemID = event.dataTransfer.getData('itemID')
      const item = items.value.find((item) => item.id == itemID)
      item.list = list
    }
    return {
      getList,
      onDrop,
      startDrag
    }
  },
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
  object-fit: cover;
}

.imageIcon {
  object-fit: cover;
  width: 15%;
  margin-left: 15%;
}

.drop-zone1 {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 4%;
  margin-left: 2.5%;
  margin-right: 70%;
  width: auto;
  background-color: rgb(255, 0, 0, 0.1);
  min-height: 3%;
  max-height: 35%;
  min-width: 55%;
  z-index: 4;
}
.drop-zone1 > div{
  background-color: transparent;
  padding:1em;
  }

.drop-zone1 > div:nth-child(odd){
  background-color: transparent;
}
.drop-zone2 {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 35%;
  margin-left: 2.5%;
  margin-right: 80%;
  width: 25%;
  background-color: rgb(0, 255, 0, 0.1);
  min-height: 4%;
  min-width: 5%;
  z-index: 4;
}
.drop-zone2 > div{
  background-color: transparent;
  padding:1em;
  }

.drop-zone2 > div:nth-child(odd){
  background-color: transparent;
}
.drop-zone3 {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 35%;
  margin-left: 32.5%;
  margin-right: 70%;
  width: 25%;
  background-color: rgb(0, 0, 255, 0.1);
  min-height: 4%;
  min-width: 5%;
  z-index: 4;
}
.drop-zone3 > div{
  background-color: transparent;
  padding:1em;
  }

.drop-zone3 > div:nth-child(odd){
  background-color: transparent;
}
.drag-el {
  position: relative;
 
  float: left;
  width: 180%;
  min-height: 30%;
  min-width:  30%;
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
</style>
