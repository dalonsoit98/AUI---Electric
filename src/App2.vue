<template>

<div 
  class="drop-zone1-Conducting"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  class="drag-elConducting"
  draggable="true"
  @dragstart="startDrag($event, 1)"
  >
  </div>
</div>

<div 
  class="drop-zone2-Insulating"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  class="drag-elInsulating"
  draggable="true"
  @dragstart="startDrag($event, 2)"
  >
  </div>
</div>

<div 
  class="drop-zone-Pencil"
  @drop = "onDrop($event,3)"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  v-on="item in getItem(3)" 
  class="drag-el"
  draggable="true"
  @dragstart="startDragBulb($event, 3)"
  >
    <img v-if="getItem(3).tag == 1" class="imageIcon" src = "assets/Check.png">
    <img v-if="getItem(3).tag == 2" class="imageIcon" src = "assets/Cross.png">
  </div>
</div>

<div 
  class="drop-zone-Cork"
  @drop = "onDrop($event,2)"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  v-on="item in getItem(2)" 
  class="drag-el"
  draggable="true"
  @dragstart="startDragBulb($event, 2)"
  >
    <img v-if="getItem(2).tag == 1" class="imageIcon" src = "assets/Check.png">
    <img v-if="getItem(2).tag == 2" class="imageIcon" src = "assets/Cross.png">
  </div>
</div>

<div 
  class="drop-zone-Lego"
  @drop = "onDrop($event,4)"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  v-on="item in getItem(4)"  
  class="drag-el"
  draggable="true"
  @dragstart="startDragBulb($event, 4)"
  >
    <img v-if="getItem(4).tag == 1" class="imageIcon" src = "assets/Check.png">
    <img v-if="getItem(4).tag == 2" class="imageIcon" src = "assets/Cross.png">
  </div>
</div>

<div 
  class="drop-zone-Lemon"
  @drop = "onDrop($event,1)"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  v-on="item in getItem(1)" 
  class="drag-el"
  draggable="true"
  @dragstart="startDragBulb($event, 1)"
  >
    <img v-if="getItem(1).tag == 1" class="imageIcon" src = "assets/Check.png">
    <img v-if="getItem(1).tag == 2" class="imageIcon" src = "assets/Cross.png">
  </div>
</div>

<div 
  class="drop-zone-Potato"
  @drop = "onDrop($event,0)"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  v-on="item in getItem(0)" 
  class="drag-el"
  draggable="true"
  @dragstart="startDragBulb($event, 0)"
  >
    <img v-if="getItem(0).tag == 1" class="imageIcon" src = "assets/Check.png">
    <img v-if="getItem(0).tag == 2" class="imageIcon" src = "assets/Cross.png">
  </div>
</div>

<div 
  class="drop-zone-Rubber"
  @drop = "onDrop($event,5)"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  v-on="item in getItem(5)" 
  class="drag-el"
  draggable="true"
  @dragstart="startDragBulb($event, 5)"
  >
    <img v-if="getItem(5).tag == 1" class="imageIcon" src = "assets/Check.png">
    <img v-if="getItem(5).tag == 2" class="imageIcon" src = "assets/Cross.png">
  </div>
</div>

  <div
      class="drop-zone-5Euros"
      @drop = "onDrop($event,6)"
      @dragenter.prevent
      @dragover.prevent
  >
    <div
        v-on="item in getItem(6)"
        class="drag-el"
        draggable="true"
        @dragstart="startDragBulb($event, 6)"
    >
      <img v-if="getItem(6).tag == 1" class="imageIcon" src = "assets/Check.png">
      <img v-if="getItem(6).tag == 2" class="imageIcon" src = "assets/Cross.png">
    </div>
    
