---
title: "Our Services"
url: "/services/"
layout: "services"
---
---
title: "JP Technical"
---

<main class="grid grid-cols-1 md:grid-cols-5 min-h-screen">
  <!-- Navigation -->
  <aside class="md:col-span-1 bg-[#013366] text-white p-4 space-y-4">
    <img src="/logo.png" alt="JP Technical Logo" class="w-32 mx-auto mb-4">
    <nav class="space-y-2">
      <a href="/" class="block hover:underline">Home</a>
      <a href="/services" class="block hover:underline">Services</a>
      <a href="/pricing" class="block hover:underline">Pricing</a>
      <a href="/cybersecurity-self-exam" class="block hover:underline">Cybersecurity Self Exam</a>
      <a href="/hipaa-compliance" class="block hover:underline">HIPAA Compliance</a>
      <a href="/contact" class="block hover:underline">Contact</a>
    </nav>
  </aside>

  <!-- Main Content -->
  <section class="md:col-span-4 p-6 space-y-10">
    <img src="/banner.gif" alt="Banner" class="w-full rounded-2xl shadow">

    <!-- Who We Are -->
    <div class="space-y-4">
      <h1 class="text-4xl font-bold">Who We Are</h1>
      <p class="text-lg">JP Technical is a managed service provider based in Alaska, offering IT solutions tailored for small businesses. From backup and disaster recovery to compliance and endpoint security, we’re your partner in IT success.</p>
      <a href="/contact" class="inline-block bg-[#f38f18] text-white px-4 py-2 rounded hover:bg-orange-600">Contact Us</a>
    </div>

    <!-- Pricing Comparison -->
    <div class="space-y-6">
      <div class="flex justify-between items-center">
        <h2 class="text-3xl font-bold">Pricing</h2>
        <div class="flex items-center space-x-2">
          <label class="font-semibold">Billing:</label>
          <select id="billing-toggle" class="border rounded px-2 py-1">
            <option value="contract" selected>Contract</option>
            <option value="monthly">Monthly</option>
          </select>
        </div>
      </div>

      <div class="grid md:grid-cols-2 gap-6" id="pricing-section">
        <div class="border rounded-xl p-6 shadow">
          <h3 class="text-2xl font-semibold mb-4">Basic Plan</h3>
          <ul class="list-disc ml-6 space-y-2">
            <li>Remote Support</li>
            <li>Patch Management</li>
            <li>License Monitoring</li>
            <li>Anti-Virus + EDR</li>
          </ul>
          <div class="text-3xl mt-4"><span class="price" data-price="35">$35</span>/user</div>
        </div>

        <div class="border rounded-xl p-6 shadow">
          <h3 class="text-2xl font-semibold mb-4">Full Service Plan</h3>
          <ul class="list-disc ml-6 space-y-2">
            <li>All Basic Plan Features</li>
            <li>Onsite Support</li>
            <li>Full BCDR Management</li>
            <li>Vendor Coordination</li>
            <li>HIPAA Compliance Support</li>
          </ul>
          <div class="text-3xl mt-4"><span class="price" data-price="55">$55</span>/user</div>
        </div>
      </div>
    </div>
  </section>
</main>

<script>
  document.addEventListener('DOMContentLoaded', () => {
    const toggle = document.getElementById('billing-toggle');
    const prices = document.querySelectorAll('.price');

    toggle.addEventListener('change', () => {
      const multiplier = toggle.value === 'monthly' ? 1.2 : 1.0;
      prices.forEach(el => {
        const base = parseFloat(el.getAttribute('data-price'));
        el.textContent = `$${(base * multiplier).toFixed(2)}`;
      });
    });
  });
</script>
