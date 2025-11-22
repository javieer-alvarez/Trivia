<div align="center">
<img width="400" alt="AppIconTrivia" src="https://github.com/user-attachments/assets/39cef477-17c5-47d2-b6a4-51787370fe1a" />
</div>

# Trivia

<div align="center">

![Swift](https://img.shields.io/badge/Swift-5.7%2B-orange?style=for-the-badge&logo=swift)
![Platform](https://img.shields.io/badge/iOS-17.5%2B-lightgrey?style=for-the-badge&logo=apple)
![Architecture](https://img.shields.io/badge/Architecture-MVVM-blue?style=for-the-badge)
![UI](https://img.shields.io/badge/UI-SwiftUI-success?style=for-the-badge)

</div>

A lightweight **programming history trivia** app built with SwiftUI and MVVM.  
Answer fun questions about the history of programming, get instant feedback, and see your final score in percentage.

<div align="center">
<img width="400" alt="Simulator Screenshot - iPhone 17 Pro - 2025-11-22 at 18 29 28" src="https://github.com/user-attachments/assets/5d0b4649-761b-4234-b656-14ea04ecb31b" />
</div>

---

## 📱 Overview

**Trivia** presents a series of multiple-choice questions about programming history:

- 4 possible answers per question  
- Immediate feedback (green/red) after selecting an answer  
- Final score shown both as a number and percentage  

This app was created as my **first iOS project**, focusing on:
- SwiftUI fundamentals  
- MVVM architecture  
- State management  

---

## 🛠️ Tech Stack

- **Swift 5.7+ / SwiftUI** — interface and app logic  
- **MVVM Architecture** — clear separation of UI + logic  
- **@State / @Published** — reactive updates for UI  
- **No APIs / No external dependencies** — offline and lightweight  

---

## 🚀 Getting Started

### Prerequisites
- **Xcode 14.0** or later  
- **iOS 17.5+** deployment target  

### Setup Instructions

1. **Fork & Clone the repository**
   ```bash
   git clone https://github.com/javieer-alvarez/Trivia.git
   cd Trivia
2. **open in Xcode**

- Choose your device or simulator  
- Build & run (`Cmd + R`)

That’s it — no API keys, configuration, or extra setup required.

---

## 🧠 Architecture Overview

The app follows a clean **MVVM** structure:


### Logic breakdown

| Layer | Responsibility |
|-------|----------------|
| **Model** | Question data + score calculations |
| **ViewModel** | Manages quiz flow, validates answers, exposes state to UI |
| **View** | Renders question, options, animations, and score results |

---

## 📸 Screenshots

<div align="center">
<img width="300" alt="Simulator Screenshot - iPhone 17 Pro - 2025-11-22 at 18 29 16" src="https://github.com/user-attachments/assets/4495227e-a794-4f94-8b55-feb8ade6a2b0" />
<img width="300" alt="Simulator Screenshot - iPhone 17 Pro - 2025-11-22 at 18 27 07" src="https://github.com/user-attachments/assets/0810e835-df9b-4f0f-9352-5621e44fa63a" />
<img width="300" alt="Simulator Screenshot - iPhone 17 Pro - 2025-11-22 at 18 27 20" src="https://github.com/user-attachments/assets/8b43b59f-9591-4718-bd0c-b528fb7d523c" />
<img width="300" alt="Simulator Screenshot - iPhone 17 Pro - 2025-11-22 at 18 29 13" src="https://github.com/user-attachments/assets/3a22dd23-f9fc-4e36-8453-7b91922baf79" />
</div>

---

## ✨ Features

- Multiple-choice trivia questions  
- Green/red feedback per response  
- Final score + percentage summary  
- Simple and polished SwiftUI interface  
- Fully offline — questions are stored locally  

---

## 💡 Future Improvements

- Categories (frontend, backend, languages, history)  
- Timed challenges and combo streaks  
- Sound & haptics feedback  

---

<div align="center">
Made with ❤️ while learning SwiftUI and MVVM
</div>
