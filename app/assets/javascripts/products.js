window['products#edit'] = function(){
  document.addEventListener("turbolinks:load", function () {
    var input = document.getElementById("product_name");
    new Awesomplete(input, {
      minChars: 3,
      autoFirst: true
    });
  });
};


