---
title: "Pricing"
date: 2024-07-15
lastmod: 2025-07-16

---
<style>
  body {
    margin: 0;
    background: linear-gradient(to bottom, #000000 0%, #f18f38 100%) fixed no-repeat;
  }


.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
  vertical-align: middle;
}

.switch input {
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  transition: .4s;
}

input:checked + .slider {
  background-color: #013366;
}

input:focus + .slider {
  box-shadow: 0 0 1px #f18f383;
}

input:checked + .slider:before {
 transform: translateX(26px);
}

.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}

.vertical-center {
  margin: 0;
  position: absolute;
  top: 19%;
  left: 50%;
  -ms-transform: translateY(-50%);
  transform: translateY(-50%);
}

.center {
  margin-left: auto;
  margin-right: auto;
}

.centered-text {
  text-align: center;
}

 p {
      text-align: center;
      }

    .center-text {
      text-align: center;
    }

  .banner-container {
    text-align: center;
    padding: 0;
  }

  .banner-container img {
    width: auto;
    height: auto;
    display: block;
    box-shadow: 0 0 125px rgba(0, 0, 0, 1);
  }

  /* The hero image */
.hero-image {
  /* Use "linear-gradient" to add a darken background effect to the image (photographer.jpg). This will make the text easier to read */
  background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("photographer.jpg");

  /* Set a specific height */
  height: 50%;

  /* Position and center the image to scale nicely on all screens */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

</style>

<img src="/images/pricing.png" alt="JP Technical Banner" class="banner-image" />

<br>

<h1 style="text-align: center;">Check Out Our Pricing Options </h1>

<br>

<hr style="border-top: 3px dashed #ccc; margin: 3rem 0;">

<div id="pricing-toggle" style="text-align:center; margin: 2rem 0;">
  <label for="billingSwitch" style="font-weight: bold; font-size: 1.2rem; margin-right: 1rem;">Billing Type:</label>
  
  <label class="switch">
    <input type="checkbox" id="billingSwitch" onchange="updatePricing()">
    <span class="slider round"></span>
  </label>

  <span id="billingLabel" style="margin-left: 1rem; font-size: 1.1rem;">Monthly</span>
</div>

<br>

<table class="ui celled table" style="margin: auto; width: 90%; font-size: 1.2rem; border-radius: 12px; box-shadow: 0 4px 16px rgba(0,0,0,0.1); overflow: hidden;">
  <thead style="background-color: #0162d1; color: white;">
    <tr>
      <th>Service</th>
      <th style="text-align: center;">Basic<br><span id="price-basic">$100 per user/month</span></th>
      <th style="text-align: center;">Advanced<br><span id="price-advanced">$150 per user/month</span></th>
      <th style="text-align: center;">Ultimate<br><span id="price-ultimate">$200 per user/month</span></th>
    </tr>
  </thead>
  <tbody>
    <tr><td>✔ Updates & Monitoring<br><small>Microsoft and 3rd Party App Updates, Infrastructure Monitoring</small></td><td style="text-align: center;">✓</td><td style="text-align: center;">✓</td><td style="text-align: center;">✓</td></tr>
    <tr><td>🖥 Remote Support<br><small>Unlimited Remote & Onsite Support*</small></td><td style="text-align: center;">✓</td><td style="text-align: center;">✓</td><td style="text-align: center;">✓</td></tr>
    <tr><td>🛡 Antivirus & Encryption<br><small>Managed AV, Threat Hunting, Managed Encryption</small></td><td style="text-align: center;">✓</td><td style="text-align: center;">✓</td><td style="text-align: center;">✓</td></tr>
    <tr><td>📧 Email License<br><small>Google or Office 365 Mail & Backup License</small></td><td style="text-align: center;">✓</td><td style="text-align: center;">✓</td><td style="text-align: center;">✓</td></tr>
    <tr><td>🎯 Phishing Protection<br><small>Advanced Filtering, Simulated Attacks</small></td><td style="text-align: center;"></td><td style="text-align: center;">✓</td><td style="text-align: center;">✓</td></tr>
    <tr><td>📊 Monthly Reports<br><small>Executive Reports, IT Documentation</small></td><td style="text-align: center;"></td><td style="text-align: center;">✓</td><td style="text-align: center;">✓</td></tr>
    <tr><td>📂 Policy Management<br><small>Company Policy Documentation & Assistance</small></td><td style="text-align: center;"></td><td style="text-align: center;">✓</td><td style="text-align: center;">✓</td></tr>
    <tr><td>🎓 End User Training<br><small>Cybersecurity & Awareness Training</small></td><td style="text-align: center;"></td><td style="text-align: center;"></td><td style="text-align: center;">✓</td></tr>
    <tr><td>💾 Disaster Recovery & Compliance<br><small>Backup Testing, Compliance Audits, Disaster Recovery Planning</small></td><td style="text-align: center;"></td><td style="text-align: center;"></td><td style="text-align: center;">✓</td></tr>
  </tbody>
</table>

<script>
  const contractPrices = {
    basic: "$100 per user/month",
    advanced: "$150 per user/month",
    ultimate: "$200 per user/month"
  };

  const monthlyPrices = {
    basic: "$125 per user/month",
    advanced: "$175 per user/month",
    ultimate: "$225 per user/month"
  };

  function animatePriceChange(element, newPrice) {
    element.style.opacity = 0;
    setTimeout(() => {
      element.innerText = newPrice;
      element.style.opacity = 1;
    }, 250);
  }

  function updatePricing() {
    const toggle = document.getElementById("billingSwitch");
    const billingType = toggle.checked ? "monthly" : "contract";
    document.getElementById("billingLabel").innerText = toggle.checked ? "Month-to-Month" : "Contract (Annual)";

    animatePriceChange(document.getElementById("price-basic"), billingType === "contract" ? contractPrices.basic : monthlyPrices.basic);
    animatePriceChange(document.getElementById("price-advanced"), billingType === "contract" ? contractPrices.advanced : monthlyPrices.advanced);
    animatePriceChange(document.getElementById("price-ultimate"), billingType === "contract" ? contractPrices.ultimate : monthlyPrices.ultimate);
  }
</script>

<style>
  body {
    background: #f5f9ff;
    font-family: 'Segoe UI', sans-serif;
  }
  .banner-video {
    max-height: 400px;
    object-fit: cover;
    width: 100%;
  }
  h2, h3 {
    color: #003366;
  }
  table.ui.celled.table thead {
    background-color: #0162d1;
    color: white;
  }
  table.ui.celled.table tbody tr:hover {
    background-color: #f0f8ff;
  }
  #price-basic,
  #price-advanced,
  #price-ultimate {
    transition: opacity 0.25s ease-in-out;
    display: inline-block;
    color: #f18f38;
    font-weight: bold;
  }
  #pricing-toggle {
    margin: 2rem auto;
    text-align: center;
    font-size: 1.2rem;
  }
  .ui.toggle.checkbox input:checked ~ #billingLabel {
    color: #f18f38;
  }
  .ui.toggle.checkbox span {
    margin-left: 0.5rem;
    color: #333;
  }
</style>


<br>
<br>