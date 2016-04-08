// DOM Manipulation Challenge


// I worked on this challenge [Lisa Buch].


// Add your JavaScript calls to this page:

// Release 0:
var release = document.getElementById("release-0");
var att = document.createAttribute("class");
att.value = "done";
release.setAttributeNode(att);


// Release 1:

document.getElementById("release-1").style.display = "none";

// Release 2:


document.getElementsByTagName('H1')[0].innerHTML = "I completed release 3";

// Release 3:

document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 4:
var x = document.getElementsByClassName('release-4');
for (i = 0; i < x.length; i++) {
  var x = x[i];
  x.style.fontSize = "2em";
};

// Release 5:
var template = document.getElementById('hidden');
document.body.appendChild(template.content.cloneNode(true));