# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Minecraft Education Edition world titled "Wheel of Stevecoding (v3.0)" containing multiple interactive mini-games implemented through behavior packs and resource packs.

### Architecture

**Core Structure:**
- `behavior_packs/bp0/` - Game logic, entities, functions, and scripts
- `resource_packs/rp0/` - Visual assets, models, textures, animations, and UI
- `level.dat` - World data and settings
- `education.json` - Education Edition specific configuration
- World configuration files: `world_behavior_packs.json`, `world_resource_packs.json`

**Mini-Games Implementation:**
- **Craft** - Crafting puzzle game (`functions/utility/games/craft/`)
- **Elytra** - Flying game with bombs (`functions/utility/games/elytra/`)
- **Grid** - Pattern matching game (`functions/utility/games/grid/`)
- **Nock** - Archery target game (`functions/utility/games/nock/`)
- **Orb** - Orb collection game (`functions/utility/games/orb/`)
- **Final** - Final showdown game (`functions/utility/games/final/`)

**JavaScript API Integration:**
- Main script: `behavior_packs/bp0/scripts/Main.js`
- Uses `@minecraft/server` and `@minecraft/server-ui` modules
- Implements ActionFormData for interactive UI elements

### Key Components

**Function Organization:**
- `functions/loops/` - Main game loop functions 
- `functions/seq/` - Sequential act-based gameplay
- `functions/utility/` - Game utilities, team management, scoring, fog effects
- `functions/utility/wheel/` - Wheel of fortune game selection system

**Entity System:**
- Custom entities for each mini-game with behavior (.bp.e.json) and resource (.rp.e.json) files
- NPCs with dialogue system
- Interactive objects with custom animations and particle effects

**Localization:**
- Multi-language support in `texts/` directories
- Language files for 25+ languages including Korean, English, Japanese, etc.

## Development Commands

**Testing Functions:**
```bash
# Access admin commands via in-game functions
/function admin
/function utility/admin_commands

# Reset games
/function utility/games/[game_name]/game_reset

# Start specific games  
/function utility/games/[game_name]/game_start
```

**Structure Management:**
```bash
# Load game structures
/structure load [structure_name] [x] [y] [z] [rotation] [mode]

# Manage ticking areas
/function utility/tickingarea_add
/function utility/tickingarea_remove
```

**Cutscene Management:**
```bash
# Skip current cutscene (available for all players)
/function skip

# Show admin commands and current game status (admin only)
/function utility/admin_commands
```

## Version Control
* Whenever code changes are made, you must record a one-line description with emoji in korean of the change in `.commit_message.txt` with Edit Tool.
   - Read `.commit_message.txt` first, and then Edit.
   - Overwrite regardless of existing content.
   - If it was a git revert related operation, make the .commit_message.txt file empty.
