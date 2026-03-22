# Design System: The Obsidian Hearth

## 1. Overview & Creative North Star: "The Digital Maître D’"
This design system is built to transform restaurant management from a chaotic back-office task into a high-end editorial experience. Our Creative North Star is **"The Digital Maître D’"**—an interface that is invisible when not needed, authoritative when summoned, and always elegant. 

To achieve a "signature" feel for 'Y0 Restaurant', we move away from the "boxy" nature of standard SaaS apps. We utilize **intentional asymmetry**, where key metrics breathe in expansive negative space, and **tonal depth**, where the UI feels like a series of layered obsidian sheets rather than a flat screen. By rejecting standard 1px borders in favor of background shifts and glassmorphism, we create a tactile, premium environment optimized for the low-light, high-pressure atmosphere of a professional kitchen or dining floor.

---

### 2. Colors: Tonal Depth & The "No-Line" Rule
The palette is rooted in deep blacks (`#0e0e0e`) to ensure maximum contrast for the vibrant Primary Amber (`#ffbd5c`).

*   **The "No-Line" Rule:** Explicitly prohibit the use of 1px solid borders to section content. Boundaries must be defined through background color shifts. For example, a `surface-container-low` (`#131313`) card sits on a `surface` (`#0e0e0e`) background. This creates a sophisticated, seamless transition that feels expensive and custom.
*   **Surface Hierarchy & Nesting:** Treat the UI as physical layers. Use the `surface-container` tiers to denote importance. 
    *   *Base Layer:* `surface-dim` (`#0e0e0e`)
    *   *Secondary Layout:* `surface-container` (`#1a1a1a`)
    *   *Floating Elements/Cards:* `surface-container-highest` (`#262626`)
*   **The Glass & Gradient Rule:** For mobile navigation bars or tablet sidebars, use **Glassmorphism**. Apply `surface-container` with a 70% opacity and a 20px backdrop-blur. 
*   **Signature Textures:** Apply a subtle linear gradient to main CTAs (e.g., "Close Bill") transitioning from `primary` (`#ffbd5c`) to `primary-container` (`#feaa00`) at a 135-degree angle. This adds "soul" and prevents the amber from looking flat or "cheap."

---

### 3. Typography: Editorial Authority
We pair 'Poppins' (English) and 'Cairo' (Arabic) to create a bilingual experience that feels unified. The hierarchy is designed to be readable at a distance (crucial for tablet-mounted kitchen displays).

*   **Display & Headlines (Plus Jakarta Sans/Cairo):** Used for table numbers and total revenue. High tracking (-2%) on display styles adds a modern, compressed "Editorial" look.
*   **Title & Body (Be Vietnam Pro/Poppins):** Optimized for legibility. 
    *   `title-lg`: For dish names in the menu.
    *   `body-md`: For modifier notes (e.g., "No onions").
*   **Label Styles:** Used for status indicators (e.g., "Available"). These should always be uppercase with 5% letter-spacing to distinguish them from interactive text.

---

### 4. Elevation & Depth: Tonal Layering
In this design system, shadows are a whisper, not a shout.

*   **The Layering Principle:** Stack `surface-container-lowest` cards on a `surface-container-low` section to create a soft, natural lift. This mimics the way fine stationery looks on a dark wooden table.
*   **Ambient Shadows:** For "Active" tables or "Floating Action Buttons," use an extra-diffused shadow: `box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);`. The shadow color should never be pure black; it should be a tinted version of the background.
*   **The "Ghost Border" Fallback:** If a divider is mandatory for accessibility, use the `outline-variant` (`#484847`) at **15% opacity**. This creates a "suggestion" of a line without breaking the fluidity of the layout.

---

### 5. Components: The Primitive Set

*   **Action Buttons:**
    *   **Primary:** Amber gradient (`primary` to `primary-container`) with `on-primary-fixed` text. Roundedness: `lg` (1rem/16px).
    *   **Secondary:** `surface-container-highest` background with a `Ghost Border`.
*   **Status Chips (High Contrast):**
    *   **Available:** `surface-container-high` background with a `primary` (Amber) or Green accent dot.
    *   **Occupied:** `error-dim` (`#d53d18`) text on a `surface-container-highest` background.
    *   **Billing:** `tertiary` (`#ff833f`) background with `on-tertiary` text.
*   **Cards & Lists (The Editorial Table):** 
    *   **Forbid Dividers.** Separate order items using `spacing-4` (1rem) of vertical white space. 
    *   Use a `surface-container-low` background for the even items in a list to create a "Zebra" effect that feels more like a modern spreadsheet than a legacy app.
*   **Inputs:** Use `surface-container-highest` for the field background. The active state should not use a border; instead, it should glow with a subtle `primary` outer-shadow (4px blur).
*   **Table Map (Tablet Specific):** Tables are rendered as clean cards with `xl` (1.5rem/24px) corners. Use `primary-dim` for "Selected" states to create a high-contrast focus that is unmistakable in a fast-paced environment.

---

### 6. Do’s and Don’ts

**Do:**
*   **Do** use extreme vertical spacing. If you think there's enough space, add `spacing-4` more. It conveys luxury.
*   **Do** use `primary` (Amber) sparingly. It is a lighthouse; if everything is amber, nothing is important.
*   **Do** ensure all touch targets on Tablet are at least 48x48px to accommodate busy servers.

**Don’t:**
*   **Don’t** use 100% white (`#ffffff`) for body text. Use `on-surface-variant` (`#adaaaa`) to reduce eye strain in dark environments.
*   **Don’t** use standard "Drop Shadows" that are small and dark. They look "Windows 95." Stick to Tonal Layering.
*   **Don’t** use default 4px rounded corners. Always stay between `lg` (16px) and `xl` (24px) to maintain the modern, "friendly-yet-sleek" personality.