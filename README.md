📖 Article explaining the architecture:
https://medium.com/@olivergilcher/managing-deep-navigation-in-swiftui-with-a-coordinator-architecture-8bba3fc23ceb

# LunaPal Architecture Demo
### High-Level SwiftUI Client Sample (Coordinator + DI + Modular Features)

This repository provides a **public, non-production demonstration** of the high-level architectural 
patterns used in **LunaPal**, a privacy-first, SwiftUI-based life-management platform.
It includes a lightweight SwiftUI sample app that showcases:

- Coordinator-based navigation
- Dependency Injection container
- Modular feature folder structure
- Mock API + models
- Reusable SwiftUI Components
- Public system architecture diagram

> **Important:**
> This repository **does not** contain any production code, real logic, schemas, database structure, or
> internal proprietary implementation used by LunaPal.
> It is strictly for educational, portfolio, and architectural demonstration purposes.

---

## What This Repo Demonstrates

### SwiftUI App Structure
- Clear seperation of concerns
- Coordinator pattern for navigation
- Dependency Injection for testability & modularity
- Shared components for consistent UI

### Modular Feature Architecture
The demo includes placeholder modules resembling LunaPal's ecosystem:

- Health
- Finance
- Productivity
- Pets
- Education

These use simple SwifUI screens to demonstrate modular folder structure - with **no real LunaPal logic included**.

### Mock Networking Layer
A small, safe mock API service demonstrates:

- Protocol-driven design
- Async/await usage
- Injectable API service for previews & testing

### Public Architecture Diagram
The repo includes a **high-level visual overview** of LunaPal's real system architecture, including:

- SwiftUI client
- FastAPI backend (Azure)
- Supabase Auth + RLS-secured Postgres
- Azure Zero-Trust boundary
- On-device AI via Apple Foundation Models

(see `/Architecture` folder)

## Project structure

```lunapal-architecture-demo/
│
├─ README.md
├─ LICENSE
│
├─ Architecture/
│ └─ lunapal-architecture.png # Public architecture diagram
│
├─ LunaPalDemo/
│ ├─ LunaPalDemoApp.swift # Entry point
│ │
│ ├─ Services/
│ │ ├─ DIContainer.swift # Dependency injection
│ │ ├─ MockAPI.swift # Mock network layer
│ │ └─ MockModels.swift # Sample model types
│ │
│ ├─ Navigation/
│ │ ├─ AppCoordinator.swift # Coordinator navigation
│ │ └─ Route.swift # Routing enum
│ │
│ ├─ Features/
│ │ ├─ Health/
│ │ │ └─ HealthHomeView.swift
│ │ ├─ Finance/
│ │ │ └─ FinanceHomeView.swift
│ │ ├─ Productivity/
│ │ │ └─ ProductivityHomeView.swift
│ │ ├─ Pets/
│ │ │ └─ PetsHomeView.swift
│ │ └─ Education/
│ │ └─ EducationHomeView.swift
│ │
│ ├─ Shared/
│ │ ├─ Components/
│ │ │ └─ CategoryCard.swift # Reusable card UI
│ │ └─ Theme/
│ │ └─ LunaPalColors.swift # Branding colors (sample)
│ │
│ └─ Home/
│ └─ HomeView.swift # Main home view
```

---

## Technology Overview

This demo represents patterns inspired by the real LunaPal tech stack:

- **SwiftUI** - iOS client app
- **Coordinator Pattern** - Declarative navigation
- **Dependency Injection** - Modular architecture
- **Mock API (Protocol-Driven)** - Demonstrates clean network abstraction

### Real LunaPal technologies (NOT included here):

- FastAPI backend on **Azure Cloud**
- **Azure Zero-Trust** network segmentation
- Supabase **Auth & Postgres (RLS)**
- On-device AI using **Apple Foundation Models**
- Encrypted cloud data flows
- Modular features across 100+ app categories

---

## Security & Privacy Notice

This repository contains **no**:

- Real LunaPal code
- Real business logic
- Real database schemas
- Supabase migrations
- API endpoints
- Encryption logic
- Internals of DI or Coordinator from production
- Proprietary algorithms

It is **100% safe**, non-sensitive, and intentionally simplified.

---

## Screenshots & Media

Images are located in the `/Architecture` folder.

You may see:

- LunaPal Architecture Diagram
- Optional UI mocks (if added later)

---

## Running the Sample App

Open the project in XCode:

`Build & run on iOS Simulator`

The sample home screen will display category cards lining to placeholder module screens.

---

## License

This demo is open-sourced under the MIT License.
You may use it for educational or architectural reference.

---

## Connect

If you want to explore the real LunaPal project or follow development:

- **LinkedIn:** https://linkedin.com/in/oliver-gilcher
- **GitHub:** https://github.com/ogilcher
- **Website:** https://olivergilcher.com

---

## Final Note

This repository is designed to showcase **engineering maturity**, not application functionality.

It demonstrates that LunaPal:

- Is architected professionally
- Uses scalable design patterns
- Values privacy, security, and modularity
- Has a strong engineering foundation

While keeping all real IP secure.

---
