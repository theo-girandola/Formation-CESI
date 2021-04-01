TEAM_CIVIL = DarkRP.createJob("Vagabond", {
	color = Color(47, 153, 59, 255),
	model = {
		"models/half-dead/metroll/a1b1.mdl",
		"models/half-dead/metroll/a2b1.mdl",
		"models/half-dead/metroll/a3b1.mdl",
		"models/half-dead/metroll/a4b1.mdl",
		"models/half-dead/metroll/a5b1.mdl",
		"models/half-dead/metroll/f1b1.mdl",
		"models/half-dead/metroll/f2b1.mdl",
		"models/half-dead/metroll/f4b1.mdl",
		"models/half-dead/metroll/f6b1.mdl",
		"models/half-dead/metroll/m2b1.mdl",
		"models/half-dead/metroll/m4b1.mdl",
		"models/half-dead/metroll/m5b1.mdl",
		"models/half-dead/metroll/m6b1.mdl",
		"models/half-dead/metroll/m7b1.mdl",
		"models/half-dead/metroll/m8b1.mdl",
		"models/half-dead/metroll/m9b1.mdl",
		"models/gulag/male_01.mdl",
		"models/eva.mdl",
		
	},
	description = [[ ]],
	weapons = {},
	command = "civil",
	max = 0,
	salary = 5,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Autres",
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerSpawn = function(ply)
	GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
	end,
	bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_CHIEN = DarkRP.createJob("Chien", {
	color = Color(122, 95, 56, 255),
	model = {
		"models/falloutdog/falloutdog.mdl",
		"models/falloutdog/black/falloutdog.mdl",
		"models/falloutdog/greyblack/falloutdog.mdl",
		"models/metroll/mutants/dog.mdl",
		"models/metroll/mutants/dog2.mdl",

	},
	description = [[Vous êtes un simple chien sans maitre !]],
	weapons = {"weapon_pet"},
	command = "wafwaf",
	max = 4,
	salary = 5,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Autres",
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerSpawn = function(ply)
	GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.25)
    ply:SetHealth(100)
	end,
	bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_MDJ = DarkRP.createJob("Maitre de Jeu", {
	color = Color(235, 52, 64, 255),
	model = {
		"models/crpmetro/hanse/joel_tlou.mdl",

	},
	description = [[Vous êtes l'administrateur du serveur !]],
	weapons = {},
	command = "mdj",
	max = 0,
	salary = 1000,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Autres",
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 100 ) end,
	PlayerSpawn = function(ply)
	GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
	end,
	bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_SDTH = DarkRP.createJob("Soldat - Hanse", {
	color = Color(54, 109, 133, 255),
	model = {
		"models/metroll/hanza/balaclava_soldier.mdl",          
		"models/metroll/hanza/hanza1_soldier.mdl",         
		"models/metroll/hanza/hanza3_soldier.mdl",        
		"models/metroll/hanza/hanza2_soldier.mdl",               
		"models/metroll/hanza/hanza4_soldier.mdl",

	},
	description = [[Vous êtes un soldat au service de la Hanse !]],
	weapons = {"tfa_metro_lowlife"},
	command = "sdth",
	max = 0,
	salary = 25,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "La Hanse",
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 20 ) end,
	PlayerSpawn = function(ply)
	GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
	end,
	bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_OFFH = DarkRP.createJob("Officier - Hanse", {
	color = Color(54, 109, 133, 255),
	model = {
		"models/exodus/hanza/hanza_balaclava.mdl",
        "models/exodus/hanza/hanza_gasmask_soldier_pr.mdl", 
		"models/exodus/bandit/valera_balaclava.mdl",
		
	},
	description = [[Vous êtes un officier au service de la Hanse !]],
	weapons = {"tfa_metro_exo_revolver","tfa_metro_exo_rpk"},
	command = "offh",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "La Hanse",
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 40 ) end,
	PlayerSpawn = function(ply)
	GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
	end,
	bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_CHEFH = DarkRP.createJob("Chef de Station - Hanse", {
	color = Color(54, 109, 133, 255),
	model = {
		"models/arx/kaskad.mdl",
		
	},
	description = [[Vous êtes le chef de la station Hanséatique !]],
	weapons = {"tfa_metro_exo_revolver","tfa_metro_exo_rpk"},
	command = "chefh",
	max = 1,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "La Hanse",
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 40 ) end,
	PlayerSpawn = function(ply)
	GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
	end,
	bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_SECONDH = DarkRP.createJob("Second de Station - Hanse", {
	color = Color(54, 109, 133, 255),
	model = {
		"models/metroll/neutral/stalker2_spez.mdl",
		
	},
	description = [[Vous êtes le second de la station Hanséatique !]],
	weapons = {"tfa_metro_exo_revolver","tfa_metro_exo_rpk"},
	command = "secondh",
	max = 1,
	salary = 75,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "La Hanse",
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 40 ) end,
	PlayerSpawn = function(ply)
	GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
	end,
	bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_MASTOH = DarkRP.createJob("Mastodonte [VIP] - Hanse", {
	color = Color(54, 109, 133, 255),
	model = {
		"models/metroll/redline/balaclava_heavy.mdl",
		
	},
	description = [[Vous êtes le second de la station Hanséatique !]],
	weapons = {"tfa_metro_minigun","tfa_metro_lowlife"},
	command = "mastoh",
	max = 2,
	salary = 40,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "La Hanse",
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 600 ) end,
	PlayerSpawn = function(ply)
	GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75 , GAMEMODE.Config.runspeed * 0.5)
    ply:SetHealth(400)
	end,
	bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_RANGER = DarkRP.createJob("Ranger - Ordre de Sparte", {
    color = Color(179, 0, 255, 255),
    model = {
        "models/metroll/spartans/balaclava2_spartan.mdl",     
		"models/metroll/spartans/balaclava_spartan.mdl",     
		"models/metroll/neutral/stalker2_himza.mdl",   
		"models/metroll/neutral/stalker1_himza.mdl",
         
    },
    description = [[Vous êtes une membre de l'Ordre de Sparte, votre centre d'intérêt est la survie des civils, vous donnez votre vie pour eux et éliminé le plus de mutant possible pour veiller à leurs protection]],
    weapons = {},
    command = "ranger",
    max = 6,
    salary = 25,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "L'Ordre de Sparte",
    candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 40 ) end,
    PlayerSpawn = function(ply)
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
    end,
    bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_LRANGER = DarkRP.createJob("Leader - Ordre de Sparte", {
    color = Color(179, 0, 255, 255),
    model = {
        "models/exodus/sparta/miller_rework.mdl",
        
    },
    description = [[Vous êtes le Leader des Rangers]],
    weapons = {"tfa_metro_exo_revolver","tfa_metro_exo_ak74"},
    command = "leadranger",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "L'Ordre de Sparte",
    candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 60 ) end,
    PlayerSpawn = function(ply)
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
    end,
    bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_LSRANGER = DarkRP.createJob("Second-Leader - Ordre de Sparte", {
    color = Color(179, 0, 255, 255),
    model = {
        "models/metroll/spartans/hunter_spartan.mdl",
		"models/metroll/neutral/stalker1_himza.mdl",
        
    },
    description = [[Vous êtes le Second-Leader des Rangers]],
    weapons = {"tfa_metro_exo_revolver","tfa_metro_exo_ak74"},
    command = "leadsecranger",
    max = 1,
    salary = 75,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "L'Ordre de Sparte",
    candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 60 ) end,
    PlayerSpawn = function(ply)
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
    end,
    bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_OFFR = DarkRP.createJob("Officier - Ordre de Sparte", {
    color = Color(179, 0, 255, 255),
    model = {
        "models/metroll/spartans/ulman_spartan.mdl",
		"models/exodus/sparta/spartan_balaclava.mdl",
	
    },
    description = [[Vous êtes un Officier Ranger]],
    weapons = {"tfa_metro_exo_revolver","tfa_metro_exo_ak74"},
    command = "offranger",
    max = 3,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "L'Ordre de Sparte",
    candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 40 ) end,
    PlayerSpawn = function(ply)
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
    end,
    bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_OFFRED = DarkRP.createJob("Officier - RedLine", {
    color = Color(255, 0, 0, 255),
    model = {
        "models/metroll/neutral/stalker2_neutral.mdl",
	
    },
    description = [[Vous êtes un Officier RedLine]],
    weapons = {"tfa_metro_padnok","tfa_metro_exo_bastard"},
    command = "offredline",
    max = 5,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "La RedLine",
    candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 40 ) end,
    PlayerSpawn = function(ply)
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
    end,
    bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_SGLREDLINE = DarkRP.createJob("Second-Généralissime - RedLine", {
    color = Color(255, 0, 0, 255),
    model = {
        "models/metroll/redline/redline18_soldier.mdl",
	
    },
    description = [[Vous êtes le Second-Généralissime RedLine]],
    weapons = {"tfa_metro_padnok","tfa_metro_exo_bastard"},
    command = "sglredline",
    max = 1,
    salary = 75,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "La RedLine",
    candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 40 ) end,
    PlayerSpawn = function(ply)
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
    end,
    bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_GREDLINE = DarkRP.createJob("Généralissime - RedLine", {
    color = Color(255, 0, 0, 255),
    model = {
        "models/metroll/redline/redline48_soldier.mdl",
		"models/metroll/redline/redline36_soldier.mdl",
		"models/metroll/redline/redline37_soldier.mdl",
	
    },
    description = [[Vous êtes le Généralissime RedLine]],
    weapons = {"tfa_metro_padnok","tfa_metro_exo_bastard"},
    command = "gredline",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "La RedLine",
    candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 40 ) end,
    PlayerSpawn = function(ply)
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
    end,
    bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_MREDLINE = DarkRP.createJob("Mastodonte [VIP] - RedLine", {
    color = Color(255, 0, 0, 255),
    model = {
		"models/metroll/neutral/stalker1_heavy.mdl",
	
    },
    description = [[Vous êtes un Mastodonte RedLine]],
    weapons = {"tfa_metro_padnok","tfa_metro_minigun"},
    command = "mredline",
    max = 2,
    salary = 40,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "La RedLine",
    candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 600 ) end,
    PlayerSpawn = function(ply)
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75 , GAMEMODE.Config.runspeed * 0.5)
    ply:SetHealth(400)
    end,
    bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_SDTREDLINE = DarkRP.createJob("Soldat - RedLine", {
    color = Color(255, 0, 0, 255),
    model = {
        "models/metroll/redline/redline41_soldier.mdl",
		"models/metroll/redline/redline21_soldier.mdl",

	
    },
    description = [[Vous êtes un Soldat RedLine]],
    weapons = {"tfa_metro_padnok"},
    command = "sdtredline",
    max = 0,
    salary = 25,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "La RedLine",
    candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 20 ) end,
    PlayerSpawn = function(ply)
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
    end,
    bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_SDTARBAT = DarkRP.createJob("Soldat - Arbat", {
    color = Color(0, 0, 255, 255),
    model = {
        "models/metroll/neutral/stalker1_spez.mdl",
	
    },
    description = [[Vous êtes un Soldat Arbbat]],
    weapons = {"tfa_metro_exo_revolver"},
    command = "sdtarbat",
    max = 0,
    salary = 25,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "L'Arbat",
    candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 20 ) end,
    PlayerSpawn = function(ply)
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
    end,
    bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_MASTOARBAT = DarkRP.createJob("Mastotonde [VIP] - Arbat", {
    color = Color(0, 0, 255, 255),
    model = {
        "models/metroll/neutral/stalker2_heavy.mdl",
	
    },
    description = [[Vous êtes un Mastodonte Arbat]],
    weapons = {"tfa_metro_exo_revolver","tfa_metro_minigun"},
    command = "mastoarbat",
    max = 2,
    salary = 40,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "L'Arbat",
    candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 600 ) end,
    PlayerSpawn = function(ply)
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75 , GAMEMODE.Config.runspeed * 0.5)
    ply:SetHealth(400)
    end,
    bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_OFFARBAT = DarkRP.createJob("Officier - Arbat", {
    color = Color(0, 0, 255, 255),
    model = {
        "models/metroll/neutral/stalker2_neutral.mdl",
	
    },
    description = [[Vous êtes un Officier Arbat]],
    weapons = {"tfa_metro_exo_revolver","tfa_metro_exo_rpk"},
    command = "offarbat",
    max = 5,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "L'Arbat",
    candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 40 ) end,
    PlayerSpawn = function(ply)
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
    end,
    bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_SECONDARBAT = DarkRP.createJob("Second de Station - Arbat", {
    color = Color(0, 0, 255, 255),
    model = {
        "models/stalkertnb/bandit_hour.mdl",
	
    },
    description = [[Vous êtes le Second de la station de l'Arbat]],
    weapons = {"tfa_metro_exo_revolver","tfa_metro_exo_rpk"},
    command = "secondarbat",
    max = 1,
    salary = 75,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "L'Arbat",
    candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 40 ) end,
    PlayerSpawn = function(ply)
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
    end,
    bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_CHEFARBAT = DarkRP.createJob("Chef de Station - Arbat", {
    color = Color(0, 0, 255, 255),
    model = {
        "models/metroll/neutral/stalker_hazmat_balaclava.mdL",
	
    },
    description = [[Vous êtes le Chef de la station de l'Arbat]],
    weapons = {"tfa_metro_exo_revolver","tfa_metro_exo_rpk"},
    command = "chefarbat",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "L'Arbat",
    candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 40 ) end,
    PlayerSpawn = function(ply)
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
    end,
    bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_CHEFBANDITS = DarkRP.createJob("Roi - Bandits", {
    color = Color(191, 8, 96, 255),
    model = {
        "models/metroll/bandit/burbon.mdl",
	
    },
    description = [[Vous êtes le Roi des Bandits]],
    weapons = {"tfa_metro_exo_cumshot","tfa_metro_lowlife"},
    command = "chefbandits",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Bandits",
    candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 40 ) end,
    PlayerSpawn = function(ply)
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
    end,
    bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_DAMEVALET = DarkRP.createJob("Dame | Valet - Bandits", {
    color = Color(191, 8, 96, 255),
    model = {
        "models/metroll/bandit/bandit2.mdl",
		"models/metroll/bandit/bandit4.mdl",
		"models/metroll/bandit/balaclava_bandit.mdl",
		"models/metroll/bandit/bandit1.mdl",
	
    },
    description = [[Vous êtes des dirigeants Bandits]],
    weapons = {"tfa_metro_exo_cumshot","tfa_metro_lowlife"},
    command = "dirigeantsbandits",
    max = 2,
    salary = 75,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Bandits",
    candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 40 ) end,
    PlayerSpawn = function(ply)
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
    end,
    bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_BANDITS = DarkRP.createJob("Bandits", {
    color = Color(191, 8, 96, 255),
    model = {
        "models/metroll/bandit/bandit3_tshirt.mdl",     
		"models/metroll/bandit/bandit3_tshirt2.mdl",    
		"models/metroll/bandit/bandit2_tshirt.mdl",   
		"models/metroll/bandit/bandit2_tshirt2.mdl",
	
    },
    description = [[Vous êtes un Bandits du groupe du Roi de Pic]],
    weapons = {"tfa_metro_lowlife"},
    command = "bandits",
    max = 0,
    salary = 25,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Bandits",
    candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 20 ) end,
    PlayerSpawn = function(ply)
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
    end,
    bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_BLINDEBANDITS = DarkRP.createJob("Blindé [VIP] - Bandits", {
    color = Color(191, 8, 96, 255),
    model = {
        "models/metroll/bandit/elite_bandit.mdl",
	
    },
    description = [[Vous êtes un Bandits Blindé du groupe du Roi de Pic]],
    weapons = {"tfa_metro_lowlife","tfa_metro_abzatz"},
    command = "blindébandits",
    max = 1,
    salary = 40,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Bandits",
    candemote = false,
    PlayerLoadout = function(ply)  ply:SetArmor( 600 ) end,
    PlayerSpawn = function(ply)
    GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75 , GAMEMODE.Config.runspeed * 0.5)
    ply:SetHealth(400)
    end,
    bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_STALKER = DarkRP.createJob("Stalker", {
	color = Color(255, 89, 0, 255),
	model = {
		"models/metroll/neutral/stalker_vatnik_balaclava.mdl",    
		"models/metroll/neutral/stalker_spez_balaclava.mdl",
		
	},
	description = [[ ]],
	weapons = {},
	command = "stalker",
	max = 8,
	salary = 10,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Autres",
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerSpawn = function(ply)
	GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
	end,
	bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_STALKERVIP = DarkRP.createJob("Stalker [VIP]", {
	color = Color(255, 89, 0, 255),
	model = {
		"models/metroll/neutral/stalker_vatnik_balaclava.mdl",    
		"models/metroll/neutral/stalker_spez_balaclava.mdl",
		"models/arx/stalker_green.mdl",
		"models/arx/stalker_new_grey.mdl",
		"models/arx/stalker_red.mdl",
		
	},
	description = [[ ]],
	weapons = {},
	command = "stalkervip",
	max = 3,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Autres",
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 0 ) end,
	PlayerSpawn = function(ply)
	GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
	end,
	bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_SATANISTESVIP = DarkRP.createJob("Sataniste [VIP]", {
	color = Color(7, 179, 99, 255),
	model = {
		"models/metroll/polis/chemsuit.mdl",    
		
	},
	description = [[ ]],
	weapons = {
		"weapon_machete_hub",
		"weapon_cleaver_hub",
		"weapon_combatknife_hub",
		"weapon_leadpipe_hub",
	},
	command = "satanistesvip",
	max = 2,
	salary = 10,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Autres",
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 10 ) end,
	PlayerSpawn = function(ply)
	GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(125)
	end,
	bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"user","VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_SDTREICH = DarkRP.createJob("Soldat - IV Reich", {
	color = Color(86, 86, 86, 255),
	model = {
		"models/arx/reichobves13.mdl",
		"models/arx/reichobves9.mdl",
		"models/arx/reichobves10.mdl",        

	},
	description = [[Vous êtes un soldat au service du IV Reich !]],
	weapons = {"tfa_metro_padnok"},
	command = "sdtreich",
	max = 0,
	salary = 25,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Le IV Reich",
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 20 ) end,
	PlayerSpawn = function(ply)
	GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
	end,
	bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_OFFREICH = DarkRP.createJob("Officier - IV Reich", {
	color = Color(86, 86, 86, 255),
	model = {
		"models/arx/reichobves11.mdl",
		"models/arx/reichobves12.mdl",
		
	},
	description = [[Vous êtes un officier au service du IV Reich !]],
	weapons = {"tfa_metro_padnok","tfa_metro_exo_vsv"},
	command = "offreich",
	max = 5,
	salary = 50,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Le IV Reich",
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 40 ) end,
	PlayerSpawn = function(ply)
	GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
	end,
	bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_CHEFREICH = DarkRP.createJob("Chef de Station - IV Reich", {
	color = Color(86, 86, 86, 255),
	model = {
		"models/arx/nazi_snipergearforever.mdl",
		
	},
	description = [[Vous êtes le chef de la station du IV Reich !]],
	weapons = {"tfa_metro_padnok","tfa_metro_exo_vsv"},
	command = "chefreich",
	max = 1,
	salary = 100,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Le IV Reich",
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 40 ) end,
	PlayerSpawn = function(ply)
	GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
	end,
	bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_SECONDREICH = DarkRP.createJob("Second de Station - IV Reich", {
	color = Color(86, 86, 86, 255),
	model = {
		"models/arx/recihobves15.mdl",
		"models/arx/heavyreichsoldat.mdl",
		
	},
	description = [[Vous êtes le second de la station du IV Reich !]],
	weapons = {"tfa_metro_padnok","tfa_metro_exo_vsv"},
	command = "secondreich",
	max = 1,
	salary = 75,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Le IV Reich",
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 40 ) end,
	PlayerSpawn = function(ply)
	GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 1.0 , GAMEMODE.Config.runspeed * 1.0)
    ply:SetHealth(100)
	end,
	bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

TEAM_MASTOREICH = DarkRP.createJob("Mastodonte [VIP] - IV Reich", {
	color = Color(86, 86, 86, 255),
	model = {
		"models/arx/reichobves14.mdl",
		"models/arx/heavyreichnew.mdl",
		
	},
	description = [[Vous êtes le second de la station du IV Reich !]],
	weapons = {"tfa_metro_padnok","tfa_metro_minigun"},
	command = "mastoreich",
	max = 2,
	salary = 40,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = "Le IV Reich",
	candemote = false,
	PlayerLoadout = function(ply)  ply:SetArmor( 600 ) end,
	PlayerSpawn = function(ply)
	GAMEMODE:SetPlayerSpeed(ply, GAMEMODE.Config.walkspeed * 0.75 , GAMEMODE.Config.runspeed * 0.5)
    ply:SetHealth(400)
	end,
	bWhitelist_customCheck = function(ply) return CLIENT or
    table.HasValue({"VIP","admin","superadmin"}, ply:GetNWString("usergroup"))
    end,
})

--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CIVIL

--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
	[TEAM_POLICE] = false,
	[TEAM_CHIEF] = false,
	[TEAM_MAYOR] = false,
}

--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
