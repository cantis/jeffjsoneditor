# Alpha Strike Group Editor

Evan Young October 2025

A lightweight Flask web application for editing ALPHA STRIKE json files for the Jeff's BT Tools Site

https://jeffs-bt-tools.github.io/battletech-tools/

## Features

- **Group Management**: Create, edit, and delete Alpha Strike group files
- **Member Management**: Add, edit, and delete unit members within groups
- **File Operations**: Upload, download, and save JSON files
- **Bootstrap UI**: Clean, responsive interface using Flask-Bootstrap
- **Schema Validation**: Based on the Alpha Strike Group Export schema

## Limitations
- Very quick local flask app with no authentication or logging
- Limited error handling and input validation
- Creates local files in the data/ directory until you download them somewhere else
- You aren't creating units, you're editing JSON files that represent groups and their members!

## Installation

1. Install dependencies:
```bash
pip install flask flask-bootstrap
```

Or if using uv/pip:
```bash
uv pip install -e .
```

## Running the Application

Run the application using:

```bash
python main.py
```

Then navigate to `http://localhost:5000` in your web browser.

## Usage

### Home Page
- View all JSON files in the `data/` folder
- Upload new JSON files
- Download or delete existing files

### Creating a New Group
1. Click "New Group" in the navigation
2. Fill in the group details (name, label, formation bonus)
3. Click "Create Group"

### Editing a Group
1. Click "Edit" on any file from the home page
2. Use the tabs to switch between:
   - **Group Info**: Edit group-level metadata
   - **Members**: View and manage unit members

### Managing Members
- **Add Member**: Click "Add New Member" button
- **Edit Member**: Click "Edit" on any member card
- **Delete Member**: Click "Delete" on any member card (with confirmation)

### Member Fields
- **Basic Info**: Class, variant, name, custom name, classification, type, role
- **Stats**: Tonnage, TMM, armor, structure, size, threshold, points, cost
- **Damage**: Short/Medium/Long/Extreme range damage values
- **Pilot**: Name, gunnery skill, piloting skill, wounds
- **Additional**: Date introduced, TRO, MUL ID, image URL

## File Structure

```
jeffjsoneditor/
├── data/                    # JSON data files storage
├── src/
│   ├── __init__.py
│   ├── app.py              # Main Flask application
│   └── templates/          # HTML templates
│       ├── base.html       # Base template with Bootstrap
│       ├── index.html      # Home page
│       ├── new_group.html  # Create new group
│       ├── edit_group.html # Edit group & view members
│       ├── new_member.html # Add new member
│       └── edit_member.html # Edit member
├── jeffimport.schema.json  # JSON schema definition
├── main.py                 # Entry point
├── pyproject.toml         # Project dependencies
└── README.md              # This file
```

## JSON Schema

The application follows the Alpha Strike Group Export schema defined in `jeffimport.schema.json`. All JSON files must conform to this schema structure.

## Notes

- Files are stored in the `data/` directory
- UUIDs are automatically generated for new groups and members
- Last updated timestamps are automatically maintained
- No authentication or logging is implemented (lightweight design)
- Secret key is set to a development value (change for production use)

## Build and run the Windows executable

This repo includes scripts to build a standalone .exe and to launch it easily on Windows.

1) Build the .exe using PowerShell from the project root:

```powershell
./build.ps1
```

2) Run the built app (opens your browser to http://localhost:5000):

```powershell
./start_app.bat
```

Notes:
- The batch file starts the browser, then runs the built executable (as configured in `start_app.bat`).
- If the executable path changes in your build process, update the path inside `start_app.bat` accordingly.
- If port 5000 is in use, stop the other service or change the port in `main.py` and rebuild.

