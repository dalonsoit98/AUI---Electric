<template>
<button class="botonsend" v-on:click="send"></button>
  <h1 class="FirstAttemp">First Guess</h1>
  <h1 class="SecondAttemp">Second Guess</h1>

  <div v-if="getItem(3).tag != 1" style="background-color: rgb(255, 0, 0, 0.75)" class="backIconPencil"></div>
  <div v-if="getItem2(3).tag != 1" style="background-color: rgb(255, 0, 0, 0.75)" class="backIconPencil2"></div>
  <div v-if="((getItem2(3).tag == 1) && getItem(3).tag!= 1)" style="background-color: rgb(0, 255, 0, 0.75)" class="backIconPencil2"></div>

  <div v-if="getItem(2).tag != 2" class="backIconCork"></div>
  <div v-if="getItem2(2).tag != 2" class="backIconCork2"></div>
  <div v-if="((getItem2(2).tag == 2) && getItem(2).tag!= 2)" style="background-color: rgb(0, 255, 0, 0.75)" class="backIconCork2"></div>

  <div v-if="getItem(0).tag != 1" class="backIconPotato"></div>
  <div v-if="getItem2(0).tag != 1" class="backIconPotato2"></div>
  <div v-if="((getItem2(0).tag == 1) && getItem(0).tag!= 1)" style="background-color: rgb(0, 255, 0, 0.75)" class="backIconPotato2"></div>

  <div v-if="getItem(1).tag != 1" class="backIconLemon"></div>
  <div v-if="getItem2(1).tag != 1" class="backIconLemon2"></div>
  <div v-if="((getItem2(1).tag == 1) && getItem(1).tag!= 1)" style="background-color: rgb(0, 255, 0, 0.75)" class="backIconLemon2"></div>

  <div v-if="getItem(4).tag != 2" class="backIconLego"></div>
  <div v-if="getItem2(4).tag != 2" class="backIconLego2"></div>
  <div v-if="((getItem2(4).tag == 2) && getItem(4).tag!= 2)" style="background-color: rgb(0, 255, 0, 0.75)" class="backIconLego2"></div>

  <div v-if="getItem(5).tag != 2" class="backIconRubberBand"></div>
  <div v-if="getItem2(5).tag != 2" class="backIconRubberBand2"></div>
  <div v-if="((getItem2(5).tag == 2) && getItem(5).tag!= 2)" style="background-color: rgb(0, 255, 0, 0.75)" class="backIconRubberBand2"></div>

  <div v-if="getItem(6).tag != 2" class="backIcon5Euros"></div>
  <div v-if="getItem2(6).tag != 2" class="backIcon5Euros2"></div>
  <div v-if="((getItem2(6).tag == 2) && getItem(6).tag!= 2)" style="background-color: rgb(0, 255, 0, 0.75)" class="backIcon5Euros2"></div>

  <div v-if="getItem(7).tag != 2" class="backIconLog"></div>
  <div v-if="getItem2(7).tag != 2" class="backIconLog2"></div>
  <div v-if="((getItem2(7).tag == 2) && getItem(7).tag!= 2)" style="background-color: rgb(0, 255, 0, 0.75)" class="backIconLog2"></div>

  <div v-if="getItem(8).tag != 1" class="backIconClip"></div>
  <div v-if="getItem2(8).tag != 1" class="backIconClip2"></div>
  <div  v-if="((getItem2(8).tag == 1) && getItem(8).tag!= 1)" style="background-color: rgb(0, 255, 0, 0.75)" class="backIconClip2"></div>

  <div v-if="getItem(9).tag != 2" class="backIconDiamond"></div>
  <div v-if="getItem2(9).tag != 2" class="backIconDiamond2"></div>
  <div  v-if="((getItem2(9).tag == 2) && getItem(9).tag!= 2)" style="background-color: rgb(0, 255, 0, 0.75)" class="backIconDiamond2"></div>

  <div v-if="getItem(10).tag != 1" class="backIconGold"></div>
  <div v-if="getItem2(10).tag != 1" class="backIconGold2"></div>
  <div  v-if="((getItem2(10).tag == 1) && getItem(10).tag!= 1)" style="background-color: rgb(0, 255, 0, 0.75)" class="backIconGold2"></div>

  <div v-if="getItem(11).tag != 2" class="backIconGlassBottle"></div>
  <div v-if="getItem2(11).tag != 2" class="backIconGlassBottle2"></div>
  <div  v-if="((getItem2(11).tag == 2) && getItem(11).tag!= 2)" style="background-color: rgb(0, 255, 0, 0.75)" class="backIconGlassBottle2"></div>


