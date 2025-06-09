@echo off
echo 🚀 Initiating Urbalurba Presentation System...

REM Check if we're in the right location
if not exist "urbalurba-present\template-settings.md" (
    echo ❌ Error: urbalurba-present folder not found or missing template-settings.md
    echo    Please run this script from the directory containing the urbalurba-present folder
    pause
    exit /b 1
)

REM Copy template settings to project root
echo 📄 Copying template-settings.md...
copy "urbalurba-present\template-settings.md" .

REM Create presentation input file
echo 📝 Creating presentation-input.md...
(
echo # My Presentation Ideas
echo.
echo ## Main Topics
echo - Add your main presentation topics here
echo - Key messages you want to convey
echo - Important statistics or data points
echo.
echo ## Call to Action
echo - What do you want your audience to do?
echo - Next steps for engagement
echo.
echo ## Notes
echo - Additional context or supporting information
echo - References or sources
echo - Speaker notes or reminders
) > presentation-input.md

REM Set up VS Code settings
echo ⚙️  Setting up VS Code configuration...
if not exist ".vscode" (
    mkdir .vscode
    copy "urbalurba-present\.vscode\settings.json" ".vscode\"
    echo ✅ VS Code settings copied
) else (
    echo ⚠️  .vscode folder exists. Please manually copy Marp settings from urbalurba-present\.vscode\settings.json
)

echo.
echo 🎉 Setup complete! Your project is ready.
echo.
echo 📁 Files created:
echo    ├── template-settings.md ^(configure your organization^)
echo    ├── presentation-input.md ^(add your content here^)
echo    └── .vscode\settings.json ^(VS Code configuration^)
echo.
echo 🚀 Next steps:
echo    1. Edit template-settings.md with your organization's details
echo    2. Add your presentation content to presentation-input.md
echo    3. Run: claude code
echo    4. Tell Claude: 'I need you to create a presentation. Please start by reading urbalurba-present/ai-instructions.md and following those instructions exactly.'
echo.
echo 📚 For detailed instructions, see: https://github.com/terchris/urbalurba-present/blob/main/doc/howto.md
pause