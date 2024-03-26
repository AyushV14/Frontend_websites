
var crsr = document.querySelector(".cursor")
var blur = document.querySelector(".cursor-b")

document.addEventListener("mousemove",function(dets){
    crsr.style.left = dets.x+"px"
    crsr.style.top = dets.y+"px"
    blur.style.left = dets.x-150+"px"
    blur.style.top = dets.y-100+"px"
})



gsap.to(".nav",{
    backgroundColor : "#000",
    duration:0.5,
    height:"100px",
    scrollTrigger:{
        trigger:".nav",
        scroller:"body",
        // markers:true,
        start:"top -10%",
        start:"top -11%",
        scrub:1
    }

})

gsap.to(".main",{
    backgroundColor: "#000",
    scrollTrigger: {
        trigger:".main",
        scroller:"body",
        // markers:true,
        start:"top -30vh",
        start:"top -80vh",
        scrub:2
    }
})