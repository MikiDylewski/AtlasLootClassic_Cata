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
        [71060] = 3,[71062] = 3,[71058] = 3,[71059] = 3,[71061] = 3,
        [71478] = 3,[71480] = 3,[71476] = 3,[71477] = 3,[71479] = 3,
        [70954] = 3,[70951] = 3,[70955] = 3,[70953] = 3,[70952] = 3,
        [71483] = 3,[71485] = 3,[71481] = 3,[71482] = 3,[71484] = 3,
        [71098] = 3,[71101] = 3,[71100] = 3,[71097] = 3,[71099] = 3,
        [71488] = 3,[71490] = 3,[71486] = 3,[71487] = 3,[71489] = 3,
        [71103] = 3,[71106] = 3,[71105] = 3,[71102] = 3,[71104] = 3,
        [71492] = 3,[71495] = 3,[71494] = 3,[71491] = 3,[71493] = 3,
        [71108] = 3,[71111] = 3,[71110] = 3,[71107] = 3,[71109] = 3,
        [71497] = 3,[71500] = 3,[71499] = 3,[71496] = 3,[71498] = 3,
        [71051] = 3,[71053] = 3,[71054] = 3,[71050] = 3,[71052] = 3,
        [71503] = 3,[71505] = 3,[71501] = 3,[71502] = 3,[71504] = 3,
        [71287] = 3,[71290] = 3,[71289] = 3,[71286] = 3,[71288] = 3,
        [71508] = 3,[71511] = 3,[71510] = 3,[71507] = 3,[71509] = 3,
        [71065] = 3,[71067] = 3,[71063] = 3,[71064] = 3,[71066] = 3,
        [71514] = 3,[71516] = 3,[71512] = 3,[71513] = 3,[71515] = 3,
        [71093] = 3,[71095] = 3,[71091] = 3,[71092] = 3,[71094] = 3,
        [71519] = 3,[71521] = 3,[71517] = 3,[71518] = 3,[71520] = 3,
        [70948] = 3,[70946] = 3,[70950] = 3,[70949] = 3,[70947] = 3,
        [71524] = 3,[71526] = 3,[71522] = 3,[71523] = 3,[71525] = 3,
        [71272] = 3,[71275] = 3,[71274] = 3,[71271] = 3,[71273] = 3,
        [71528] = 3,[71531] = 3,[71530] = 3,[71527] = 3,[71529] = 3,
        [71277] = 3,[71280] = 3,[71279] = 3,[71276] = 3,[71278] = 3,
        [71533] = 3,[71536] = 3,[71535] = 3,[71532] = 3,[71534] = 3,
        [71047] = 3,[71049] = 3,[71045] = 3,[71046] = 3,[71048] = 3,
        [71539] = 3,[71541] = 3,[71537] = 3,[71538] = 3,[71540] = 3,
        [71298] = 3,[71300] = 3,[71296] = 3,[71297] = 3,[71299] = 3,
        [71544] = 3,[71543] = 3,[71546] = 3,[71542] = 3,[71545] = 3,
        [71303] = 3,[71305] = 3,[71301] = 3,[71302] = 3,[71304] = 3,
        [71549] = 3,[71551] = 3,[71547] = 3,[71548] = 3,[71550] = 3,
        [71293] = 3,[71295] = 3,[71294] = 3,[71292] = 3,[71291] = 3,
        [71554] = 3,[71556] = 3,[71552] = 3,[71553] = 3,[71555] = 3,
        [71282] = 3,[71285] = 3,[71284] = 3,[71281] = 3,[71283] = 3,
        [71595] = 3,[71598] = 3,[71597] = 3,[71594] = 3,[71596] = 3,
        [71070] = 3,[71072] = 3,[71068] = 3,[71069] = 3,[71071] = 3,
        [71599] = 3,[71603] = 3,[71600] = 3,[71601] = 3,[71602] = 3,
        [70944] = 3,[70941] = 3,[70945] = 3,[70943] = 3,[70942] = 3,
        [71606] = 3,[71608] = 3,[71604] = 3,[71605] = 3,[71607] = 3,
        [78782] = 4,[78831] = 4,[78754] = 4,[78765] = 4,[78802] = 4,
        [76976] = 4,[76978] = 4,[76974] = 4,[76975] = 4,[76977] = 4,
        [78687] = 4,[78736] = 4,[78659] = 4,[78670] = 4,[78707] = 4,
        [78792] = 4,[78846] = 4,[78758] = 4,[78773] = 4,[78811] = 4,
        [77010] = 4,[77012] = 4,[77008] = 4,[77009] = 4,[77011] = 4,
        [78697] = 4,[78751] = 4,[78663] = 4,[78678] = 4,[78716] = 4,
        [78789] = 4,[78838] = 4,[78760] = 4,[78779] = 4,[78808] = 4,
        [77015] = 4,[77017] = 4,[77013] = 4,[77014] = 4,[77016] = 4,
        [78694] = 4,[78743] = 4,[78665] = 4,[78684] = 4,[78713] = 4,
        [78785] = 4,[78835] = 4,[78755] = 4,[78775] = 4,[78805] = 4,
        [76750] = 4,[76753] = 4,[76752] = 4,[76749] = 4,[76751] = 4,
        [78690] = 4,[78740] = 4,[78660] = 4,[78680] = 4,[78710] = 4,
        [78791] = 4,[78839] = 4,[78757] = 4,[78771] = 4,[78809] = 4,
        [77019] = 4,[77022] = 4,[77021] = 4,[77018] = 4,[77020] = 4,
        [78696] = 4,[78744] = 4,[78662] = 4,[78676] = 4,[78714] = 4,
        [78793] = 4,[78832] = 4,[78756] = 4,[78769] = 4,[78804] = 4,
        [77030] = 4,[77032] = 4,[77028] = 4,[77029] = 4,[77031] = 4,
        [78698] = 4,[78737] = 4,[78661] = 4,[78674] = 4,[78709] = 4,
        [78796] = 4,[78843] = 4,[78824] = 4,[78766] = 4,[78815] = 4,
        [76213] = 4,[76216] = 4,[76215] = 4,[76212] = 4,[76214] = 4,
        [78701] = 4,[78748] = 4,[78729] = 4,[78671] = 4,[78720] = 4,
        [78788] = 4,[78837] = 4,[78822] = 4,[78770] = 4,[78807] = 4,
        [76876] = 4,[76878] = 4,[76874] = 4,[76875] = 4,[76877] = 4,
        [78693] = 4,[78742] = 4,[78727] = 4,[78675] = 4,[78712] = 4,
        [78787] = 4,[78841] = 4,[78821] = 4,[78768] = 4,[78812] = 4,
        [76767] = 4,[76769] = 4,[76765] = 4,[76766] = 4,[76768] = 4,
        [78692] = 4,[78746] = 4,[78726] = 4,[78673] = 4,[78717] = 4,
        [78790] = 4,[78840] = 4,[78827] = 4,[78772] = 4,[78810] = 4,
        [77005] = 4,[77007] = 4,[77003] = 4,[77004] = 4,[77006] = 4,
        [78695] = 4,[78745] = 4,[78732] = 4,[78677] = 4,[78715] = 4,
        [78795] = 4,[78842] = 4,[78823] = 4,[78778] = 4,[78814] = 4,
        [76358] = 4,[76361] = 4,[76360] = 4,[76357] = 4,[76359] = 4,
        [78700] = 4,[78747] = 4,[78728] = 4,[78683] = 4,[78719] = 4,
        [78798] = 4,[78845] = 4,[78826] = 4,[78777] = 4,[78817] = 4,
        [76347] = 4,[76344] = 4,[76345] = 4,[76348] = 4,[76346] = 4,
        [78703] = 4,[78750] = 4,[78731] = 4,[78682] = 4,[78722] = 4,
        [78794] = 4,[78833] = 4,[78759] = 4,[78774] = 4,[78803] = 4,
        [77025] = 4,[77027] = 4,[77023] = 4,[77024] = 4,[77026] = 4,
        [78699] = 4,[78738] = 4,[78664] = 4,[78679] = 4,[78708] = 4,
        [78786] = 4,[78834] = 4,[78820] = 4,[78767] = 4,[78813] = 4,
        [76758] = 4,[76760] = 4,[76756] = 4,[76757] = 4,[76759] = 4,
        [78691] = 4,[78739] = 4,[78725] = 4,[78672] = 4,[78718] = 4,
        [78781] = 4,[78828] = 4,[78819] = 4,[78762] = 4,[78799] = 4,
        [77042] = 4,[77044] = 4,[77040] = 4,[77041] = 4,[77043] = 4,
        [78686] = 4,[78733] = 4,[78724] = 4,[78667] = 4,[78704] = 4,
        [78780] = 4,[78836] = 4,[78818] = 4,[78761] = 4,[78806] = 4,
        [77037] = 4,[77035] = 4,[77039] = 4,[77038] = 4,[77036] = 4,
        [78685] = 4,[78741] = 4,[78723] = 4,[78666] = 4,[78711] = 4,
        [78797] = 4,[78844] = 4,[78825] = 4,[78776] = 4,[78816] = 4,
        [76342] = 4,[76339] = 4,[76340] = 4,[76343] = 4,[76341] = 4,
        [78702] = 4,[78749] = 4,[78730] = 4,[78681] = 4,[78721] = 4,
        [78783] = 4,[78830] = 4,[78752] = 4,[78763] = 4,[78801] = 4,
        [76983] = 4,[76987] = 4,[76984] = 4,[76985] = 4,[76986] = 4,
        [78688] = 4,[78735] = 4,[78657] = 4,[78668] = 4,[78706] = 4,
        [78784] = 4,[78829] = 4,[78753] = 4,[78764] = 4,[78800] = 4,
        [76990] = 4,[76992] = 4,[76988] = 4,[76989] = 4,[76991] = 4,
        [78689] = 4,[78734] = 4,[78658] = 4,[78669] = 4,[78705] = 4,
        [77949] = 4,[77950] = 4,
        [77947] = 4,[77948] = 4,
        [77945] = 4,[77946] = 4,
        [72815] = 4,
        [72814] = 4,
        [72808] = 4,
        [72809] = 4,
        [72811] = 4,
        [72810] = 4,
        [72813] = 4,
        [72812] = 4,
        [72802] = 4,
        [72805] = 4,
        [72798] = 4,
        [72806] = 4,
        [72799] = 4,
        [72801] = 4,
        [72800] = 4,
        [72803] = 4,
        [72807] = 4,
        [72804] = 4,
        [72825] = 4,
        [72826] = 4,
        [72823] = 4,
        [72824] = 4,
        [72816] = 4,
        [72820] = 4,
        [72821] = 4,
        [72818] = 4,
        [72817] = 4,
        [72819] = 4,
        [72897] = 4,
        [72822] = 4,
        [76154] = 4,
        [76156] = 4,
        [72830] = 4,
        [72832] = 4,
        [72831] = 4,
        [72829] = 4,
        [72828] = 4,
        [72827] = 4,
        [72838] = 4,
        [72836] = 4,
        [72835] = 4,
        [72834] = 4,
        [72837] = 4,
        [72833] = 4,
        [72839] = 4,
        [72847] = 4,
        [72840] = 4,
        [72841] = 4,
        [72848] = 4,
        [72842] = 4,
        [72843] = 4,
        [72845] = 4,
        [72899] = 4,
        [72898] = 4,
        [72844] = 4,
        [72846] = 4,
        [76158] = 4,
        [76157] = 4,
        [76159] = 4,
        [72854] = 4,
        [72851] = 4,
        [76150] = 4,
        [72849] = 4,
        [72850] = 4,
        [72853] = 4,
        [77957] = 4,
        [76151] = 4,
        [72857] = 4,
        [72859] = 4,
        [72856] = 4,
        [72855] = 4,
        [72860] = 4,
        [72865] = 4,
        [72868] = 4,
        [72870] = 4,
        [72864] = 4,
        [72861] = 4,
        [72901] = 4,
        [72900] = 4,
        [72867] = 4,
        [72862] = 4,
        [72866] = 4,
        [72863] = 4,
        [72869] = 4,
        [76160] = 4,
        [76161] = 4,
        [76162] = 4,
        [78381] = 4,
        [78380] = 4,
        [78375] = 4,
        [78384] = 4,
        [78376] = 4,
        [78385] = 4,
        [78378] = 4,
        [78377] = 4,
        [78386] = 4,
        [78382] = 4,
        [77267] = 4,
        [77263] = 4,
        [77271] = 4,
        [77261] = 4,
        [77269] = 4,
        [77266] = 4,
        [77268] = 4,
        [77270] = 4,
        [77265] = 4,
        [77262] = 4,
        [77214] = 4,
        [77212] = 4,
        [77213] = 4,
        [78366] = 4,
        [78365] = 4,
        [78368] = 4,
        [78372] = 4,
        [78362] = 4,
        [78370] = 4,
        [78367] = 4,
        [78373] = 4,
        [78361] = 4,
        [78364] = 4,
        [78363] = 4,
        [78371] = 4,
        [78369] = 4,
        [78398] = 4,
        [78395] = 4,
        [78400] = 4,
        [78397] = 4,
        [78396] = 4,
        [77969] = 4,
        [78866] = 4,
        [78867] = 4,
        [78865] = 4,
        [78399] = 4,
        [77255] = 4,
        [77260] = 4,
        [77257] = 4,
        [77258] = 4,
        [77259] = 4,
        [77204] = 4,
        [78183] = 4,
        [78178] = 4,
        [78173] = 4,
        [77215] = 4,
        [77216] = 4,
        [78391] = 4,
        [78388] = 4,
        [78393] = 4,
        [78390] = 4,
        [78389] = 4,
        [77989] = 4,
        [78853] = 4,
        [78854] = 4,
        [78855] = 4,
        [78387] = 4,
        [78392] = 4,
        [78408] = 4,
        [78411] = 4,
        [78412] = 4,
        [77971] = 4,
        [77970] = 4,
        [78872] = 4,
        [78873] = 4,
        [78871] = 4,
        [77254] = 4,
        [77252] = 4,
        [77253] = 4,
        [77217] = 4,
        [77218] = 4,
        [77219] = 4,
        [78181] = 4,
        [78176] = 4,
        [78171] = 4,
        [77203] = 4,
        [77206] = 4,
        [78402] = 4,
        [78405] = 4,
        [78406] = 4,
        [78403] = 4,
        [78401] = 4,
        [78404] = 4,
        [78856] = 4,
        [78857] = 4,
        [78858] = 4,
        [77991] = 4,
        [77990] = 4,
        [78425] = 4,
        [78428] = 4,
        [78423] = 4,
        [78424] = 4,
        [78427] = 4,
        [78421] = 4,
        [78875] = 4,
        [78876] = 4,
        [78874] = 4,
        [78422] = 4,
        [77249] = 4,
        [77248] = 4,
        [77251] = 4,
        [77250] = 4,
        [78012] = 4,
        [78011] = 4,
        [78180] = 4,
        [78175] = 4,
        [78170] = 4,
        [77221] = 4,
        [77220] = 4,
        [78417] = 4,
        [78420] = 4,
        [78415] = 4,
        [78416] = 4,
        [78419] = 4,
        [78413] = 4,
        [78859] = 4,
        [78860] = 4,
        [78861] = 4,
        [78418] = 4,
        [78414] = 4,
        [78442] = 4,
        [78443] = 4,
        [78438] = 4,
        [78444] = 4,
        [78439] = 4,
        [78440] = 4,
        [77972] = 4,
        [78441] = 4,
        [78863] = 4,
        [78864] = 4,
        [78862] = 4,
        [77243] = 4,
        [77242] = 4,
        [77247] = 4,
        [77244] = 4,
        [77246] = 4,
        [78013] = 4,
        [77205] = 4,
        [77245] = 4,
        [78184] = 4,
        [78179] = 4,
        [78174] = 4,
        [77223] = 4,
        [78919] = 4,
        [78434] = 4,
        [78435] = 4,
        [78430] = 4,
        [78436] = 4,
        [78431] = 4,
        [78432] = 4,
        [77992] = 4,
        [78433] = 4,
        [78847] = 4,
        [78848] = 4,
        [78849] = 4,
        [78429] = 4,
        [78457] = 4,
        [78454] = 4,
        [78455] = 4,
        [78460] = 4,
        [77973] = 4,
        [78869] = 4,
        [78870] = 4,
        [78868] = 4,
        [78456] = 4,
        [78458] = 4,
        [77234] = 4,
        [77240] = 4,
        [77241] = 4,
        [77239] = 4,
        [77224] = 4,
        [77225] = 4,
        [77226] = 4,
        [77227] = 4,
        [78182] = 4,
        [78177] = 4,
        [78172] = 4,
        [77202] = 4,
        [78449] = 4,
        [78446] = 4,
        [78447] = 4,
        [78452] = 4,
        [78445] = 4,
        [78451] = 4,
        [78448] = 4,
        [78450] = 4,
        [78850] = 4,
        [78851] = 4,
        [78852] = 4,
        [77993] = 4,
        [78466] = 4,
        [78467] = 4,
        [78468] = 4,
        [78470] = 4,
        [78469] = 4,
        [77977] = 4,
        [77976] = 4,
        [77975] = 4,
        [77974] = 4,
        [77978] = 4,
        [78357] = 4,
        [77238] = 4,
        [77237] = 4,
        [77236] = 4,
        [77235] = 4,
        [77200] = 4,
        [77199] = 4,
        [77198] = 4,
        [77197] = 4,
        [77201] = 4,
        [78461] = 4,
        [78462] = 4,
        [78463] = 4,
        [78465] = 4,
        [78464] = 4,
        [77997] = 4,
        [77996] = 4,
        [77995] = 4,
        [77994] = 4,
        [77998] = 4,
        [78484] = 4,
        [78483] = 4,
        [78488] = 4,
        [78487] = 4,
        [78481] = 4,
        [78485] = 4,
        [78482] = 4,
        [78486] = 4,
        [78480] = 4,
        [77195] = 4,
        [77189] = 4,
        [77193] = 4,
        [77191] = 4,
        [77188] = 4,
        [77196] = 4,
        [77194] = 4,
        [77190] = 4,
        [78359] = 4,
        [77067] = 4,
        [78475] = 4,
        [78474] = 4,
        [78479] = 4,
        [78478] = 4,
        [78472] = 4,
        [78476] = 4,
        [78473] = 4,
        [78477] = 4,
        [78471] = 4,
        [77069] = 4,
        [78497] = 4,
        [78498] = 4,
        [78495] = 4,
        [78494] = 4,
        [78496] = 4,
        [77982] = 4,
        [77980] = 4,
        [77983] = 4,
        [77979] = 4,
        [77981] = 4,
        [77230] = 4,
        [77232] = 4,
        [77228] = 4,
        [77231] = 4,
        [77229] = 4,
        [77210] = 4,
        [77208] = 4,
        [77211] = 4,
        [77207] = 4,
        [77209] = 4,
        [78492] = 4,
        [78493] = 4,
        [78490] = 4,
        [78489] = 4,
        [78491] = 4,
        [71998] = 4,
        [77952] = 4,
        [78002] = 4,
        [78000] = 4,
        [78003] = 4,
        [77999] = 4,
        [78001] = 4,
        [78879] = 4,
        [78884] = 4,
        [78882] = 4,
        [78886] = 4,
        [78885] = 4,
        [78887] = 4,
        [78888] = 4,
        [78889] = 4,
        [78878] = 4,
        [77192] = 4,
        [77938] = 4,
        [72004] = 4,
        [72003] = 4,
        [72002] = 4,
        [72000] = 4,
        [72006] = 4,
        [72010] = 4,
        [72008] = 4,
        [72011] = 4,
        [72005] = 4,
        [71999] = 4,
        [72007] = 4,
        [72009] = 4,
        [72015] = 4,
        [72013] = 4,
        [72001] = 4,
        [72014] = 4,
        [72016] = 4,
        [72012] = 4,
        [71809] = 4,
        [71810] = 4,
        [71808] = 4,
        [71807] = 4,
        [71805] = 4,
        [71806] = 4,
        [71928] = 4,
        [71917] = 4,
        [71919] = 4,
        [71893] = 4,
        [71943] = 4,
        [71941] = 4,
        [71912] = 4,
        [71906] = 4,
        [71905] = 4,
        [71937] = 4,
        [71913] = 4,
        [71939] = 4,
        [71898] = 4,
        [71931] = 4,
        [71916] = 4,
        [71920] = 4,
        [71942] = 4,
        [71901] = 4,
        [71947] = 4,
        [71927] = 4,
        [71935] = 4,
        [71891] = 4,
        [71908] = 4,
        [71899] = 4,
        [71918] = 4,
        [71889] = 4,
        [71922] = 4,
        [71887] = 4,
        [71932] = 4,
        [71948] = 4,
        [71902] = 4,
        [71888] = 4,
        [71909] = 4,
        [71907] = 4,
        [71940] = 4,
        [71903] = 4,
        [71933] = 4,
        [71946] = 4,
        [71896] = 4,
        [71915] = 4,
        [71900] = 4,
        [71910] = 4,
        [71926] = 4,
        [71930] = 4,
        [71821] = 4,
        [71890] = 4,
        [71897] = 4,
        [71934] = 4,
        [71921] = 4,
        [71944] = 4,
        [71886] = 4,
        [71938] = 4,
        [71885] = 4,
        [71925] = 4,
        [71911] = 4,
        [71904] = 4,
        [71884] = 4,
        [71945] = 4,
        [71923] = 4,
        [71936] = 4,
        [71895] = 4,
        [71929] = 4,
        [71894] = 4,
        [71914] = 4,
        [71924] = 4,
        [71892] = 4,
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
