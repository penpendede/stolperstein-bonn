"use strict";

// Tab switcher for specific client.html, not included in g4u custom build

function activateTab(name) {
    var tabcontent, tablinks, i;
    tabcontent = document.getElementsByClassName("tab-content");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tab-title");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(name).style.display = "block";
    document.getElementById('tab-' + name).className += " active";
}