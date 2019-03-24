

function checkValues(obj, key){

  for (var i in obj){
    if(obj[i].name == key){
      return i;
    }
  }

  return -1;
}
function myFunction() {
  var data1 = JSON.parse(data);
	var x = document.getElementById("fname");
  var index = checkValues(data1,x.value.toUpperCase())
  if(index != -1){
	  document.getElementById('demo').innerHTML = data1[index].name + "\n " + data1[index].GhgeKg + "\n " + data1[index].GhgeKcal;
	}
	else{
		document.getElementById('demo').innerHTML = "Data Not Found";
	}
}
