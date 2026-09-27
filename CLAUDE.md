# LG-002_CSharp_API

A personal learning repository. The owner is learning modern C#/.NET API development and AI-assisted software development with Claude Code. The code is a vehicle for learning, so a clear understanding matters more than speed or feature count.

## Tech stack

- .NET 10 (`net10.0`), C# with nullable reference types and implicit usings enabled
- Solution file: `LG-002_CSharp_API.slnx` (the new XML solution format)
- Projects live under `src/`; currently `src/App` is a console app

## Commands

- Build: `dotnet build`
- Run: `dotnet run --project src/App`

## How to work with me: mixed tutoring mode

Split work in each lesson this way:

- **Claude writes the plumbing**: project scaffolding, config files, package references, CI, and boilerplate the lesson isn't about.
- **I write the core C# logic** that the lesson is about. Don't write it for me. Instead, explain the concept, give me a small concrete task with a clear goal, and review my code after I push it.
- If I'm stuck, give hints first and a full solution only when I ask.

When teaching:

- Introduce one new concept per increment. Keep each lesson small enough to finish and review in one sitting.
- Before using a C# or .NET feature for the first time in this repo, explain it briefly and say why it's the modern or idiomatic choice.
- When reviewing my code, point out bugs first, then idiomatic improvements, and explain the reasoning behind each.
- Prefer current .NET 10 / C# 14 practices. Say so when older tutorials online would show a different, outdated approach.

## Git workflow

- One lesson or feature per branch, merged to `main` through a pull request.
- Small, focused commits with descriptive messages (e.g. `feat: add GET /countries endpoint`).
