# Alpha Strike Group Editor

A lightweight Flask web application for editing Alpha Strike group JSON files based on the BattleTech tabletop game.

## Features

- **Group Management**: Create, edit, and delete Alpha Strike group files
- **Member Management**: Add, edit, and delete unit members within groups
- **File Operations**: Upload, download, and save JSON files
- **Bootstrap UI**: Clean, responsive interface using Flask-Bootstrap
- **Schema Validation**: Based on the Alpha Strike Group Export schema

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

## License

This project is for personal use with BattleTech Alpha Strike data.
