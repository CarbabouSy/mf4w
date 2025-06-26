# 🧱 mf4w — My Framework for Workspace

**mf4w** (My Framework for Workspace) is a modular, cross-platform workspace structure designed for **developers**, **DevOps engineers**, and **technical learners**.
It is optimized for **Linux**, **macOS**, and **Windows**, and is ideal for managing personal, freelance, or team-based development projects with a professional approach.

---

## 🌐 Key Features

- 🗂️ Organized, scalable folder structure for clean project management
- 🔁 Reusable and adaptable across any platform or team
- ⚙️ Ready for backend, frontend, mobile, DevOps, automation and deployment
- 🚀 Great for onboarding, documentation, and system consistency

---

## 🗂️ Top-Level Structure Overview

| Folder            | Description                                                |
| ----------------- | ---------------------------------------------------------- |
| `projects/`       | Codebase by client, internal use, or sandbox               |
| `field-projects/` | Deployed or tested real-world projects (e.g. Raspberry Pi) |
| `infrastructure/` | Web servers (NGINX, Apache), Docker, databases             |
| `environments/`   | IDE setups, terminal configs, virtual environments         |
| `resources/`      | Cheatsheets, docs, certifications                          |
| `automation/`     | Utility scripts, deployment, cron jobs                     |
| `archives/`       | Old, deprecated, or temporary projects                     |
| `dotfiles/`       | Config files for shell, Git, tmux, etc.                    |

---

## 📁 Detailed Folder Layout

```plaintext
workspaces/
├── projects/                  # 💼 Development Projects
│   ├── clients/               # Real client-based projects
│   ├── internal/              # Internal tools, APIs, mobile apps
│   └── sandbox/               # POCs, prototypes, tests

├── field-projects/           # 🚧 Locally deployed or field-tested projects
│   └── [project-name]/       # With deployment, logs, hardware specs, README

├── infrastructure/           # 🏗️ Web & System Infrastructure
│   ├── web-servers/          # NGINX & Apache config, logs, SSL
│   ├── containers/           # Docker & docker-compose files
│   └── databases/            # PostgreSQL, MySQL, MongoDB setups

├── environments/             # 💻 Developer environments
│   ├── ide/                  # VS Code, JetBrains, snippets
│   ├── terminals/            # Tmux and ZSH customization
│   └── vms/                  # Python venv, Node via nvm

├── resources/                # 📚 Learning & Documentation
│   ├── cheatsheets/          # Git, Docker, CLI, DB commands
│   ├── docs/                 # Markdown, PDFs, personal notes
│   └── certifications/       # Course materials, exams, ISO

├── automation/               # ⚙️ Scripting & Automation
│   ├── dev-tools/            # Git helpers, DB migration, setup
│   ├── deploy/               # Local and production deployment scripts
│   └── cron/                 # Scheduled jobs (backups, cleaning)

├── archives/                 # 📦 Archived or legacy content
│   ├── old-projects/
│   └── temp/                 # Builds, cache, drafts

└── dotfiles/                 # 🛠️ System Configs
    ├── .zshrc
    ├── .gitconfig
    ├── .tmux.conf
    └── setup-workspace.sh
```

## 🚧 Field Projects

The field-projects/ directory hosts real-world deployments or locally tested systems, ideal for Raspberry Pi, internal networks, offline CMS, or edge computing.

Each field project typically includes:

- 🔧 deployment/ → Scripts & config (NGINX, systemd, etc.)

- 🖥️ hardware/ → Device specs: CPU, memory, OS, IP

- 🧾 logs/ → Monitoring output and issue reports

- 📄 README.md → Use case, setup guide, and troubleshooting

## ⚙️ Quick Setup

To initialize your environment:

- En utilisant HTTP
  ```bash
       git clone https://github.com/CarbabouSy/mf4w.git
       cd mf4w
       bash setup-workspace.sh
  ```
- En utilisant SSH
  ```bash
      git clone git@github.com:CarbabouSy/mf4w.git
      cd mf4w
      bash setup-workspace.sh
  ```

## 📌 Best Practices

- Keep client work and internal projects in clearly separated folders.

- Automate repetitive tasks via scripts in automation/.

- Store sensitive configurations in infrastructure/ and version them properly.

- Use environments/ to sync your tools and configs across machines.

- Archive deprecated material to keep your workspace clean.

## 🙌 Contributing

Want to improve mf4w or share your own version?

Fork this repo

Add your tools or improvements

Open a pull request!

## ✨ Final Note

mf4w isn’t just a folder structure — it’s a mindset for serious developers.
Organize smarter. Scale faster. Work better.

## 📜 License

MIT License

Copyright (c) 2025 [CarbabouSy]

Permission is hereby granted, free of charge, to any person obtaining a copy...