</div>

  <div
      class="drop-zone-Log"
      @drop = "onDrop($event,7)"
      @dragenter.prevent
      @dragover.prevent
  >
    <div
        v-on="item in getItem(7)"
        class="drag-el"
        draggable="true"
        @dragstart="startDragBulb($event, 7)"
    >
      <img v-if="getItem(7).tag == 1" class="imageIcon" src = "assets/Check.png">
      <img v-if="getItem(7).tag == 2" class="imageIcon" src = "assets/Cross.png">
    </div>
  </div>

  <div
      class="drop-zone-Clip"
      @drop = "onDrop($event,8)"
      @dragenter.prevent
      @dragover.prevent
  >
    <div
        v-on="item in getItem(8)"
        class="drag-el"
        draggable="true"
        @dragstart="startDragBulb($event, 8)"
    >
      <img v-if="getItem(8).tag == 1" class="imageIcon" src = "assets/Check.png">
      <img v-if="getItem(8).tag == 2" class="imageIcon" src = "assets/Cross.png">
    </div>
  </div>

  <div
      class="drop-zone-GoldBar"
      @drop = "onDrop($event,10)"
      @dragenter.prevent
      @dragover.prevent
  >
    <div
        v-on="item in getItem(10)"
        class="drag-el"
        draggable="true"
        @dragstart="startDragBulb($event, 10)"
    >
      <img v-if="getItem(10).tag == 1" class="imageIcon" src = "assets/Check.png">
      <img v-if="getItem(10).tag == 2" class="imageIcon" src = "assets/Cross.png">
    </div>
  </div>
  <div
      class="drop-zone-GlassBottle"
      @drop = "onDrop($event,11)"
      @dragenter.prevent
      @dragover.prevent
  >
    <div
        v-on="item in getItem(11)"
        class="drag-el"
        draggable="true"
        @dragstart="startDragBulb($event, 11)"
    >
      <img v-if="getItem(11).tag == 1" class="imageIcon" src = "assets/Check.png">
      <img v-if="getItem(11).tag == 2" class="imageIcon" src = "assets/Cross.png">
    </div>
  </div>
  <div
      class="drop-zone-Diamond"
      @drop = "onDrop($event,9)"
      @dragenter.prevent
      @dragover.prevent
  >
    <div
        v-on="item in getItem(9)"
        class="drag-el"
        draggable="true"
        @dragstart="startDragBulb($event, 9)"
    >
      <img v-if="getItem(9).tag == 1" class="imageIcon" src = "assets/Check.png">
      <img v-if="getItem(9).tag == 2" class="imageIcon" src = "assets/Cross.png">
    </div>
  </div>

  <div
      class="drop-zone-LigthBulb"
      @drop = "onDrop($event,12)"
  >
    <div
        class="drag-el-Bulb"
        draggable="false"
        @dragstart="startDragBulb($event, 12)"
        @change="update"
    >
      <img v-if="getItem(12).conductivity == 0" class="imageIconBulb" src = "assets/Lightbulb Off.png">
      <img v-if="getItem(12).conductivity == 1" class="imageIconBulb" src = "assets/Lightbulb On - Strong.png">
    </div>
  </div>

   <div
      class="drop-zone-Material"
      @drop = "onDropBulb($event, 12)"
      @dragover.prevent
  >
  <div
        class="drag-el-Material"
        draggable="false"
    >
  <img draggable="false" class="materialIcon" :src= getItem(12).title>
  </div>
  </div>

<img class ="Circuit" src="assets/Circuit.png"/>
<h1 v-if=" (flagCheck() && (getItem(12).title != 'assets/Transparent.png'))" v-on= "send('/first_object')" ></h1>
<button id="ButtonDone" v-if="getItem(12).title != 'assets/Transparent.png'" v-on:click=datasendFinal(getItems())>Done</button>
<img class ="imagen" src="assets/Tabletop-new.png" alt=""/>
</template>

<script>

let flagFirst = 0;

import { ref } from 'vue' 
 
            var Socket = new io('http://localhost:5005/', {
                    pathname: '/socket.io',
                    transports: ['websocket'],
        });  

