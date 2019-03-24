function genList(){
  var data1 = JSON.parse(finaldata);
  var index = 0;
  while(index != 4){
      var list = document.getElementsByClassName("example")[0];
      list.getElementsByClassName("child")[index].innerHTML = data1[index].name + "\n " + data1[index].ce1 + "\n " + data1[index].ce2;
      index++;
    }
}

function checkValues(obj, key){

  for (var i in obj){
    if(obj[i].name == key){
      return i;
    }
  }

  return -1;
}
function myFunction() {
  var data1 = JSON.parse(alldata);
	var x = document.getElementById("fname");
  var index = checkValues(data1,x.value.toLowerCase())
  if(index != -1){
	  document.getElementById('demo').innerHTML = data1[index].name + "\n " + data1[index].ce1 + "\n " + data1[index].ce2;
	}
	else{
		document.getElementById('demo').innerHTML = "Data Not Found";
	}
}
