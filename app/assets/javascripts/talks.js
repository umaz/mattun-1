window.onload = scroll;

function scroll(){
  var obj = document.getElementById("talks");
  obj.scrollTop = obj.scrollHeight;
}

function message(){
  $.ajax({
    type: "GET",
    url: location.href,
    data: {
      ajax: true
    },
    success: function(data) {
      console.log(data);
    },
    error: function() {
      alert("Error");
    }
  });
}