<div 
  class="drop-zone-Pencil"
  @drop = "onDrop($event,3)"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  v-on="item in getItem(3)" 
  class="drag-el"
  draggable="false"
  @dragstart="startDrag($event, item)"
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
  draggable="false"
  @dragstart="startDrag($event, item)"
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
  draggable="false"
  @dragstart="startDrag($event, item)"
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
  draggable="false"
  @dragstart="startDrag($event, item)"
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
  draggable="false"
  @dragstart="startDrag($event, item)"
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
  draggable="false"
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
        draggable="false"
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
        draggable="false"
        @dragstart="startDrag($event, item)"
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
        draggable="false"
        @dragstart="startDrag($event, item)"
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
        draggable="false"
        @dragstart="startDrag($event, item)"
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
        draggable="false"
        @dragstart="startDrag($event, item)"
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
        draggable="false"
        @dragstart="startDrag($event, item)"
    >
      <img v-if="getItem(9).tag == 1" class="imageIcon" src = "assets/Check.png">
      <img v-if="getItem(9).tag == 2" class="imageIcon" src = "assets/Cross.png">
    </div>
  </div>

<hr class="rounded">

  <div 
  class="drop-zone-Pencil2"
  @drop = "onDrop($event,3)"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  v-on="item in getItem(3)" 
  class="drag-el"
  draggable="false"
  @dragstart="startDrag($event, item)"
  >
    <img v-if="getItem2(3).tag == 1" class="imageIcon" src = "assets/Check.png">
    <img v-if="getItem2(3).tag == 2" class="imageIcon" src = "assets/Cross.png">

  </div>
</div>

<div 
  class="drop-zone-Cork2"
  @drop = "onDrop($event,2)"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  v-on="item in getItem(2)" 
  class="drag-el"
  draggable="false"
  @dragstart="startDrag($event, item)"
  >
    <img v-if="getItem2(2).tag == 1" class="imageIcon" src = "assets/Check.png">
    <img v-if="getItem2(2).tag == 2" class="imageIcon" src = "assets/Cross.png">
  </div>
</div>

<div 
  class="drop-zone-Lego2"
  @drop = "onDrop($event,4)"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  v-on="item in getItem(4)"  
  class="drag-el"
  draggable="false"
  @dragstart="startDrag($event, item)"
  >
    <img v-if="getItem2(4).tag == 1" class="imageIcon" src = "assets/Check.png">
    <img v-if="getItem2(4).tag == 2" class="imageIcon" src = "assets/Cross.png">
  </div>
</div>

<div 
  class="drop-zone-Lemon2"
  @drop = "onDrop($event,1)"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  v-on="item in getItem(1)" 
  class="drag-el"
  draggable="false"
  @dragstart="startDrag($event, item)"
  >
    <img v-if="getItem2(1).tag == 1" class="imageIcon" src = "assets/Check.png">
    <img v-if="getItem2(1).tag == 2" class="imageIcon" src = "assets/Cross.png">
  </div>
</div>

<div 
  class="drop-zone-Potato2"
  @drop = "onDrop($event,0)"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  v-on="item in getItem(0)" 
  class="drag-el"
  draggable="false"
  @dragstart="startDrag($event, item)"
  >
    <img v-if="getItem2(0).tag == 1" class="imageIcon" src = "assets/Check.png">
    <img v-if="getItem2(0).tag == 2" class="imageIcon" src = "assets/Cross.png">
  </div>
</div>

<div 
  class="drop-zone-Rubber2"
  @drop = "onDrop($event,5)"
  @dragenter.prevent
  @dragover.prevent
>
  <div 
  v-on="item in getItem(5)" 
  class="drag-el"
  draggable="false"
  >
    <img v-if="getItem2(5).tag == 1" class="imageIcon" src = "assets/Check.png">
    <img v-if="getItem2(5).tag == 2" class="imageIcon" src = "assets/Cross.png">
  </div>
