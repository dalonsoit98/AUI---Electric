<template>

<div class="Delay" style="display: none">

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
  <h1 v-if="((getItem(0).tag == 0) && (getItem(1).tag == 1) && (getItem(2).tag == 1) && (getItem(3).tag == 1))" v-on="send('/atom_correct')"></h1>
  <h1 v-if="(!flagCheck() && ((getItem(0).tag != 2) && (getItem(1).tag != 2) && (getItem(2).tag != 2) && (getItem(3).tag != 2) && ((getItem(0).tag == 1) || (getItem(1).tag == 0) || (getItem(2).tag == 0) || (getItem(3).tag == 0))))" v-on="send('/atom_incorrect')"></h1>
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
  <h1 v-if="getItem(1).tag == 1" class="electrontitle" >Electron</h1>
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


</div>
<img class ="Atom" style="display: none" src="assets/AtomB.png" alt=""/>

<button id="ButtonDone" v-if="(flagCheck() || ((getItem(0).tag == 0) && (getItem(1).tag == 1) && (getItem(2).tag == 1) && (getItem(3).tag == 1)))" v-on="flagStayM()" v-on:click=nextPage>Done</button>

<img class ="imagen" src="assets/Tabletop-new.png" alt=""/>
</template>

<script>
let flagStay = 0;
let atomCorrectFlag = 0;
let atomInCorrectFlag = 0;

$(document).ready(function() {
  $('.Atom').delay(5000).fadeIn(2000); 
});

$(document).ready(function() {
  $('.Delay').delay(7500).fadeIn(0); 
});

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
      startDrag,
    }
  },
      name: 'send',
      methods:{
        send(message){
                if ((message == '/atom_correct') && (atomCorrectFlag == 0)){
                  atomCorrectFlag += 1;
                var session_info = sessionStorage.getItem('chat_session');
                var index = session_info.indexOf("session_id");
                let session_id = session_info.substr(index+13, 32);
                console.log(atomCorrectFlag);
                Socket.emit("user_uttered",{"message":message,"customData":{"language":"en"},"session_id":session_id});
                }

                if ((message == '/atom_incorrect') && (atomInCorrectFlag == 0)){
                  atomInCorrectFlag +=1;
                var session_info = sessionStorage.getItem('chat_session');
                var index = session_info.indexOf("session_id");
                let session_id = session_info.substr(index+13, 32);
                console.log(message);
                Socket.emit("user_uttered",{"message":message,"customData":{"language":"en"},"session_id":session_id});
                }
            },
            nextPage() {
              sessionStorage.clear();
              window.location.href="http://localhost:3000/src/Circuit.html?";
            },
            flagStayM(){
              flagStay = 1;
            },
            flagCheck(){
              return (flagStay==1)
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
  z-index: 0;
  object-fit: fill;
}

.Atom {
  width: 32.8%;
  height: 72.35%;
  margin-left: 14.6%;
  margin-top: 7.2%;
  position: fixed;
  z-index: 1;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
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

@media (min-width: 0px) and (max-width: 1366px){
.drop-zone1-Nucleus {
  text-align:center;
  position:absolute;
  margin-top: 19.23%;
  margin-left: 26.25%;
  margin-right: 70%;
  width: 8%;
  background-color: transparent;
  height: 16.75%;
  z-index: 4;
  background-color: rgb(255,255,255,0.3);
  border-radius: 20px;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}
}

@media (min-width: 1367px){
.drop-zone1-Nucleus {
  text-align:center;
  position:absolute;
  margin-top: 20%;
  margin-left: 25.5%;
  margin-right: 70%;
  width: 9%;
  background-color: transparent;
  height: 17%;
  z-index: 4;
  background-color: rgb(255,255,255,0.3);
  border-radius: 20px;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}
}

.drop-zone1 > div{
  background-color: transparent;
  padding:1em;
  }

.drop-zone1 > div:nth-child(odd){
  background-color: transparent;
}
@media (min-width: 0px) and (max-width: 1366px){
.drop-zone2-Electron {
   text-align:center;
  position:absolute;
  margin-top: 13.15%;
  margin-left: 36.35%;
  margin-right: 70%;
  width: 5%;
  background-color: transparent;
  height: 10%;
  background-color: rgb(255,255,255,0.3);
  border-radius: 20px;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}
}

@media (min-width: 1367px){
.drop-zone2-Electron {
   text-align:center;
  position:absolute;
  margin-top: 13.55%;
  margin-left: 36.3%;
  margin-right: 70%;
  width: 5%;
  background-color: transparent;
  height: 10%;
  background-color: rgb(255,255,255,0.3);
  border-radius: 20px;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}
}

.drop-zone2 > div{
  background-color: transparent;
  padding:1em;
  }

.drop-zone2 > div:nth-child(odd){
  background-color: transparent;
}

@media (min-width: 0px) and (max-width: 1366px){
.drop-zone-Electron2 {
  text-align:center;
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 19.25%;
  margin-left: 16.85%;
  background-color: rgb(255,255,255,0.3);
  border-radius: 20px;
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
}

@media (min-width: 1367px){
.drop-zone-Electron2 {
  text-align:center;
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 20.2%;
  margin-left: 16.8%;
  background-color: rgb(255,255,255,0.3);
  border-radius: 20px;
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
}


.drop-zone3 > div{
  background-color: transparent;
  padding:1em;
  }

.drop-zone3 > div:nth-child(odd){
  background-color: transparent;
}

@media (min-width: 0px) and (max-width: 1366px){
.drop-zone-Electron3 {
   text-align:center;
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 31.78%;
  margin-left: 31.35%;
  background-color: transparent;
  width: 5%;
  height: 10%;
  background-color: rgb(255,255,255,0.3);
  border-radius: 20px;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}
}

@media (min-width: 1367px){
.drop-zone-Electron3 {
   text-align:center;
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 33.55%;
  margin-left: 31.35%;
  background-color: transparent;
  width: 5%;
  height: 10%;
  background-color: rgb(255,255,255,0.3);
  border-radius: 20px;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}
}

@media (min-width: 0px) and (max-width: 1366px){
.drop-zone-TitleNucleus {
   text-align:center;
  position:absolute;
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  margin-top: 40%;
  margin-left: 15%;
  width: 5%;
  background-color: #d350a1;
  border-width: 1px;
  border-style: solid;
  border-color:black;
  border-radius: 20px;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  text-align:center;
}
}

@media (min-width: 1367px){
.drop-zone-TitleNucleus {
   text-align:center;
  position:absolute;
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  margin-top: 40%;
  margin-left: 15%;
  width: 5%;
  background-color: #d350a1;
  border-width: 1px;
  border-style: solid;
  border-color:black;
  border-radius: 20px;
  height: 6%;
  min-width: 5%;
  z-index: 4;
  text-align:center;
}
}

@media (min-width: 0px) and (max-width: 1366px){
.drop-zone-TitleElectron {
  position:absolute;
  text-align:center;
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  margin-top: 40%;
  margin-left: 40%;
  width: 5%;
  background-color: #d350a1;
  border-width: 1px;
  border-style: solid;
  border-color:black;
  border-radius: 20px;
  height: 8%;
  min-width: 5%;
  z-index: 4;
}
}

@media (min-width: 1367px){
.drop-zone-TitleElectron {
  position:absolute;
  text-align:center;
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  margin-top: 40%;
  margin-left: 40%;
  width: 5%;
  background-color: #d350a1;
  border-width: 1px;
  border-style: solid;
  border-color:black;
  border-radius: 20px;
  height: 6%;
  min-width: 5%;
  z-index: 4;
}
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
