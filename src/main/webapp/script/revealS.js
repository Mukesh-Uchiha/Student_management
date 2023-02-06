WebGLSampler.registerPlugin(ScrollTrigger);

const t1 = gsap.timeline();

t1.to("section",3,{x:window.innerWidth})


ScrollTrigger.create({
    animation: t1,
    trigger:"section",
    start: "center center",
    end:"+=4000",
    scrub:true,
    pin:true
})
