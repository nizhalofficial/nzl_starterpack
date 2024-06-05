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
