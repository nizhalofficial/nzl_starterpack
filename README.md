# Advanced Starter Pack System for FiveM

This resource provides an advanced starter pack system for FiveM servers utilizing QBCore and ESX frameworks.

## Features

- **Language Configuration**: Set the language for notifications.
- **Debug Mode**: Toggle debug messages in the console.
- **Integration Options**:
  - **Target Resource**: Choose between `ox_target` and `qb-target`.
  - **Inventory Resource**: Choose between `ox_inventory`, `qb-inventory`, and `ps-inventory`.
  - **SQL Resource**: Choose between `oxmysql`, `mysql-async`, and `ghmattimysql`.
- **Command Usage**: Enable or disable the command to give starter packs to players.
- **Customizable Starter Pack**:
  - Define items and quantities to be given to new players.
  - Set up a designated NPC with customizable appearance and location for players to receive their starter pack.
- **Starter Vehicle Option**: Provide a starter vehicle to players with customizable options such as model, fuel level, and teleportation.
- **LegacyFuel Compatibility**: Easily integrate with LegacyFuel to manage vehicle fuel levels.
- **Notification System**: Customizable notification system based on server framework (ESX or QBCore).
- **Discord Logging**: Includes built-in Discord logging.
- **Performance**: This resource is running at idle with 0.00 ms.

## Installation

1. Download and extract the resource into your `resources` folder.
2. Add the following line to your `server.cfg`:
3. Import the SQL file (`nzl_starterpack.sql`) into your database.
4. Customize `config.lua` according to your server's requirements.

## Usage

### Commands

- `/starterpack`: Gives the player their starter pack (if enabled in the config).

## Configuration

Edit the `config.lua` file to customize the starter pack settings:

```lua
Config = {}

-- General Settings
Config.Language = 'en'
Config.DebugMode = true

-- Integration Options
Config.TargetResource = 'qb-target' -- options: 'ox_target', 'qb-target'
Config.InventoryResource = 'qb-inventory' -- options: 'ox_inventory', 'qb-inventory', 'ps-inventory'
Config.SQLResource = 'oxmysql' -- options: 'oxmysql', 'mysql-async', 'ghmattimysql'

-- Command Usage
Config.EnableCommand = true

-- Starter Pack Settings
Config.StarterPackItems = {
 {name = 'bread', amount = 5},
 {name = 'water', amount = 5}
}

Config.NPC = {
 model = 'csb_mweather',
 coords = vector3(-267.9, -957.3, 31.2),
 heading = 200.0,
 animation = 'WORLD_HUMAN_CLIPBOARD'
}

Config.StarterVehicle = {
 model = 'blista',
 fuel = 100.0,
 teleport = true,
 spawnCoords = vector3(-265.0, -963.6, 31.2),
 spawnHeading = 150.0
}

-- Notification Settings
Config.NotificationSystem = 'qb-core' -- options: 'qb-core', 'esx'

-- Discord Logging
Config.DiscordWebhook = 'YOUR_DISCORD_WEBHOOK_URL'
