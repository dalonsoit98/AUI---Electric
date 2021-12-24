<template>

<img class ="CircuitImage" style="display: none" id ="CircuitImage"  src =  "assets/SimpleCircuit-open.png">
<div class= "ChangeImage" style="display: none" onclick = changeImage()></div>

<button class="ButtonDone" id="ButtonDone" style="display: none;" v-on:click="nextPage">Done</button>


<img class ="imagen" src="assets/Tabletop.jpeg" alt=""/>
</template>

<script>
import { ref } from 'vue' 
 
            var Socket = new io('http://localhost:5005/', {
                    pathname: '/socket.io',
                    transports: ['websocket'],
        });      

export default {
  setup() {
    var src = new Vue({
      data: {
        a: 'assets/Simple Circuit - open.png',
        b: 0
      }
      })

    var srcaux = ['assets/Simple Circuit - open.png','assets/Simple Circuit - closed.png'];
    let currentSrc = 0;

    var getNumber = () => {
      return currentSrc
    }

    const changeImage = (number) => {
              if(number == 0){
                let aux = 1
            currentSrc = aux
            src.a = srcaux[currentSrc]
              } 
              if(number == 1){
                let aux = 0
            currentSrc = aux
            src.a = srcaux[currentSrc]
              }  
      console.log(src.b)
      src.b +=1
        }

    return {
   src,
   currentSrc,
   getNumber,
   changeImage
    }
  },
  data() {
    return {
      componentKey:0,
    };
  },
      methods: {
        forceRerender() {
          this.componentKey +=1;
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
        nextPage(){
              sessionStorage.clear();
              window.location.href="http://localhost:3000/src/1.html?";
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
  color: rgb(85, 186, 71);
  z-index: 3;
}

.Insulating-Title {
  position:absolute;
  margin-top: 15%;
  margin-left: 40%;
  margin-right: 70%;
  color: red;
  z-index: 3;
}
.drop-zone1-Conducting {
  position:absolute;
  margin-top: 7%;
  margin-left: 5.5%;
  margin-right: 70%;
  width: 20%;
  background-image: url('assets/Check.png');
  background-attachment: fixed;
  background-repeat: no-repeat;
  background-position: 12% 15%;
  background-size: 10%;
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
  margin-top: 7%;
  margin-left: 32.5%;
  margin-right: 70%;
  width: 20%;
  background-image: url('assets/Cross.png');
  background-attachment: fixed;
  background-repeat: no-repeat;
  background-position: 42% 15%;
  background-size: 9%;
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
  margin-top: 25%;
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
  margin-left: 19.5%;
  width: 14%;
  background-image: url('assets/Cork.png');
  #background-attachment: fixed;
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
  margin-top: 25%;
  margin-left: 33%;
  width: 10%;
  background-image: url('assets/Lego.png');
  #background-attachment: fixed;
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
  margin-top: 33%;
  margin-left: 33%;
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
  margin-top: 33%;
  margin-left: 21.5%;
  width: 10%;
  background-image: url('assets/Potato.png');
  #background-attachment: fixed;
  background-repeat: no-repeat;
  background-size: 70%;
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
  margin-top: 33%;
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
  margin-top: 40%;
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
  margin-top: 25%;
  margin-left: 43%;
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
  margin-top: 33%;
  margin-left: 43%;
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
  margin-top: 40%;
  margin-left: 21.5%;
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
  margin-top: 40%;
  margin-left: 33%;
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
  margin-top: 40%;
  margin-left: 43%;
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
  margin-top: 19%;
  margin-left: 27%;
  width: 10%;
  background-image: url('assets/Diamond.png');
  background-repeat: no-repeat;
  background-size: 60%;
  background-position: center;
  height: 8%;
  min-width: 5%;
  z-index: 4;
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

.CircuitImage {
position: absolute;
z-index: 2;
width: 40%;
margin-top: 7%;
margin-left: 10%;
object-fit: center;
}

.ChangeImage {
  position: absolute;
  width: 9%;
  height: 20%;
  margin-left: 41.5%;
  margin-top: 21.5%;
  background-color: transparent;
  z-index: 3;
}
</style>
