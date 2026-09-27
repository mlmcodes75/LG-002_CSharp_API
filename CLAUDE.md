# LG-002_CSharp_API

A personal learning repository. The owner is learning modern C#/.NET API development and AI-assisted software development with Claude Code. The code is a vehicle for learning, so a clear understanding matters more than speed or feature count.

## Tech stack

- .NET 10 (`net10.0`), C# with nullable reference types and implicit usings enabled
- Solution file: `LG-002_CSharp_API.slnx` (the new XML solution format)

## Solution structure

The learning is split into numbered sections, each in its own project, all in one solution:

- `src/App`: the single runnable host. It references every section project and wires each one in with one line (e.g. `app.MapMinimalApiBasics();`). Keep section logic out of `App`.
- `src/SNN.<Topic>` (e.g. `src/S01.MinimalApiBasics`): one class library per section. It exposes its endpoints and services through extension methods, so `App` doesn't depend on its internals.
- A new section starts with Claude creating its project, adding it to the `.slnx`, and referencing it from `App`.

Planned sections (order may change as we go):

1. Minimal API basics: endpoints, routing, parameter binding
2. Validation and error handling (ProblemDetails)
3. Dependency injection and configuration
4. Data access with EF Core
5. Testing (unit and integration tests)
6. Authentication and authorization
7. AI integration: calling the Claude API from C#

## Knowledge notes

Every project has a `NOTES.md` at its root that summarizes what was learned, for later review. At the end of each lesson, Claude updates the notes for that section's project with:

- the concepts covered, each explained in a few sentences
- short code snippets taken from this repo, not generic examples
- pitfalls and outdated patterns to avoid
- links to the official Microsoft Learn docs for each topic

Write the notes for someone rereading them months later: they should make sense without the chat history.

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
