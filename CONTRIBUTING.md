# Contributing to SAS Data Quality Checks

Thank you for your interest in contributing! This document provides guidelines and instructions for contributing to the project.

## Getting Started

1. **Fork the repository** on GitHub
2. **Clone your fork** locally:
   ```bash
   git clone https://github.com/YOUR_USERNAME/sas-dq-checks.git
   cd sas-dq-checks
   ```
3. **Create a branch** for your changes:
   ```bash
   git checkout -b feature/your-feature-name
   ```

## Development Workflow

### Making Changes

1. **Understand the codebase**:
   - Review `/docs/README.md` for program architecture
   - Review `/docs/DATA_LINEAGE.md` for data flow
   - Review `/src/sashelp_dqchecks.sas` for implementation

2. **Make your changes**:
   - Follow SAS coding standards
   - Add comments explaining complex logic
   - Maintain consistency with existing code style

3. **Test your changes**:
   - Test with sashelp.cars dataset
   - Verify all output tables are created
   - Check SAS log for warnings/errors
   - Document test results

### Code Style Guidelines

- Use meaningful variable and macro names
- Add section headers for logical groupings
- Include comments for non-obvious logic
- Use consistent indentation (2 spaces)
- Keep procedures focused and modular

### Documentation Updates

When adding features, also update:
- Relevant `.md` file in `/docs/`
- Code comments in the SAS program
- CHANGELOG.md with your changes
- README.md if introducing new functionality

## Submitting Changes

### Commit Messages

Use clear, descriptive commit messages:
```
fix: Correct missing value detection in Step 2

- Improved NULL count calculation
- Added handling for numeric columns
- Verified with test dataset
```

Format: `type(scope): subject`
- **type**: fix, feat, docs, style, refactor, test, chore
- **scope**: step name or area affected
- **subject**: Clear description of change

### Push to Your Fork
```bash
git push origin feature/your-feature-name
```

### Create a Pull Request

1. Go to the original repository
2. Click "New Pull Request"
3. Select your branch
4. Fill out the PR template:
   - Describe the changes
   - Reference related issues
   - List testing performed
   - Provide before/after examples if applicable

### PR Review Process

- A maintainer will review your PR
- Make requested changes on your branch
- Changes will be automatically reflected in the PR
- Once approved, your PR will be merged

## Reporting Issues

Use GitHub Issues to report bugs or suggest enhancements:

### Bug Reports
```
Title: [BUG] Clear, concise description

**Description:**
Detailed explanation of the issue

**Reproduction Steps:**
1. Step 1
2. Step 2
3. Step 3

**Expected Behavior:**
What should happen

**Actual Behavior:**
What actually happened

**SAS Log:**
[Paste relevant error messages]

**Environment:**
- SAS Version: 9.4 / Viya
- Dataset: sashelp.cars / custom
- OS: Windows / Linux / Mac
```

### Feature Requests
```
Title: [FEATURE] Clear description of requested feature

**Description:**
Detailed explanation of the feature

**Use Case:**
Why this feature is needed

**Proposed Solution:**
Your suggestion for implementation
```

## Questions or Need Help?

- Check the [documentation](/docs/)
- Review existing [issues](https://github.com/wwuyts/sas-dq-checks/issues)
- Create a new [discussion](https://github.com/wwuyts/sas-dq-checks/discussions)

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

## Recognition

All contributors will be acknowledged in the project's CONTRIBUTORS.md file.

Thank you for contributing! 🎉