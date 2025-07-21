"use strict";
$(document).ready(function () {
    $(".dream-flip-toggle").click(function () {
        $(".flip-container").toggleClass("flip-it")
    })
});

const toggle = document.querySelector("#billingSwitch");
const billingType = toggle && toggle.parentElement.classList.contains("checked") ? "monthly" : "contract";
