local ALName, ALPrivate = ...

local AtlasLoot = _G.AtlasLoot
local ContentPhase = {}
AtlasLoot.Data.ContentPhase = ContentPhase
local AL = AtlasLoot.Locales
local IMAGE_PATH = ALPrivate.IMAGE_PATH
local ACTIVE_PHASE_LIST = {
    [0] = 99, -- dummy
    [AtlasLoot.CLASSIC_VERSION_NUM] = 6, -- classic
    [AtlasLoot.BC_VERSION_NUM]      = 5, -- bc
    [AtlasLoot.WRATH_VERSION_NUM]   = 5, -- wrath
    [AtlasLoot.CATA_VERSION_NUM]    = 2.5, -- cata
}
local ACTIVE_PHASE = ACTIVE_PHASE_LIST[AtlasLoot:GetGameVersion()] or ACTIVE_PHASE_LIST[1]

--##START-DATA##
local PHASE_ITEMS = {}
-- TODO: cata phase items

if AtlasLoot:GameVersion_EQ(AtlasLoot.CATA_VERSION_NUM) then
    PHASE_ITEMS = {
        [71084] = 3,
        [71085] = 3,
        [71086] = 3,
        [71041] = 3,
        [71040] = 3,
        [71044] = 3,
        [71031] = 3,
        [71030] = 3,
        [71042] = 3,
        [71043] = 3,
        [70914] = 3,
        [71029] = 3,
        [71032] = 3,
        [68981] = 3,
        [70922] = 3,
        [70992] = 3,
        [71039] = 3,
        [71038] = 3,
        [71407] = 3,
        [71411] = 3,
        [71410] = 3,
        [71402] = 3,
        [71403] = 3,
        [71412] = 3,
        [71413] = 3,
        [71405] = 3,
        [71404] = 3,
        [71401] = 3,
        [69138] = 3,
        [71406] = 3,
        [71409] = 3,
        [71408] = 3,
        [71011] = 3,
        [71003] = 3,
        [71010] = 3,
        [71005] = 3,
        [71009] = 3,
        [71004] = 3,
        [70993] = 3,
        [71007] = 3,
        [70912] = 3,
        [71012] = 3,
        [71006] = 3,
        [70991] = 3,
        [71415] = 3,
        [71421] = 3,
        [71416] = 3,
        [71424] = 3,
        [71417] = 3,
        [71425] = 3,
        [71418] = 3,
        [71419] = 3,
        [71426] = 3,
        [71420] = 3,
        [71423] = 3,
        [71422] = 3,
        [71414] = 3,
        [70990] = 3,
        [70989] = 3,
        [70735] = 3,
        [70987] = 3,
        [70985] = 3,
        [70986] = 3,
        [70736] = 3,
        [70734] = 3,
        [70737] = 3,
        [70988] = 3,
        [70739] = 3,
        [70738] = 3,
        [68983] = 3,
        [70733] = 3,
        [71434] = 3,
        [71435] = 3,
        [71428] = 3,
        [71436] = 3,
        [71438] = 3,
        [71437] = 3,
        [71429] = 3,
        [71430] = 3,
        [71432] = 3,
        [71439] = 3,
        [71431] = 3,
        [71433] = 3,
        [69149] = 3,
        [71427] = 3,
        [71679] = 3,
        [71686] = 3,
        [71672] = 3,
        [71665] = 3,
        [71023] = 3,
        [71025] = 3,
        [71020] = 3,
        [71018] = 3,
        [71027] = 3,
        [71026] = 3,
        [71021] = 3,
        [71028] = 3,
        [70913] = 3,
        [71019] = 3,
        [71024] = 3,
        [71022] = 3,
        [71014] = 3,
        [71013] = 3,
        [71447] = 3,
        [71450] = 3,
        [71440] = 3,
        [71442] = 3,
        [71451] = 3,
        [71452] = 3,
        [71443] = 3,
        [71453] = 3,
        [71444] = 3,
        [71446] = 3,
        [71449] = 3,
        [71448] = 3,
        [71445] = 3,
        [71441] = 3,
        [71678] = 3,
        [71685] = 3,
        [71671] = 3,
        [71343] = 3,
        [71345] = 3,
        [71314] = 3,
        [71341] = 3,
        [71340] = 3,
        [71315] = 3,
        [71342] = 3,
        [70916] = 3,
        [70917] = 3,
        [68982] = 3,
        [71323] = 3,
        [71312] = 3,
        [70915] = 3,
        [71461] = 3,
        [71456] = 3,
        [71455] = 3,
        [71463] = 3,
        [71464] = 3,
        [71457] = 3,
        [71465] = 3,
        [71459] = 3,
        [71458] = 3,
        [69139] = 3,
        [71462] = 3,
        [71454] = 3,
        [71460] = 3,
        [71676] = 3,
        [71683] = 3,
        [71669] = 3,
        [71350] = 3,
        [71349] = 3,
        [71313] = 3,
        [71346] = 3,
        [71344] = 3,
        [70920] = 3,
        [71351] = 3,
        [71348] = 3,
        [68927] = 3,
        [68926] = 3,
        [69897] = 3,
        [71347] = 3,
        [71681] = 3,
        [71688] = 3,
        [71674] = 3,
        [71471] = 3,
        [71474] = 3,
        [71467] = 3,
        [71468] = 3,
        [71469] = 3,
        [71470] = 3,
        [71475] = 3,
        [71472] = 3,
        [69112] = 3,
        [69111] = 3,
        [71466] = 3,
        [71473] = 3,
        [71680] = 3,
        [71687] = 3,
        [71673] = 3,
        [71358] = 3,
        [71357] = 3,
        [71356] = 3,
        [70921] = 3,
        [71354] = 3,
        [68994] = 3,
        [68925] = 3,
        [68995] = 3,
        [71355] = 3,
        [71352] = 3,
        [71798] = 3,
        [71353] = 3,
        [71675] = 3,
        [71682] = 3,
        [71668] = 3,
        [69224] = 3,
        [69848] = 3,
        [71614] = 3,
        [71613] = 3,
        [71616] = 3,
        [71612] = 3,
        [71610] = 3,
        [69150] = 3,
        [69110] = 3,
        [69167] = 3,
        [71615] = 3,
        [70723] = 3,
        [71797] = 3,
        [71611] = 3,
        [71677] = 3,
        [71684] = 3,
        [71670] = 3,
        [71779] = 3,
        [71787] = 3,
        [71785] = 3,
        [71780] = 3,
        [71776] = 3,
        [71782] = 3,
        [71775] = 3,
        [71778] = 3,
        [71786] = 3,
        [71784] = 3,
        [71781] = 3,
        [71777] = 3,
        [71783] = 3,
        [71774] = 3,
        [71640] = 3,
        [71365] = 3,
        [70929] = 3,
        [71367] = 3,
        [68972] = 3,
        [68915] = 3,
        [71359] = 3,
        [71362] = 3,
        [71361] = 3,
        [71360] = 3,
        [71366] = 3,
        [71641] = 3,
        [71561] = 3,
        [71563] = 3,
        [71564] = 3,
        [69113] = 3,
        [69109] = 3,
        [71560] = 3,
        [71562] = 3,
        [71557] = 3,
        [71559] = 3,
        [71558] = 3,
        [71579] = 3,
        [71575] = 3,
        [71590] = 3,
        [71587] = 3,
        [71577] = 3,
        [71567] = 3,
        [71580] = 3,
        [71568] = 3,
        [71593] = 3,
        [71592] = 3,
        [71617] = 3,
        [69976] = 3,
        [69966] = 3,
        [69975] = 3,
        [69965] = 3,
        [69962] = 3,
        [69960] = 3,
        [69971] = 3,
        [69974] = 3,
        [69972] = 3,
        [69961] = 3,
        [69963] = 3,
        [69973] = 3,
        [69970] = 3,
        [69969] = 3,
        [69968] = 3,
        [69958] = 3,
        [69957] = 3,
        [69959] = 3,
        [71141] = 3,
        [69815] = 3,
        [69237] = 3,
        -- TODO: Add firelands tier peices
        -- TODO: Add P4 stuff and anything else missing
    }
