new TypeIt("#mainSectionTopTitle", {
    afterComplete: function (instance) {
      instance.destroy();
    }
})
.type("당신이 원하는", {delay: 1000})
.type("바로 그 모임")
.go();