# Google Play Store Publishing Guide & Metadata

This document contains all necessary store listing details, descriptions, data safety declarations, and step-by-step instructions for publishing **ANLEYLAB Bible** to the Google Play Store.

---

## 📱 Store Listing Details

### App Title
- **Default (Amharic):** የካቶሊክ መጽሐፍ ቅዱስ - ANLEYLAB
- **English:** Amharic Catholic Bible - ANLEYLAB

### Short Description (max 80 characters)
- **Amharic:** 73ቱን የካቶሊክ መጻሕፍት ሙሉ በሙሉ ከመስመር ውጭ የሚያነቡበት የአንሌይላብ መጽሐፍ ቅዱስ መተግበሪያ። (74 chars)
- **English:** Complete 73-Book Amharic Catholic Holy Bible app. Works 100% offline. (72 chars)

### Full Description (Amharic)
```text
የአንሌይላብ መጽሐፍ ቅዱስ (ANLEYLAB Bible) በነፃ የሚሰራ፣ የኢንተርኔት ግንኙነት የማይፈልግ የካቶሊክ መጽሐፍ ቅዱስ በአማርኛ ቋንቋ ሲሆን፤ ቅዱሳት መጻሕፍትን ለሁሉም በቀላሉ ተደራሽ ለማድረግ የተዘጋጀ መተግበሪያ ነው።

መተግበሪያው ሁለተኛ የቀኖና መጻሕፍትን (Deuterocanonical Books) ጨምሮ ሙሉውን የ73ቱ መጻሕፍት የካቶሊክ ቀኖና ይዟል።

ዋና ዋና ባህሪያት (Key Features)፡
• ሙሉ 73 መጻሕፍት (የካቶሊክ ቀኖና)
• ከመስመር ውጭ (Offline) የሚሠራ - ምንም ኢንተርኔት አይፈልግም
• ፈጣን የቃላት እና የጥቅስ መፈለጊያ (Bible Search)
• ጥቅስ ማስታወሻ (Bookmarks) እና ጥቅስ ማድመቂያ (Highlights)
• የግል ማስታወሻ መጻፊያ (Personal Notes)
• የንባብ ታሪክ (Reading History) እና ካቆሙበት መቀጠያ
• የፊደል መጠን እና የመስመር ክፍተት ማስተካከያ
• ብርሃን እና ጨለማ ሁነታ (Light & Dark Mode)
• 100% ነፃ እና ምንም አይነት ማስታወቂያ ወይም መረጃ ስብሰባ የሌለው

ለኢትዮጵያ ካቶሊካዊት ቤተክርስቲያን ማኅበረሰብ እና የአምላክን ቃል በአማርኛ ማንበብ ለሚፈልጉ ሁሉ በአንሌይላብ (ANLEYLAB) በፍቅር የተዘጋጀ።

ድህረ-ገፅ፡ https://www.anleylab.et
```

### Full Description (English)
```text
ANLEYLAB Bible is a free, 100% offline Amharic Catholic Holy Bible app designed to make the Scriptures easily accessible to everyone.

It includes the complete 73-book Catholic Biblical Canon, featuring both the Old and New Testaments along with all Deuterocanonical books.

Key Features:
• Complete 73-Book Catholic Biblical Canon in Amharic
• Fully Offline: Read anywhere without internet connection
• Fast Search: Find verses, words, and chapters instantly
• Bookmarks & Verse Highlighting: Save and categorize favorite passages
• Personal Notes: Add personal reflections to any verse
• Reading History & Resume Reading feature
• Customizable Typography: Adjustable font sizes and line spacing
• Light & Dark Modes for comfortable reading day and night
• 100% Free: No ads, no account registration, and zero data collection

Developed with care by ANLEYLAB for the Ethiopian Catholic community and all readers seeking God's word in Amharic.

Website: https://www.anleylab.et
```

---

## 🛡️ Data Safety Form Questionnaire Answers (Play Console)

When completing the **Data Safety** section in Google Play Console, select the following answers:

1. **Does your app collect or share any of the required user data types?**
   👉 Select **"No"**

2. **Is all of the user data collected by your app encrypted in transit?**
   👉 Select **"N/A"** (No data is collected or transmitted)

3. **Do you provide a way for users to request that their data be deleted?**
   👉 Select **"Yes"** (User data such as notes/bookmarks can be deleted directly within the app or by clearing app storage)

---

## 🏷️ Categorization & Target Audience

- **App Category:** Books & Reference
- **Content Rating:** Everyone / 3+ (Suitable for all ages)
- **Target Age Group:** 13+, 18+ (Select "All ages / Everyone")
- **Contains Ads:** No
- **News App:** No
- **Government App:** No

---

## 🌐 Privacy Policy Requirements

- **Privacy Policy URL (for Google Play Console):**  
  `https://anley-dev.github.io/Anleylab-bible-/privacy.html`  
  *(Alternative URLs: `https://anley-dev.github.io/Anleylab-bible-/` or `https://anley-dev.github.io/Anleylab-bible-/PRIVACY_POLICY.html`)*
- **In-App Privacy Policy:** Built into the app under **Settings → Privacy Policy** and **About ANLEYLAB Bible**.

---

## 🎨 Graphics & Assets Checklist

| Asset | Specifications | Status / Location |
| :--- | :--- | :--- |
| **App Icon** | 512 x 512 px PNG (32-bit, max 1024KB) | Created (`assets/images/app_icon.png`) |
| **Feature Graphic** | 1024 x 500 px PNG or JPEG | Ready to export from `design/` |
| **Phone Screenshots** | Min 2 screenshots (16:9 or 9:16 aspect ratio) | Screenshots available in `screenshots/` |
| **7" & 10" Tablet Screenshots** | Optional but recommended | Use phone screenshots or tablet previews |

---

## 🚀 Step-by-Step Release & Build Instructions

### Step 1: Create a Release Keystore (If not already created)
Run the following command to generate your signing key:
```bash
keytool -genkey -v -keystore android/app/upload-keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload
```

### Step 2: Configure `android/key.properties`
Create `android/key.properties` (based on `android/key.properties.example`):
```properties
storePassword=your_keystore_password
keyPassword=your_key_password
keyAlias=upload
storeFile=app/upload-keystore.jks
```

### Step 3: Build the Production App Bundle (.aab)
Run the Flutter build command:
```bash
flutter build appbundle --release
```
The output file will be generated at:
`build/app/outputs/bundle/release/app-release.aab`

### Step 4: Upload to Google Play Console
1. Log in to [Google Play Console](https://play.google.com/console).
2. Click **Create app** and set title: `የካቶሊክ መጽሐፍ ቅዱስ - ANLEYLAB`.
3. Complete **Main Store Listing** with descriptions and graphics.
4. Complete **App Content** questionnaires:
   - Data Safety (Select No data collection)
   - Privacy Policy (Link to your hosted `PRIVACY_POLICY.html`)
   - Content Rating (Fill IARC questionnaire -> Everyone 3+)
   - Target Audience
5. Go to **Production** (or **Testing → Internal Testing**), create a new release, and upload `app-release.aab`.
6. Review and rollout the release!
