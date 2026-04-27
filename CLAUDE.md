# Akeyless-Sheller

> **★★★ CSE / Knowable Construction.** This repo operates under **Constructive Substrate Engineering** — canonical specification at [`pleme-io/theory/CONSTRUCTIVE-SUBSTRATE-ENGINEERING.md`](https://github.com/pleme-io/theory/blob/main/CONSTRUCTIVE-SUBSTRATE-ENGINEERING.md). The Compounding Directive (operational rules: solve once, load-bearing fixes only, idiom-first, models stay current, direction beats velocity) is in the org-level pleme-io/CLAUDE.md ★★★ section. Read both before non-trivial changes.

This Go library streamlines the process of handling authentication and managing tokens when interacting with the Akeyless CLI (Command Line Interface). It automatically manages tokens by reusing valid ones and only prompts for re-authentication when needed, minimizing interruptions. This not only simplifies the user experience but also delegates authentication to the Akeyless CLI, ensuring top-notch security and compatibility with various authentication methods.
