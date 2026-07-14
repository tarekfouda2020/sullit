---
trigger: always_on
---

# Flutter Developer Assistant — Project Rules & Conventions

You are an expert Flutter developer assistant embedded in this project.
Your job is to generate code that fits **seamlessly** into the existing codebase.
Before writing a single line of code, **read and follow every rule below**.

---

 Step 0 — Always Do This First

Before any implementation:

1. **Detect the app language/locale** to determine layout direction (LTR or RTL). Place all widgets in the correct order accordingly.
2. **Browse `lib/core/widgets/`** to understand every custom widget available. Never use a default Flutter widget when a custom replacement exists.
3. **Check `lib/core/routes/app_routes.dart`** to understand existing navigation setup before adding new routes.

---

 1. Folder & File Structure

### Page Location
All UI pages live under:
```
lib/core/features/<feature_name>/presentation/pages/
```

### Per-Page Folder Layout
Each page gets its own folder. Inside it:
```
<page_name>/
├── <page_name>.dart                  # The page widget
├── <page_name>_controller.dart       # State/business logic
├── <page_name>_imports.dart          # Library file — re-exports all parts
└── widgets/
    ├── <widget_name>.dart            # One file per small widget
    └── widgets_imports.dart          # Exports all widgets in this folder
```

>  **Rule:** No small/inline widgets belong in `<page_name>.dart`. Every visual component must live in the `widgets/` subfolder.

### Mock / Fake Data Models
Place test/mock data models here:
```
lib/features/<feature_name>/domain/models/<model_name>.dart
```

---

 2. Dart `part` / `part of` System

Use Dart's `part`/`part of` to split files cleanly.

**In `<page_name>_imports.dart`:**
```dart
library page_name;

part '<page_name>.dart';
part '<page_name>_controller.dart';
```

**In each widget file inside `widgets/`:**
```dart
part of 'widgets_imports.dart';
```

**In `widgets_imports.dart`:**
```dart
library widgets;

part '<widget_one>.dart';
part '<widget_two>.dart';
```

**Import rule:** Always import the top-level `*_imports.dart` file — never import individual part files directly.

---

 3. Naming Conventions

| Element | Convention | Example |
|---|---|---|
| Dart files | `snake_case.dart` | `home_screen.dart` |
| Classes | `UpperCamelCase` | `HomeScreen` |
| Controllers | `UpperCamelCase` + `Controller` suffix | `LoginController` |
| Features | `lowercase_snake_case` | `user_profile` |
| Widgets | Match their filename | `ProfileAvatarWidget` → `profile_avatar_widget.dart` |

---

## 🧩 4. Custom Widgets — Always Use Them

> **This is mandatory.** Check `lib/core/widgets/` before writing any UI.

- If a custom widget exists for a use case, **use it — never substitute a raw Flutter widget**.
- Study how and where existing custom widgets are used throughout the project before implementing anything new.
- When you need a widget that doesn't exist yet, build it following the same patterns as existing custom widgets.

---

## 🔄 5. Reusable Widgets — DRY Principle

If a UI section or widget is used (or will be used) in more than one page — even with minor differences — **build one shared widget with configurable parameters**.

- Make varying parts into **nullable parameters**.
- Inside the widget, check `if (param != null)` before rendering that section.
- Never duplicate widget code across pages just to accommodate small differences.

---

 6. Colors & Theme

- **Always** reference theme colors via `context.colors.primary`, `AppColors.accent`, etc.
- **Never** hard-code hex values unless there is no theme equivalent.
- When adding a new color, add it to **all 3** color/theme reference files:
  - `AppColors`
  - Light theme
  - Dark theme

---

7. Spacing, Sizing & Typography

| Purpose | Use |
|---|---|
| Gaps (vertical) | `Gaps.vGap10`, `Gaps.vGap20`, etc. |
| Gaps (horizontal) | `Gaps.hGap10`, `Gaps.hGap20`, etc. |
| Padding / margin values | `Dimens.dp10`, `Dimens.paddingAll20Px` |
| Border radius | `Dimens.radius20Px` |
| Text styles | `AppTextStyles.headingLarge`, `AppTextStyles.bodyMedium`, etc. |

>  Never use raw `SizedBox(height: 16)` or `EdgeInsets.all(12)` — always use the design token equivalents.

---

## ⚡ 8. State Management & UI Updates

- Use the project's existing state management solution (Riverpod / Bloc / Cubit — match what is already in the project).
- For reactive UI updates, use **`GenericBloc<T>`** and **`BlocBuilder<GnereicBloc<T>,GenericState<T>()`**.
  - Reference files: `lib/core/bloc/generic_cubit/`
  - Study existing usages before implementing new ones.

---

## 🧭 9. Navigation & Routing

- All route configuration lives in:
  ```
  lib/core/routes/
  ```
- Per-feature route files live at:
  ```
  lib/features/<feature_name>/presentation/manager/routes/<feature_name>_route.dart
  ```
- **When creating a new page:**
  1. Create the feature route file (if it doesn't exist).
  2. Register it in `router.dart`.
  3. Use the project's existing navigation pattern — never call `Navigator.push(...)` directly unless that is the established pattern.

---

## 📦 10. Adding New Packages

1. Search for the package on [pub.dev](https://pub.dev) to confirm the latest stable version.
2. Add it to `pubspec.yaml` under `dependencies`.
3. Run `flutter pub get`.
4. Continue with the UI implementation — do not pause work waiting for confirmation.

---

## 💻 11. Coding Style & Quality

- Dart null-safety is required everywhere — no `!` force-unwraps without justification.
- `GenericBloc` fields must always declare an explicit type: `final GenericBloc<T> name = GenericBloc<T>(initialValue);` — never rely on type inference (`final name = GenericBloc<T>(...)`).
- Use `const` constructors wherever possible.
- Use `async`/`await` (never raw `.then()` chains unless necessary).
- Add brief comments where logic is non-obvious.
- Follow the [official Dart style guide](https://dart.dev/guides/language/effective-dart/style).

---

## ✅ Pre-Implementation Checklist

Before generating any code, confirm:

- [ ] App language/direction identified (LTR or RTL)
- [ ] `lib/core/widgets/` reviewed — no unnecessary Flutter defaults used
- [ ] Correct folder path chosen for the feature
- [ ] Route file exists or will be created and registered
- [ ] No widget logic placed directly in the page file
- [ ] All spacing uses `Gaps.*` or `Dimens.*`
- [ ] All colors reference the theme — no hardcoded hex values
- [ ] Reusable widgets are parameterized, not duplicated
- [ ] `part`/`part of` structure is correct
- [ ] New color added to all 3 theme files (if applicable)
- [ ] New package added to `pubspec.yaml` and `flutter pub get` run (if applicable)

---

> **Golden Rule:** When in doubt, find the closest existing example in the codebase and follow its pattern exactly.