</div>

  <div
      class="drop-zone-5Euros2"
      @drop = "onDrop($event,6)"
      @dragenter.prevent
      @dragover.prevent
  >
    <div
        v-on="item in getItem(6)"
        class="drag-el"
        draggable="false"
    >
      <img v-if="getItem2(6).tag == 1" class="imageIcon" src = "assets/Check.png">
      <img v-if="getItem2(6).tag == 2" class="imageIcon" src = "assets/Cross.png">
    </div>
    
</div>

  <div
      class="drop-zone-Log2"
      @drop = "onDrop($event,7)"
      @dragenter.prevent
      @dragover.prevent
  >
    <div
        v-on="item in getItem(7)"
        class="drag-el"
        draggable="false"
        @dragstart="startDrag($event, item)"
    >
      <img v-if="getItem2(7).tag == 1" class="imageIcon" src = "assets/Check.png">
      <img v-if="getItem2(7).tag == 2" class="imageIcon" src = "assets/Cross.png">
    </div>
  </div>

  <div
      class="drop-zone-Clip2"
      @drop = "onDrop($event,8)"
      @dragenter.prevent
      @dragover.prevent
  >
    <div
        v-on="item in getItem(8)"
        class="drag-el"
        draggable="false"
        @dragstart="startDrag($event, item)"
    >
      <img v-if="getItem2(8).tag == 1" class="imageIcon" src = "assets/Check.png">
      <img v-if="getItem2(8).tag == 2" class="imageIcon" src = "assets/Cross.png">
    </div>
  </div>

  <div
      class="drop-zone-GoldBar2"
      @drop = "onDrop($event,10)"
      @dragenter.prevent
      @dragover.prevent
  >
    <div
        v-on="item in getItem(10)"
        class="drag-el"
        draggable="false"
        @dragstart="startDrag($event, item)"
    >
      <img v-if="getItem2(10).tag == 1" class="imageIcon" src = "assets/Check.png">
      <img v-if="getItem2(10).tag == 2" class="imageIcon" src = "assets/Cross.png">
    </div>
  </div>
  <div
      class="drop-zone-GlassBottle2"
      @drop = "onDrop($event,11)"
      @dragenter.prevent
      @dragover.prevent
  >
    <div
        v-on="item in getItem(11)"
        class="drag-el"
        draggable="false"
        @dragstart="startDrag($event, item)"
    >
      <img v-if="getItem2(11).tag == 1" class="imageIcon" src = "assets/Check.png">
      <img v-if="getItem2(11).tag == 2" class="imageIcon" src = "assets/Cross.png">
    </div>
  </div>
  <div
      class="drop-zone-Diamond2"
      @drop = "onDrop($event,9)"
      @dragenter.prevent
      @dragover.prevent
  >
    <div
        v-on="item in getItem(9)"
        class="drag-el"
        draggable="false"
        @dragstart="startDrag($event, item)"
    >
      <img v-if="getItem2(9).tag == 1" class="imageIcon" src = "assets/Check.png">
      <img v-if="getItem2(9).tag == 2" class="imageIcon" src = "assets/Cross.png">
    </div>
  </div>


<img class ="imagen" src="assets/Tabletop-new.png" alt=""/>
<button id="ButtonReTry" v-on:click=datasend(getItems())>Try Again</button>
</template>

<script>

import { ref } from 'vue' 
 
            var Socket = new io('http://localhost:5005/', {
                    pathname: '/socket.io',
                    transports: ['websocket'],
        });      

export default {
  setup() {

     var sessionString1 = localStorage.getItem('ArrayItems1');
     var Page1Array = JSON.parse(sessionString1);

     var sessionString2 = localStorage.getItem('ArrayItems2');
     var Page2Array = JSON.parse(sessionString2);

    const items = ref(Page1Array)
    console.log(items);

    const items2 = ref(Page2Array)
    console.log(items2);

    const getItem = (id) => {
      return items.value.find((item) => item.id == id)
    }

    const getItems = () => {
      return items.value
    }

     const getItem2 = (id) => {
      return items2.value.find((item) => item.id == id)
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
      getItems,
      onDrop,
      startDrag,
      getItem2
    }
  },
      name: 'send',
      methods:{
        send(message){
                
                var session_info = sessionStorage.getItem('chat_session');
                var index = session_info.indexOf("session_id");
                let session_id = session_info.substr(index+13, 32);
                Socket.emit("user_uttered",{"message":message,"customData":{"language":"en"},"session_id":session_id});
            },
        datasend(items){
                console.log(items);
                localStorage.setItem('ArrayItems', JSON.stringify(items));
                sessionStorage.clear();
                window.location.href="http://localhost:3000/src/2.html?";
        }
      }
}
</script>
<style>
.FirstAttemp{
  position: absolute;
  z-index: 3;
  margin-top: 4%;
  margin-left: 4%;
  color: #d5dfff;
  font-size: 1.2vw;
  text-decoration: underline;
}