end

--##END-DATA##
PHASE_ITEMS[0] = 0

local PHASE_TEXTURE_PATH = {
    [2] = IMAGE_PATH.."P2",
    [2.5] = IMAGE_PATH.."P2-5",
    [3] = IMAGE_PATH.."P3",
    [4] = IMAGE_PATH.."P4",
    [5] = IMAGE_PATH.."P5",
    [6] = IMAGE_PATH.."P6",
}

function ContentPhase:GetForItemID(itemID)
    return PHASE_ITEMS[itemID or 0], self:IsActive(PHASE_ITEMS[itemID or 0])
end

function ContentPhase:GetPhaseTexture(phase)
    return PHASE_TEXTURE_PATH[phase], self:IsActive(phase)
end

function ContentPhase:GetPhaseTextureForItemID(itemID)
    return PHASE_TEXTURE_PATH[PHASE_ITEMS[itemID or 0] or 0], self:IsActive(PHASE_ITEMS[itemID or 0])
end

function ContentPhase:GetActivePhase(gameVersion)
    return gameVersion and ACTIVE_PHASE_LIST[gameVersion] or ACTIVE_PHASE
end

function ContentPhase:IsActive(phase, gameVersion)
    return (phase or 0) <= (gameVersion and ACTIVE_PHASE_LIST[gameVersion] or ACTIVE_PHASE)
end

function ContentPhase:GetActivePhaseTexture()
    if ACTIVE_PHASE == 1 then
        return PHASE_TEXTURE_PATH[2]
    elseif PHASE_TEXTURE_PATH[ACTIVE_PHASE] then
        return PHASE_TEXTURE_PATH[ACTIVE_PHASE]
    else
        return PHASE_TEXTURE_PATH[6]
    end
end
