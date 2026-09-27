---
name: next-lesson
description: Continue the owner's C#/.NET learning path in this repo. Reviews the current lesson if the owner has pushed their code, otherwise plans and sets up the next small lesson. Use when the user runs /next-lesson or says "next lesson", "what's next", "continue", or "review my lesson".
---

# Next lesson

This repo is a learning path. `LEARNING.md` is the progress log, and `CLAUDE.md` holds the section plan and the mixed tutoring rules. Follow those rules: Claude writes plumbing, the owner writes the core logic of each lesson.

Optional argument: $ARGUMENTS (e.g. a topic the owner wants next, or "review").

## 1. Find where we are

- Read `LEARNING.md`. The last entry tells you the current lesson and its status.
- Run `git fetch origin` and check the lesson's branch and PR, if the entry names them.

## 2. If the current lesson is `in progress`

The owner was given a task. Check whether they have pushed code for it.

- **Pushed:** review it. Run `dotnet build` and `dotnet test` first. Report bugs first, then idiomatic improvements, each with the reasoning. If changes are needed, ask the owner to make them and stop here. Don't fix their code for them unless they ask.
- **Not pushed:** restate the task briefly, offer a hint, and stop.
- **Approved:** update the section's `NOTES.md` (format in `CLAUDE.md`), set the entry to `done`, and link the PR. Then continue to step 3 only if the owner wants the next lesson now.

## 3. Plan the next lesson

- Pick the next single concept in the current section, or the first concept of the next section. Honor $ARGUMENTS if it names a topic.
- Keep it small: one new concept, finishable in one sitting.
- If it starts a new section, follow the section setup in `CLAUDE.md` (new project, `.slnx`, reference from `App`, empty `NOTES.md`).

## 4. Set it up

- Branch from the latest `main`. Use the session's designated branch if one is given, otherwise `lesson/SNN-LMM-<short-slug>` (e.g. `lesson/S01-L02-route-parameters`).
- Write only the plumbing. Leave the core logic as a clearly marked gap (e.g. a `// TODO(lesson):` comment) that still compiles.
- If practical, add a test that fails until the owner's code works, so success is objective.
- Run `dotnet build -warnaserror` and `dotnet test`. Only a failing lesson test is acceptable.
- Add an entry to `LEARNING.md` with status `in progress`, then commit and push.

## 5. Present the lesson

Use this structure:

- **Concept:** what it is, why it's the modern .NET 10 / C# 14 way, and what outdated approach tutorials may show instead.
- **Your task:** the goal, the exact files and `TODO(lesson)` spots to edit, and how to check it works (the test to run, or a `curl` command).
- **Hints:** available on request. Don't give them up front.
- **Docs:** one or two Microsoft Learn links.
- **When done:** pull the branch, write the code in VS Code, push, and run `/next-lesson` for a review.
