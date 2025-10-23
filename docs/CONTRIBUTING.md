# CONTRIBUTING.md

Thank you for considering contributing to pantheon.nvim! This is a community-driven project inspired by comic heroes, mythology, and cinema, and we welcome help to make it better.

## Ways to Contribute
- **Add New Themes**: Create colorschemes based on DC/Marvel characters, myths, or movies. Follow the theme file structure in `lua/pantheon/themes/`.
- **Fix Bugs**: Report or fix issues in loading, highlights, or terminal integration.
- **Improve Documentation**: Update README, add screenshots, or enhance inline comments.
- **Add Features**: Suggest/implement new extras (e.g., more plugin supports, utilities).
- **Tests**: Add unit tests using plenary.nvim or busted.

## Getting Started
1. Fork the repository.
2. Clone your fork: `git clone https://github.com/<your-username>/pantheon.nvim.git`
3. Create a branch: `git checkout -b feature/your-feature`
4. Make changes and commit: `git commit -m "Add your message"`
5. Push to your fork: `git push origin feature/your-feature`
6. Open a Pull Request.

## Code Style
- Use Lua best practices (e.g., consistent indentation, no trailing spaces).
- Add LuaCATS annotations for types where possible.
- Keep code modular and lightweight—avoid unnecessary dependencies.

## Theme Contributions
- Place new themes in appropriate subdirs (e.g., `lua/pantheon/themes/dc/justice-league/wonder-woman.lua`).
- Follow the Base16 + semantic structure from existing themes.
- Test with `:lua require('pantheon').load('your-universe/variant')`
- Include screenshots in your PR.

## Reporting Issues
Use the issue templates for bugs or theme requests.

## Pull Requests
- Use the PR template.
- Ensure changes pass any existing tests (run locally if added).
- One feature/fix per PR for easier review.

We appreciate all contributions—let's build an epic colorscheme collection! 🚀
