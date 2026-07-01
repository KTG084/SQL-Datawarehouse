<svg viewBox="0 0 1200 560" xmlns="http://www.w3.org/2000/svg" font-family="Segoe UI, Helvetica, Arial, sans-serif">
  <defs>
    <linearGradient id="bgGrad" x1="0" y1="0" x2="0" y2="1">
      <stop offset="0%" stop-color="#0f1420"/>
      <stop offset="100%" stop-color="#161c2c"/>
    </linearGradient>
    <linearGradient id="bronzeGrad" x1="0" y1="0" x2="1" y2="1">
      <stop offset="0%" stop-color="#cd7f32"/>
      <stop offset="100%" stop-color="#a3602099"/>
      <stop offset="100%" stop-color="#8a4a1c"/>
    </linearGradient>
    <linearGradient id="silverGrad" x1="0" y1="0" x2="1" y2="1">
      <stop offset="0%" stop-color="#d9d9e3"/>
      <stop offset="100%" stop-color="#9a9aa8"/>
    </linearGradient>
    <linearGradient id="goldGrad" x1="0" y1="0" x2="1" y2="1">
      <stop offset="0%" stop-color="#ffd66b"/>
      <stop offset="100%" stop-color="#e0a80f"/>
    </linearGradient>
    <marker id="arrow" markerWidth="10" markerHeight="10" refX="8" refY="3" orient="auto" markerUnits="strokeWidth">
      <path d="M0,0 L0,6 L9,3 z" fill="#8892a6"/>
    </marker>
    <filter id="softShadow" x="-20%" y="-20%" width="140%" height="140%">
      <feDropShadow dx="0" dy="4" stdDeviation="6" flood-color="#000000" flood-opacity="0.35"/>
    </filter>
  </defs>

  <rect x="0" y="0" width="1200" height="560" fill="url(#bgGrad)"/>

  <text x="600" y="46" text-anchor="middle" fill="#f4f6fb" font-size="26" font-weight="700">SQL Data Warehouse — Medallion Architecture</text>
  <text x="600" y="72" text-anchor="middle" fill="#8892a6" font-size="14">CRM &amp; ERP Sources  →  Bronze (Raw)  →  Silver (Cleansed)  →  Gold (Business-Ready)</text>

  <!-- Sources -->
  <g filter="url(#softShadow)">
    <rect x="30" y="150" width="150" height="260" rx="14" fill="#232a3d" stroke="#3a4258" stroke-width="1.5"/>
  </g>
  <text x="105" y="182" text-anchor="middle" fill="#f4f6fb" font-size="16" font-weight="700">Source Systems</text>
  <rect x="50" y="200" width="110" height="60" rx="8" fill="#2e3650" stroke="#4b5471"/>
  <text x="105" y="226" text-anchor="middle" fill="#e6e9f2" font-size="12" font-weight="600">CRM</text>
  <text x="105" y="244" text-anchor="middle" fill="#9aa2b8" font-size="10">cust / prd / sales</text>
  <rect x="50" y="280" width="110" height="60" rx="8" fill="#2e3650" stroke="#4b5471"/>
  <text x="105" y="306" text-anchor="middle" fill="#e6e9f2" font-size="12" font-weight="600">ERP</text>
  <text x="105" y="324" text-anchor="middle" fill="#9aa2b8" font-size="10">loc / cust / px_cat</text>
  <text x="105" y="380" text-anchor="middle" fill="#8892a6" font-size="10">CSV Files</text>

  <line x1="180" y1="280" x2="238" y2="280" stroke="#8892a6" stroke-width="2" marker-end="url(#arrow)"/>

  <!-- Bronze -->
  <g filter="url(#softShadow)">
    <rect x="240" y="120" width="230" height="320" rx="16" fill="url(#bronzeGrad)"/>
  </g>
  <text x="355" y="155" text-anchor="middle" fill="#2a1608" font-size="18" font-weight="800">🥉 BRONZE</text>
  <text x="355" y="175" text-anchor="middle" fill="#3d2410" font-size="11" font-weight="600">Raw, As-Is Data</text>
  <rect x="262" y="195" width="186" height="34" rx="6" fill="#ffffff33"/>
  <text x="355" y="217" text-anchor="middle" fill="#2a1608" font-size="11">crm_cust_info</text>
  <rect x="262" y="235" width="186" height="34" rx="6" fill="#ffffff33"/>
  <text x="355" y="257" text-anchor="middle" fill="#2a1608" font-size="11">crm_prd_info</text>
  <rect x="262" y="275" width="186" height="34" rx="6" fill="#ffffff33"/>
  <text x="355" y="297" text-anchor="middle" fill="#2a1608" font-size="11">crm_sales_details</text>
  <rect x="262" y="315" width="186" height="34" rx="6" fill="#ffffff33"/>
  <text x="355" y="337" text-anchor="middle" fill="#2a1608" font-size="11">erp_loc_a101 / erp_cust_az12</text>
  <rect x="262" y="355" width="186" height="34" rx="6" fill="#ffffff33"/>
  <text x="355" y="377" text-anchor="middle" fill="#2a1608" font-size="11">erp_px_cat_g1v2</text>
  <text x="355" y="410" text-anchor="middle" fill="#2a1608" font-size="10" font-style="italic">load_bronze() • TRUNCATE + COPY</text>

  <line x1="470" y1="280" x2="528" y2="280" stroke="#8892a6" stroke-width="2" marker-end="url(#arrow)"/>

  <!-- Silver -->
  <g filter="url(#softShadow)">
    <rect x="530" y="120" width="230" height="320" rx="16" fill="url(#silverGrad)"/>
  </g>
  <text x="645" y="155" text-anchor="middle" fill="#22242c" font-size="18" font-weight="800">🥈 SILVER</text>
  <text x="645" y="175" text-anchor="middle" fill="#32343d" font-size="11" font-weight="600">Cleansed &amp; Standardized</text>
  <rect x="552" y="195" width="186" height="34" rx="6" fill="#ffffff55"/>
  <text x="645" y="217" text-anchor="middle" fill="#22242c" font-size="11">Trimmed / Deduplicated</text>
  <rect x="552" y="235" width="186" height="34" rx="6" fill="#ffffff55"/>
  <text x="645" y="257" text-anchor="middle" fill="#22242c" font-size="11">Standardized Codes</text>
  <rect x="552" y="275" width="186" height="34" rx="6" fill="#ffffff55"/>
  <text x="645" y="297" text-anchor="middle" fill="#22242c" font-size="11">Valid Dates &amp; Values</text>
  <rect x="552" y="315" width="186" height="34" rx="6" fill="#ffffff55"/>
  <text x="645" y="337" text-anchor="middle" fill="#22242c" font-size="11">Derived cat_id / Business Rules</text>
  <rect x="552" y="355" width="186" height="34" rx="6" fill="#ffffff55"/>
  <text x="645" y="377" text-anchor="middle" fill="#22242c" font-size="11">dwh_create_date audit column</text>
  <text x="645" y="410" text-anchor="middle" fill="#22242c" font-size="10" font-style="italic">load_silver() • Transform + Insert</text>

  <line x1="760" y1="280" x2="818" y2="280" stroke="#8892a6" stroke-width="2" marker-end="url(#arrow)"/>

  <!-- Gold -->
  <g filter="url(#softShadow)">
    <rect x="820" y="120" width="230" height="320" rx="16" fill="url(#goldGrad)"/>
  </g>
  <text x="935" y="155" text-anchor="middle" fill="#3d2c02" font-size="18" font-weight="800">🥇 GOLD</text>
  <text x="935" y="175" text-anchor="middle" fill="#4a3603" font-size="11" font-weight="600">Business-Ready (Star Schema)</text>
  <rect x="842" y="200" width="186" height="50" rx="6" fill="#ffffff44"/>
  <text x="935" y="222" text-anchor="middle" fill="#3d2c02" font-size="11" font-weight="700">dim_customers</text>
  <text x="935" y="238" text-anchor="middle" fill="#4a3603" font-size="9">view</text>
  <rect x="842" y="258" width="186" height="50" rx="6" fill="#ffffff44"/>
  <text x="935" y="280" text-anchor="middle" fill="#3d2c02" font-size="11" font-weight="700">dim_products</text>
  <text x="935" y="296" text-anchor="middle" fill="#4a3603" font-size="9">view</text>
  <rect x="842" y="316" width="186" height="50" rx="6" fill="#ffffff77"/>
  <text x="935" y="338" text-anchor="middle" fill="#3d2c02" font-size="11" font-weight="700">fact_sales</text>
  <text x="935" y="354" text-anchor="middle" fill="#4a3603" font-size="9">view</text>
  <text x="935" y="410" text-anchor="middle" fill="#3d2c02" font-size="10" font-style="italic">ddl_gold.sql • Analytical Views</text>

  <line x1="1050" y1="280" x2="1108" y2="280" stroke="#8892a6" stroke-width="2" marker-end="url(#arrow)"/>

  <!-- Consumption -->
  <g filter="url(#softShadow)">
    <rect x="1110" y="180" width="70" height="200" rx="14" fill="#232a3d" stroke="#3a4258" stroke-width="1.5"/>
  </g>
  <text x="1145" y="205" text-anchor="middle" fill="#f4f6fb" font-size="11" font-weight="700">BI /</text>
  <text x="1145" y="220" text-anchor="middle" fill="#f4f6fb" font-size="11" font-weight="700">Reports /</text>
  <text x="1145" y="235" text-anchor="middle" fill="#f4f6fb" font-size="11" font-weight="700">Ad-hoc</text>
  <text x="1145" y="250" text-anchor="middle" fill="#f4f6fb" font-size="11" font-weight="700">SQL</text>

  <text x="600" y="500" text-anchor="middle" fill="#8892a6" font-size="12">Quality checks run at each hand-off — see /Datawarehouse/tests</text>
  <text x="600" y="525" text-anchor="middle" fill="#5b6377" font-size="11">Engine: PostgreSQL  •  Procedures: PL/pgSQL</text>
</svg>