.SecondAttemp{
  position: absolute;
  z-index: 3;
  margin-top: 24%;
  margin-left: 4%;
  color: #d5dfff;
  font-size: 1.2vw;
  text-decoration: underline;
}

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

.backIconPencil {
  position: absolute;
  background-color: rgba(255, 0, 0, 0.75);
  width: 8%;
  height: 6%;
  border-radius: 20px;
  margin-top: 6.5%;
  margin-left: 12%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconPencil2 {
  position: absolute;
  object-fit: cover;
  background-color: rgba(255, 0, 0, 0.75);
  border-radius: 20px;
  width: 8%;
  height: 6%;
  margin-top: 26.5%;
  margin-left: 12%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconPotato {
  position: absolute;
  background-color: rgba(255, 0, 0, 0.75);
  width: 8%;
  height: 6%;
  border-radius: 20px;
  margin-top: 12.5%;
  margin-left: 22.5%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconPotato2 {
  position: absolute;
  object-fit: cover;
  background-color: rgba(255, 0, 0, 0.75);
  border-radius: 20px;
  width: 8%;
  height: 6%;
  margin-top: 32.5%;
  margin-left: 22.5%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconLemon {
  position: absolute;
  background-color: rgba(255, 0, 0, 0.75);
  width: 8%;
  height: 6%;
  border-radius: 20px;
  margin-top: 12.5%;
  margin-left: 34.5%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconLemon2 {
  position: absolute;
  object-fit: cover;
  background-color: rgba(255, 0, 0, 0.75);
  border-radius: 20px;
  width: 8%;
  height: 6%;
  margin-top: 32.5%;
  margin-left: 34.5%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconCork {
  position: absolute;
  background-color: rgba(255, 0, 0, 0.75);
  width: 8%;
  height: 6%;
  border-radius: 20px;
  margin-top: 6.5%;
  margin-left: 22.5%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconCork2 {
  position: absolute;
  object-fit: cover;
  background-color: rgba(255, 0, 0, 0.75);
  border-radius: 20px;
  width: 8%;
  height: 6%;
  margin-top: 26.5%;
  margin-left: 22.5%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconLego {
  position: absolute;
  background-color: rgba(255, 0, 0, 0.75);
  width: 8%;
  height: 6%;
  border-radius: 20px;
  margin-top: 6.5%;
  margin-left: 34.5%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconLego2 {
  position: absolute;
  object-fit: cover;
  background-color: rgba(255, 0, 0, 0.75);
  border-radius: 20px;
  width: 8%;
  height: 6%;
  margin-top: 26.5%;
  margin-left: 34.5%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconRubberBand {
  position: absolute;
  background-color: rgba(255, 0, 0, 0.75);
  width: 8%;
  height: 6%;
  border-radius: 20px;
  margin-top: 12.5%;
  margin-left: 12%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconRubberBand2 {
  position: absolute;
  object-fit: cover;
  background-color: rgba(255, 0, 0, 0.75);
  border-radius: 20px;
  width: 8%;
  height: 6%;
  margin-top: 32.5%;
  margin-left: 12%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIcon5Euros {
  position: absolute;
  background-color: rgba(255, 0, 0, 0.75);
  width: 8%;
  height: 6%;
  border-radius: 20px;
  margin-top: 18.5%;
  margin-left: 12%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIcon5Euros2 {
  position: absolute;
  object-fit: cover;
  background-color: rgba(255, 0, 0, 0.75);
  border-radius: 20px;
  width: 8%;
  height: 6%;
  margin-top: 38.5%;
  margin-left: 12%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconLog {
  position: absolute;
  background-color: rgba(255, 0, 0, 0.75);
  width: 8%;
  height: 6%;
  border-radius: 20px;
  margin-top: 6.5%;
  margin-left: 45%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconLog2 {
  position: absolute;
  object-fit: cover;
  background-color: rgba(255, 0, 0, 0.75);
  border-radius: 20px;
  width: 8%;
  height: 6%;
  margin-top: 26.5%;
  margin-left: 45%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconClip {
  position: absolute;
  background-color: rgba(255, 0, 0, 0.75);
  width: 8%;
  height: 6%;
  border-radius: 20px;
  margin-top: 12.5%;
  margin-left: 45%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconClip2 {
  position: absolute;
  object-fit: cover;
  background-color: rgba(255, 0, 0, 0.75);
  border-radius: 20px;
  width: 8%;
  height: 6%;
  margin-top: 32.5%;
  margin-left: 45%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconWater {
  position: absolute;
  background-color: rgba(255, 0, 0, 0.75);
  width: 8%;
  height: 6%;
  border-radius: 20px;
  margin-top: 18.5%;
  margin-left: 22.5%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconWater2 {
  position: absolute;
  object-fit: cover;
  background-color: rgba(255, 0, 0, 0.75);
  border-radius: 20px;
  width: 8%;
  height: 6%;
  margin-top: 38.5%;
  margin-left: 22.5%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconGold {
  position: absolute;
  background-color: rgba(255, 0, 0, 0.75);
  width: 8%;
  height: 6%;
  border-radius: 20px;
  margin-top: 18.5%;
  margin-left: 34.5%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconGold2 {
  position: absolute;
  object-fit: cover;
  background-color: rgba(255, 0, 0, 0.75);
  border-radius: 20px;
  width: 8%;
  height: 6%;
  margin-top: 38.5%;
  margin-left: 34.5%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconGlassBottle {
  position: absolute;
  background-color: rgba(255, 0, 0, 0.75);
  width: 8%;
  height: 6%;
  border-radius: 20px;
  margin-top: 18.5%;
  margin-left: 45%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconGlassBottle2 {
  position: absolute;
  object-fit: cover;
  background-color: rgba(255, 0, 0, 0.75);
  border-radius: 20px;
  width: 8%;
  height: 6%;
  margin-top: 38.5%;
  margin-left: 45%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconDiamond {
position: absolute;
  background-color: rgba(255, 0, 0, 0.75);
  width: 8%;
  height: 6%;
  border-radius: 20px;
  margin-top: 18.5%;
  margin-left: 22.5%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.backIconDiamond2 {
  position: absolute;
  object-fit: cover;
  background-color: rgba(255, 0, 0, 0.75);
  border-radius: 20px;
  width: 8%;
  height: 6%;
  margin-top: 38.5%;
  margin-left: 22.5%;
  z-index: 2;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.Conducting-Title {
  position:absolute;
  margin-top: 10%;
  margin-left: 12%;
  margin-right: 70%;
  color: yellow;
  z-index: 3;
}

.Insulating-Title {
  position:absolute;
  margin-top: 10%;
  margin-left: 40%;
  margin-right: 70%;
  color: black;
  z-index: 3;
}
.drop-zone1-Conducting {
  position:absolute;
  margin-top: 2%;
  margin-left: 5.5%;
  margin-right: 70%;
  width: 20%;
  background-image: url('assets/Check.png');
  background-attachment: fixed;
  background-repeat: no-repeat;
  background-position: 12% 9%;
  background-size: 6%;
  height: 20%;
  z-index: 4;
}
.drop-zone1 > div{
  background-color: transparent;
  padding:1em;
  }

.drop-zone1 > div:nth-child(odd){
  background-color: transparent;
}
.drop-zone2-Insulating {
  position:absolute;
  margin-top: 2%;
  margin-left: 32.5%;
  margin-right: 70%;
  width: 20%;
  background-image: url('assets/Cross.png');
  background-attachment: fixed;
  background-repeat: no-repeat;
  background-position: 42% 9%;
  background-size: 6%;
  height: 20%;
  z-index: 4;
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
  margin-left: 12%;
  width: 8%;
  background-image: url('assets/Pencil.png');
  background-position: center;
  background-repeat: no-repeat;
  background-size: 70%;
  height: 8%;
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

.drop-zone-Cork {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 6%;
  margin-left: 22.5%;
  width: 8%;
  background-image: url('assets/Cork.png');
  #background-attachment: fixed;
  background-repeat: no-repeat;
  background-size: 50%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-Lego {
  position:absolute;
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  margin-top: 6%;
  margin-left: 35.5%;
  width: 6%;
  background-image: url('assets/Lego.png');
  #background-attachment: fixed;
  background-repeat: no-repeat;
  background-size: 58%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-Lemon {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 12%;
  margin-left: 35.5%;
  width: 6%;
  background-image: url('assets/Lemon.png');
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-Potato {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 12%;
  margin-left: 23.5%;
  width: 6%;
  background-image: url('assets/Potato.png');
  #background-attachment: fixed;
  background-repeat: no-repeat;
  background-size: 50%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-Rubber {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 12%;
  margin-left: 13%;
  width: 6%;
  background-image: url('assets/RubberBand.png');
  background-repeat: no-repeat;
  background-size: 70%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-5Euros {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 18%;
  margin-left: 12.5%;
  width: 7%;
  background-image: url('assets/5Euros.png');
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-Log {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 6%;
  margin-left: 46%;
  width: 6%;
  background-image: url('assets/Log.png');
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-Clip {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 12%;
  margin-left: 46%;
  width: 6%;
  background-image: url('assets/Paper Clip.png');
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-Water {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 18%;
  margin-left: 23.5%;
  width: 6%;
  background-image: url('assets/Water.png');
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-GoldBar {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 18%;
  margin-left: 35.5%;
  width: 6%;
  background-image: url('assets/Gold Bar.png');
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-GlassBottle {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 18%;
  margin-left: 46%;
  width: 6%;
  background-image: url('assets/Glass Bottle.png');
  background-repeat: no-repeat;
  background-size: 75%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-Diamond {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 18%;
  margin-left: 21.5%;
  width: 10%;
  background-image: url('assets/Diamond.png');
  background-repeat: no-repeat;
  background-size: 40%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drag-el {
  position: relative;
  
  width: 280%;
  min-height: 30%;
  min-width:  30%;
  z-index: 8;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
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

.drop-zone-Pencil2 {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 26%;
  margin-left: 12%;
  width: 8%;
  background-image: url('assets/Pencil.png');
  background-position: center;
  background-repeat: no-repeat;
  background-size: 70%;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-Cork2 {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 26%;
  margin-left: 22.5%;
  width: 8%;
  background-image: url('assets/Cork.png');
  #background-attachment: fixed;
  background-repeat: no-repeat;
  background-size: 50%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-Lego2 {
  position:absolute;
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  margin-top: 26%;
  margin-left: 35.5%;
  width: 6%;
  background-image: url('assets/Lego.png');
  #background-attachment: fixed;
  background-repeat: no-repeat;
  background-size: 58%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-Lemon2 {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 32%;
  margin-left: 35.5%;
  width: 6%;
  background-image: url('assets/Lemon.png');
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-Potato2 {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 32%;
  margin-left: 23.5%;
  width: 6%;
  background-image: url('assets/Potato.png');
  #background-attachment: fixed;
  background-repeat: no-repeat;
  background-size: 50%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-Rubber2 {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 32%;
  margin-left: 13%;
  width: 6%;
  background-image: url('assets/RubberBand.png');
  background-repeat: no-repeat;
  background-size: 70%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-5Euros2 {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 38%;
  margin-left: 12.5%;
  width: 7%;
  background-image: url('assets/5Euros.png');
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-Log2 {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 26%;
  margin-left: 46%;
  width: 6%;
  background-image: url('assets/Log.png');
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-Clip2 {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 32%;
  margin-left: 46%;
  width: 6%;
  background-image: url('assets/Paper Clip.png');
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-Water2 {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 38%;
  margin-left: 23.5%;
  width: 6%;
  background-image: url('assets/Water.png');
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-GoldBar2 {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 38%;
  margin-left: 35.5%;
  width: 6%;
  background-image: url('assets/Gold Bar.png');
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-GlassBottle2 {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 38%;
  margin-left: 46%;
  width: 6%;
  background-image: url('assets/Glass Bottle.png');
  background-repeat: no-repeat;
  background-size: 75%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.drop-zone-Diamond2 {
  display:grid;
  grid-template-columns:33% 33% 33%;
  grid-gap:1em;
  position:absolute;
  margin-top: 38%;
  margin-left: 21.5%;
  width: 10%;
  background-image: url('assets/Diamond.png');
  background-repeat: no-repeat;
  background-size: 40%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}

.rounded {
  position: absolute;
  z-index: 3;
  margin-top: 22.5%;
  margin-left: 3.25%;
  background-color: #272544;
  width: 53.25%;
  height: 2%;
  user-drag: none;
  -webkit-user-drag: none;
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}
</style>