# Design System Specification: The Luminous Atrium

## 1. Overview & Creative North Star
**Creative North Star: "The Modern Maître D'"**

This design system is engineered to move beyond the "generic SaaS" look, opting instead for a high-end editorial feel specifically tailored for a premium culinary environment. We are building a digital "Atrium"—a space characterized by light, breathability, and warmth. 

To break the "template" aesthetic, we employ **Intentional Asymmetry**. Hero layouts should push imagery slightly off-center, allowing typography to bleed into negative space. We reject the rigid containment of boxes in favor of **Tonal Layering**, where hierarchy is dictated by the density of light rather than the weight of a stroke. The result is a professional, high-contrast interface that feels as curated as a tasting menu.

---

## 2. Colors & Surface Philosophy
The palette is rooted in a crisp, architectural foundation, punctuated by the "Amber Glow" of the primary accent.

### Core Palette
- **Background / Surface:** `#F9F9F9` (The canvas of the experience).
- **Primary (Amber):** `#825500` (Text/Iconography) / `#FFAB00` (Container/Brand Glow).
- **On-Surface (Charcoal):** `#1A1C1C` (High-contrast readability).
- **Tertiary (Deep Teal):** `#006781` (Used sparingly for interactive secondary paths).

### The "No-Line" Rule
**Designers are strictly prohibited from using 1px solid borders to define sections.** 
In this system, boundaries are created through color-blocking. To separate the navigation from the hero, or a menu category from the footer, transition from `surface` (#F9F9F9) to `surface-container-low` (#F3F3F3). Use vertical white space (Scale 16 or 20) to define sections.

### The Glass & Gradient Rule
To add "soul" to the primary CTAs and Hero backgrounds:
- **Signature Gradient:** Use a subtle linear gradient from `primary` (#825500) to `primary-container` (#FFAB00) at a 135-degree angle. This prevents the amber from looking "flat" or "plastic."
- **Glassmorphism:** For floating navigation bars or over-image modals, use `surface_container_lowest` (#FFFFFF) at 85% opacity with a `24px` backdrop-blur. This ensures the restaurant’s food photography feels integrated into the UI.

---

## 3. Typography: The Plus Jakarta Scale
We utilize **Plus Jakarta Sans** for its geometric clarity and modern humanist touch. It provides an authoritative yet welcoming tone.

| Token | Size | Weight | Intent |
| :--- | :--- | :--- | :--- |
| **Display-LG** | 3.5rem | Bold | Editorial hooks / Signature menu items. |
| **Headline-MD** | 1.75rem | Semi-Bold | Section titles (e.g., "The Seasonal Menu"). |
| **Title-SM** | 1.0rem | Medium | Item names and card headers. |
| **Body-LG** | 1.0rem | Regular | Descriptions and narrative text. |
| **Label-MD** | 0.75rem | Bold (All Caps) | Category tags, eyebrow text, and meta-data. |

**Editorial Note:** Use `Label-MD` with `0.05rem` letter-spacing for eyebrow headlines above `Headline-MD` to create a sophisticated, tiered hierarchy.

---

## 4. Elevation & Depth: Tonal Layering
Traditional drop shadows are largely replaced by **Surface Nesting**. 

1.  **The Layering Principle:** 
    *   **Base:** `surface` (#F9F9F9)
    *   **Section:** `surface-container-low` (#F3F3F3)
    *   **Card/Component:** `surface-container-lowest` (#FFFFFF)
    This "stacking" creates a natural lift that feels physical and high-end.

2.  **Ambient Shadows:** 
    When a component *must* float (e.g., a reservation drawer), use an extra-diffused shadow: 
    `box-shadow: 0 12px 40px rgba(26, 28, 28, 0.06);` 
    (Note the 6% opacity charcoal tint—never use pure black).

3.  **The Ghost Border Fallback:** 
    If a card requires definition against a white background, use `outline-variant` (#D7C3AC) at **15% opacity**. It should be felt, not seen.

---

## 5. Components & Primitives

### Buttons
- **Primary:** `primary-container` (#FFAB00) background with `on-primary-container` (#694400) text. Roundedness: `DEFAULT` (0.5rem). Use the Signature Gradient for hover states.
- **Secondary:** Transparent background with a `Ghost Border`. Text in `primary` (#825500).
- **Tertiary:** No background. `Label-MD` typography with a `0.25rem` underline in `primary_fixed` (#FFDDB3).

### Input Fields & Checkboxes
- **Inputs:** Use `surface-container-high` (#E8E8E8) as the fill. No border. On focus, transition to a `Ghost Border` using the Primary Amber.
- **Checkboxes:** When active, use `primary` (#825500) with a white checkmark. Roundedness: `sm` (0.25rem).

### Cards (The Menu Item)
**Forbidden:** Divider lines between list items.
**Requirement:** Use `spacing-6` (1.5rem) of vertical padding and a background shift to `surface-container-lowest` (#FFFFFF) on hover. High-end food photography should utilize `rounded-eight` (0.5rem) corners to match the UI's geometry.

### Restaurant-Specific Components
- **The Reservation Bar:** A persistent, glassmorphic footer element (using `surface_container_lowest` at 90% opacity) that floats at the bottom of mobile views, allowing the user to book a table instantly without hunting for a button.
- **Availability Chips:** Use `tertiary_container` (#00CCFE) for "Limited Seating" alerts—a cool blue contrast to the warm amber that signifies importance without the "alarm" of a red error state.

---

## 6. Do’s and Don’ts

### Do
*   **Do** use asymmetrical margins (e.g., more padding on the left than the right in hero sections) to create an editorial layout.
*   **Do** use `primary-fixed-dim` (#FFB950) for disabled states or secondary icons to maintain the warm color story.
*   **Do** allow photography to be the "hero." UI elements should feel like they are floating *over* the imagery, not boxing it in.

### Don't
*   **Don't** use 100% black (#000000). Always use the charcoal `on-background` (#1A1C1C) to maintain a premium feel.
*   **Don't** use standard Material Design "elevated" shadows. They feel too "tech" and not enough "hospitality."
*   **Don't** crowd the interface. If you think there is enough white space, add 25% more.