export default {
  setup() {
    // Images of objects to drag
    const imgCon = new Image();
    imgCon.src="assets/CheckDrag.png";

    const imgIso = new Image();
    imgIso.src="assets/CrossDrag.png";

    const imgPot = new Image();
    imgPot.src="assets/PotatoDrag.png";

    const imgLem = new Image();
    imgLem.src="assets/LemonDrag.png";

    const imgCork = new Image();
    imgCork.src="assets/CorkDrag.png";

    const imgPen = new Image();
    imgPen.src="assets/PencilDrag.png";

    const imgLego = new Image();
    imgLego.src="assets/LegoDrag.png";

    const imgRub = new Image();
    imgRub.src="assets/RubberBandDrag.png";

    const img5 = new Image();
    img5.src="assets/5EurosDrag.png";

    const imgLog = new Image();
    imgLog.src="assets/LogDrag.png";

    const imgClip = new Image();
    imgClip.src="assets/Paper ClipDrag.png";

    const imgDiam = new Image();
    imgDiam.src="assets/DiamondDrag.png";

    const imgGold = new Image();
    imgGold.src="assets/Gold BarDrag.png";
    
    const imgGlass = new Image();
    imgGlass.src="assets/Glass BottleDrag.png";

    if (localStorage.getItem('ArrayItemsBak') == null){
    var sessionString = localStorage.getItem('ArrayItems');
    var Page2Array = JSON.parse(sessionString);
    } else {
    var sessionString = localStorage.getItem('ArrayItems');
    var Page2Array = JSON.parse(sessionString);
    }

    const items = ref(Page2Array);
    items.value.find((item) => item.id == 12).title = 'assets/Transparent.png';

    var material = {id: null, title: 'assets/Lego.png', conductivity: 0, tag: null} 

    const getItem = (id) => {
      return items.value.find((item) => item.id == id)
    }

    const getItems = () => {
      return items.value
    }

    const getMat = () => {
      return material
    }

    const startDrag = (event,tag) => {
      console.log(tag)
      if(tag==1){
      const drag = event.dataTransfer
      drag.setDragImage(imgCon,0,0)
      }
      if(tag==2){
      const drag = event.dataTransfer
      drag.setDragImage(imgIso,0,0)
      }
      event.dataTransfer.dropEffect = 'move'
      event.dataTransfer.effectAllowed = 'move'
      event.dataTransfer.setData('tagNumber', tag)
      event.dataTransfer.setData('id', 13)
    }

    const startDragBulb = (event,id) => {
      console.log(id)
      if(id==0){
      const drag = event.dataTransfer
      drag.setDragImage(imgPot,0,0)
      }
      if(id==1){
      const drag = event.dataTransfer
      drag.setDragImage(imgLem,0,0)
      }
      if(id==2){
      const drag = event.dataTransfer
      drag.setDragImage(imgCork,0,0)
      }
      if(id==3){
      const drag = event.dataTransfer
      drag.setDragImage(imgPen,0,0)
      }
      if(id==4){
      const drag = event.dataTransfer
      drag.setDragImage(imgLego,0,0)
      }
      if(id==5){
      const drag = event.dataTransfer
      drag.setDragImage(imgRub,0,0)
      }
      if(id==6){
      const drag = event.dataTransfer
      drag.setDragImage(img5,0,0)
      }
      if(id==7){
      const drag = event.dataTransfer
      drag.setDragImage(imgLog,0,0)
      }
     if(id==8){
      const drag = event.dataTransfer
      drag.setDragImage(imgClip,0,0)
      }
      if(id==9){
      const drag = event.dataTransfer
      drag.setDragImage(imgDiam,0,0)
      }
      if(id==10){
      const drag = event.dataTransfer
      drag.setDragImage(imgGold,0,0)
      }
      if(id==11){
      const drag = event.dataTransfer
      drag.setDragImage(imgGlass,0,0)
      }

      event.dataTransfer.dropEffect = 'move'
      event.dataTransfer.effectAllowed = 'move'
      event.dataTransfer.setData('id', id)
    }

    const onDrop = (event, id) => {
      const idO = event.dataTransfer.getData('id')
      console.log(idO)
      if (idO != 13){
        return
      } else {
        const tagNumber = event.dataTransfer.getData('tagNumber')
        const item = items.value.find((item) => item.id == id)
        item.tag = tagNumber
      }
    }

    const onDropBulb = (event, idmat) => {
      const tagNumber = event.dataTransfer.getData('tagNumber')
      const id = event.dataTransfer.getData('id')
      if (id == 13){
        const itemMat = items.value.find((item) => item.id == idmat)
        const itemReal = items.value.find((item) => item.title == itemMat.title)
        itemReal.tag = tagNumber
      } else {
        const item = items.value.find((item) => item.id == id)
        const mat = items.value.find((mat) => mat.id == idmat)
        mat.title = item.title
        mat.conductivity = item.conductivity
        console.log(id)
      }
    }

    return {
      getItem,
      onDrop,
      startDrag,
      material,
      onDropBulb,
      startDragBulb,
      getMat,
      getItems
    }
  },
      name: 'send',
      methods:{
        send(message){
                flagFirst +=1;
                var session_info = sessionStorage.getItem('chat_session');
                var index = session_info.indexOf("session_id");
                let session_id = session_info.substr(index+13, 32);
                Socket.emit("user_uttered",{"message":message,"customData":{"language":"en"},"session_id":session_id});
            },
        datasendFinal(items){
                console.log(items);
                if (localStorage.getItem('ArrayItemsBak') == null){
                var sessionString = localStorage.getItem('ArrayItems');
                var Page2Array = JSON.parse(sessionString);
                localStorage.setItem('ArrayItems1', JSON.stringify(Page2Array));
                localStorage.setItem('ArrayItems2', JSON.stringify(items));
                } else {
                var sessionString = localStorage.getItem('ArrayItemsBak');
                var Page2Array = JSON.parse(sessionString);
                localStorage.setItem('ArrayItems1', JSON.stringify(Page2Array));
                localStorage.setItem('ArrayItems2', JSON.stringify(items));
                }
                sessionStorage.clear();
                window.location.href="http://localhost:3000/src/Final.html?";
        },
        flagCheck(){
          return (flagFirst == 0)
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
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;

}
.imagen {
  width: 60%;
  position: fixed;
  z-index: 1;
  object-fit: fill;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.imageIcon {
  object-fit: cover;
  width: 15%;
  margin-left: 15%;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}
.drop-zone1-Conducting {
  position:absolute;
  margin-top: 15%;
  margin-left: 50%;
  margin-right: 70%;
  width: 10%;
  background-image: url('assets/Check.png');
  background-attachment: fixed;
  background-repeat: no-repeat;
  background-position: 54.25% 38%;
  background-size: 4%;
  height: 16%;
  z-index: 4;
}
.drop-zone1 > div{
  background-color: transparent;
  padding:1em;
  }

.drop-zone1 > div:nth-child(odd){
  background-color: transparent;
}
@media (min-width: 0px) and (max-width: 1366px){
.drop-zone2-Insulating {
  position:absolute;
  margin-top: 25%;
  margin-left: 50%;
  margin-right: 70%;
  width: 10%;
  background-image: url('assets/Cross.png');
  background-attachment: fixed;
  background-repeat: no-repeat;
  background-position: 54.25% 62%;
  background-size: 4%;
  height: 16%;
  z-index: 4;
}
}

@media (min-width: 1367px){
.drop-zone2-Insulating {
  position:absolute;
  margin-top: 25%;
  margin-left: 50%;
  margin-right: 70%;
  width: 8%;
  background-image: url('assets/Cross.png');
  background-attachment: fixed;
  background-repeat: no-repeat;
  background-position: 54% 57%;
  background-size: 4%;
  height: 12%;
  z-index: 4;
}
}

.drop-zone2 > div{
  background-color: transparent;
  padding:1em;
  }

.drop-zone2 > div:nth-child(odd){
  background-color: transparent;
}
.drop-zone-Pencil {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 6%;
  margin-left: 7.5%;
  width: 14%;
  background-image: url('assets/Pencil.png');
  background-position: center;
  background-repeat: no-repeat;
  background-size: 70%;
  height: 8%;
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

.drop-zone-Cork {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 25%;
  margin-left: 7%;
  width: 14%;
  background-image: url('assets/Cork.png');
  background-repeat: no-repeat;
  background-size: 50%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
}

.drop-zone-Lego {
  position:absolute;
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  margin-top: 35%;
  margin-left: 9.5%;
  width: 10%;
  background-image: url('assets/Lego.png');
  background-repeat: no-repeat;
  background-size: 58%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
}

.drop-zone-Lemon {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 35%;
  margin-left: 30%;
  width: 10%;
  background-image: url('assets/Lemon.png');
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
}

.drop-zone-Potato {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 35%;
  margin-left: 20%;
  width: 10%;
  background-image: url('assets/Potato.png');
  background-repeat: no-repeat;
  background-size: 50%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
}

.drop-zone-Rubber {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 15%;
  margin-left: 9.5%;
  width: 10%;
  background-image: url('assets/RubberBand.png');
  background-repeat: no-repeat;
  background-size: 70%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
}

.drop-zone-5Euros {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 20%;
  margin-left: 9.5%;
  width: 10%;
  background-image: url('assets/5Euros.png');
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
}

.drop-zone-Log {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 35%;
  margin-left: 38%;
  width: 10%;
  background-image: url('assets/Log.png');
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
}

.drop-zone-Clip {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 35%;
  margin-left: 46%;
  width: 10%;
  background-image: url('assets/Paper Clip.png');
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
}

.drop-zone-Water {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 10%;
  margin-left: 9.5%;
  width: 10%;
  background-image: url('assets/Water.png');
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
}

.drop-zone-GoldBar {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 30%;
  margin-left: 20%;
  width: 10%;
  background-image: url('assets/Gold Bar.png');
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
}

.drop-zone-GlassBottle {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 10%;
  margin-left: 9.5%;
  width: 10%;
  background-image: url('assets/Glass Bottle.png');
  background-repeat: no-repeat;
  background-size: 75%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
}

.drop-zone-Diamond {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 30%;
  margin-left: 9.5%;
  width: 10%;
  background-image: url('assets/Diamond.png');
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
}

.drop-zone-LigthBulb {

  grid-gap:1em;
  position:absolute;
  margin-top: 1.5%;
  margin-left: 34%;
  width: 10%;
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 12%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drag-el-Bulb {
  position: relative;
  width: 220%;
  min-height: 30%;
  min-width:  30%;
  z-index: 8;
}

.drag-el {
  position: relative;
  
  width: 220%;
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

.Circuit {
  position: absolute !important;
  z-index: 3;
  width: 30%;
  height: 50%;
  margin-left: 22%;
  margin-top: 6%;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

@media (min-width: 0px) and (max-width: 1366px){
.drop-zone-Material {
  grid-gap:1em;
  position:absolute;
  margin-top: 20%;
  margin-left: 33%;
  width: 11%;
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 12%;
  min-width: 5%;
  z-index: 4;
}
}

@media (min-width: 1367px){
.drop-zone-Material {
  grid-gap:1em;
  position:absolute;
  margin-top: 21.75%;
  margin-left: 33.5%;
  width: 10%;
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 12%;
  min-width: 5%;
  z-index: 4;
}
}

.drag-el-Material {
  position: relative;
  width: auto;
  min-height: 30%;
  min-width:  30%;
  object-fit: contain;
  object-position: center;
  z-index: 8;
}

.imageIconBulb {
  object-fit: cover;
  width: 30%;
  margin-left: 8%;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.materialIcon {
  width: 100%;
  margin-left: -4%;
  margin-top: 0%;
  object-position: center;
}
</style>
