section "WRAM Bank0", wram0

wC000 equ $C000
  ds $100

wScrollXOffsetForSection:: ; C100
  ; Table of the scrollX offset to add for each screen section being drawn
  ds $5

wLCDSectionIndex:: ; C105
  ; Portion of the screen being drawn (0 -> 4)
  ds 1

wIntroBGYOffset:: ; C106
  ; Offset for compensating the sea movement when drawing bottom screen section on intro sea
  ds 1

; Unlabeled
wC108 equ $C108

  ds 7

wneedsUpdatingNPCTiles:: ; C10E
  ds 1

; Unlabeled
wC10F equ $C10F
  ds $12

wIsUsingSpinAttack:: ; C121
  ds 1

; Unlabeled
wC122 equ $C122
  ds 2

wMapSlideTransitionState:: ; C124
  ds 1

; Unlabeled
wC125 equ $C125
  ds $18

wRandomSeed:: ; C13D
  ; Seed for the Random Number Generator
  ds 1

; Unlabeled
wC140 equ $C13E
  ds $E

wIsShootingArrow:: ; C14C
  ds 1

wProjectileCount:: ; C14D
  ds 1

wHasPlacedBomb:: ; C14E
  ds 1

wInventoryAppearing:: ; C14F
  ds 1

; Unlabeled
wC150 equ $C150
  ds 5

wScreenShakeHorizontal:: ; C155
  ; background offset for shaking the screen vertically
  ds 1

wScreenShakeVertical:: ; C156
  ; background offset for shaking the screen vertically
  ds 1

; Unlabeled
wC157 equ $C157
  ds $2

wInventoryCursorFrameCounter:: ; C159
  ds 1

wHasMirrorShield:: ; C15A
  ds 1

wIsUsingShield:: ; C15B
  ds 1

; Unlabeled
wC15C equ $C15C
  ds $F

wTransitionSequenceCounter:: ; C16B
  ds 1

; Unlabeled
wC16C equ $C16C
  ds 6

wDialogScrollDelay:: ; C172
  ds 1

; Unlabeled
wC173 equ $C173
  ds 8

wFreeMovementMode:: ; C17B
  ; See https://tcrf.net/The_Legend_of_Zelda:_Link%27s_Awakening#Mono_Pausing_the_Engine_and_Mono.2FDX_Free-Movement_Mode
  ds 1

; Unlabeled
wC17C equ $C17C
  ds 3

wWarpTransition:: ; C17F
  ; See WARP_TRANSITION_* constants for possible values
  ds 1

; Unlabeled
wC180 equ $C180
  ds $1F

wDialogState:: ; C19F
  ; See DIALOG_* constants for possible values
  ds 1

wC1A4 equ $C1A0
  ds $60

wEntitiesPosXTable:: ; C200
  ; X position of visible entities

wEntity0PosX:: ; C200
  ds $1

wEntity1PosX:: ; C201
  ds $1

wEntity2PosX:: ; C202

wIntroShipPosX:: ; C202
  ; Position of the ship sprite during the intro sequence
  ds $1

wEntity3PosX:: ; C203
  ds $1

wEntity4PosX:: ; C204
  ds $1

wEntity5PosX:: ; C205
  ds $1

wEntity6PosX:: ; C206
  ds $1

wEntity7PosX:: ; C207
  ds $1

wEntity8PosX:: ; C208
  ds $1

wEntity9PosX:: ; C209
  ds $1

wEntity10PosX:: ; C20A
  ds $1

wEntity11PosX:: ; C20B
  ds $1

wEntity12PosX:: ; C20C
  ds $1

wEntity13PosX:: ; C20D
  ds $1

wEntity14PosX:: ; C20E
  ds $1

wEntity15PosX:: ; C20F
  ds $1

wEntitiesPosYTable:: ; C210
  ; Y position of visible entities
  ds $10

; Unlabeled
wC220 equ $C220
  ds $60

wEntitiesTypeTable:: ; C280
  ; type of visible entities
  ds 1

section "WRAM Bank1", wramx, bank[1]

; Unlabeled
wD000 equ $D000
  ds 1

wIntroTimer:: ; D001
  ds 1

wIntroSubTimer:: ; D002
  ds 1

; Unlabeled
wD003 equ $D003
  ds $365

wOverworldMusic:: ; D368
  ; Overworld Music Track
  ; 00: No music
  ; 01: Title music when zelda logo appears
  ; 02: Trendy game/Witch hut
  ; 03: Game Over screen
  ; 04: Mabe Village
  ; 05: Overworld music
  ; 06: Tal Tal Heights
  ; 07: Village Shop
  ; 08: Raft Ride Rapids
  ; 09: Mysterious Forest
  ; 0A: Home/trader house
  ; 0B: Animal Village
  ; 0C: Fairy House
  ; 0D: Title music
  ; 0E: BowWow kidnapped music
  ; 0F: Found level 2 sword
  ; 10: Found new weapon
  ; 11: 2D underground dungeon
  ; 12: Owl song
  ; 13: Final Knightmare in Egg song
  ; 14: Dream Shrine Entrance music
  ; 15: Found an instrument
  ; 16: Overworld cave
  ; 17: Piece of Power/Acorn
  ; 18: Received horn instrument
  ; 19: Received bell instrument
  ; 1A: Received harp instrument
  ; 1B: Received xylophone instrument
  ; 1C: Received ?? instrument
  ; 1D: Received ?? instrument
  ; 1E: Received thunder drum instrument
  ; 1F: Marin singing
  ; 20: Manbo's Mambo fish song
  ; 21: Received ?? instrument
  ; 22: Instruments song ??
  ; 23: Instruments song ??
  ; 24: Instruments song ??
  ; 25: Instruments song when opening Egg
  ; 26: Instruments song when opening Egg part 2
  ; 27: Instruments song ??
  ; 28: Lonely/ghost house
  ; 29: Piece of Power part 2
  ; 2A: Marin singing + Links ocarina
  ; 2B: Level 5
  ; 2C: Dungeon entrance Unlocking
  ; 2D: Dream sequence sound?
  ; 2E: At beach with Marin song
  ; 2F: Unknown
  ; 30: Dungeon sub-boss music
  ; 31: Received level 1 sword at beach
  ; 32: Mr Write's house
  ; 33: Ulrira's house
  ; 34: Tarin attacked by Bee's
  ; 35: Song of Soul by Mamu frogs
  ; 36: Monkey's building bridge
  ; 37: Mr Write's house version 2
  ; 38: Richard House Secret Song
  ; 39: Turtle Rock entrance boss
  ; 3A: Fishing/crane game
  ; 3B: Received item
  ; 3C: Hidden/Unused song!?
  ; 3D: Nothing
  ; 3E: BowWow stolen music
  ; 3F: Ending music
  ; 40: Richard's House
  ; 41: Glitched noise, possibly unfinished song or Sound effect
  ; 42: Glitched noise, possibly unfinished song or Sound effect
  ; 43: Glitched noise, possibly unfinished song or Sound effect
  ; 44: Glitchy music
  ; 45: Glitchy music
  ; 46: Glitchy music
  ; 47: Silence
  ; 48: Silence
  ; 49: Glitchy noise
  ; 4A: Silence
  ; 4B: Glitchy music
  ; 4C: Glitchy music
  ; 4D: - 4F Silence
  ; 50: - 57 Silence
  ; 58: Glitchy music
  ; 59: Silence
  ; 5A: Glitchy music
  ; 5B: Silence
  ; 5C: Silence
  ; 5D: Glitchy music
  ; 5E: Silence
  ; 5F: Silence
  ; 60: Silence
  ; 61: - 69 Color dungeon (DX only)
  ; 6A: - F9 Untested
  ; F0: Glitched music
  ; FF: Nothing
  ds 1

; Unlabeled
wD369 equ $D369
  ds $AC

wKillCount:: ; D415
  ds 1

; Unlabeled
wD416 equ $D416
  ds $68

wDidStealItem:: ; D47E
  ds 1

; Unlabeled
wD47F equ $D47F
  ds $27D

wEnginePaused:: ; D6FC
  ds 1

wLCDControl:: ; D6FD
  ds 1

; Unlabeled
wD6FE equ $D6FE
  ds $13

wTileMap:: ; D711
  ds 1

; Unlabeled
wD712 equ $D712
  ds $EE

; Minimap Tile
; Values:
;   0:     not discovered yet
;   non-0: various statuses
wMinimapTiles:: ; D800
  ds $ff

; Unlabeled
wD900 equ $D900
  ds $201

wAButtonSlot:: ; DB00
  ds 1

wBButtonSlot:: ; DB01
  ds 1

wInventoryItem1:: ; DB02
  ds 1

wInventoryItem2:: ; DB03
  ds 1

wInventoryItem3:: ; DB04
  ds 1

wInventoryItem4:: ; DB05
  ds 1

wInventoryItem5:: ; DB06
  ds 1

wInventoryItem6:: ; DB07
  ds 1

wInventoryItem7:: ; DB08
  ds 1

wInventoryItem8:: ; DB09
  ds 1

wInventoryItem9:: ; DB0A
  ds 1

wInventoryItem10:: ; DB0B
  ds 1

wHasFlippers:: ; DB0C
  ds 1

wHasMedicine:: ; DB0D
  ds 1

wTradeSequenceItem:: ; DB0E
  ; Trade Sequence items:
  ; $00 Nothing
  ; $01 Yoshi Doll
  ; $02 Ribbon
  ; $03 Dog Food
  ; $04 Bananas
  ; $05 Stick
  ; $06 Honeycomb
  ; $07 Pineapple
  ; $08 Hibiscus
  ; $09 Letter
  ; $0A Broom
  ; $0B Fishing Hook
  ; $0C Necklace
  ; $0D Scale
  ; $0E Magnifying glass
  ds 1

wSeashellsCount:: ; DB0F
  ds 1

; Unlabeled
wDB10 equ $DB10
  ds 1

wHasTailKey:: ; DB11
  ds 1

wHasAnglerKey:: ; DB12
  ds 1

wHasFaceKey:: ; DB13
  ds 1

wHasBirdKey:: ; DB14
  ds 1

; Golden Leaves count
; 0-5: number of Golden Leaves
; 6  : Slime Key
wGoldenLeavesCount:: ; DB15
  ds 1

; Unlabeled
wDB16 equ $DB16
  ds $2D

wPowerBraceletLevel:: ; DB43
  ds 1

wShieldLevel:: ; DB44
  ds 1

wArrowCount:: ; DB45
  ds 1

; Unlabeled
wDB46 equ $DB46
  ds 7

wBombCount:: ; DB4D
  ds 1

wMarinAndTarinAtHome:: ; DB4E
  ds 1

; Unlabeled
wDB4F equ $DB4F
  ds 7

wIsBowWowFollowingLink:: ; DB56
  ds 1

; Unlabeled
wDB57 equ $DB57
  ds $6

wRupeeCountHigh:: ; DB5D
  ds 1

wRupeeCountLow:: ; DB5E
  ds 1

; Unlabeled
wDB5F equ $DB5F
  ds $6

wHasInstrument1:: ; DB65
  ; 0: false, 2: true
  ds 1

wHasInstrument2:: ; DB66
  ; 0: false, 2: true
  ds 1

wHasInstrument3:: ; DB67
  ; 0: false, 2: true
  ds 1

wHasInstrument4:: ; DB68
  ; 0: false, 2: true
  ds 1

wHasInstrument5:: ; DB69
  ; 0: false, 2: true
  ds 1

wHasInstrument6:: ; DB6A
  ; 0: false, 2: true
  ds 1

wHasInstrument7:: ; DB6B
  ; 0: false, 2: true
  ds 1

wHasInstrument8:: ; DB6C
  ; 0: false, 2: true
  ds 1

; Unlabeled
wDB6E equ $DB6E
  ds 6

wIsMarinFollowingLink:: ; DB73
  ds 1

; Unlabeled
wDB74 equ $DB74
  ds 5

wIsGhostFollowingLink:: ; DB79
  ds 1

wDB7A:: ; DB7A
  ds 1

wIsRoosterFollowingLink:: ; DB7B
  ds 1

; Unlabeled
wDB7C equ $DB7C
  ds $14

; This appears to be the amount of rupees being added to your wallet
wAddRupeeBuffer:: ; DB90
  ds 1

; Unlabeled
wDB91 equ $DB91
  ds $4

wGameplayType:: ; DB95
  ; See GAMEPLAY_* constants for possible values
  ds 1

wGameplaySubtype:: ; DB96
  ; Value depens on GameplayType: this can be a sequence index, or a frame counter.
  ds 1

wBGPalette:: ; DB97
  ds 1

wOBJ0Palette:: ; DB98
  ds 1

wOBJ1Palette:: ; DB99
  ds 1

wWindowY:: ; DB9A
  ds 1

; Unlabeled
wDB9B equ $DB9B
  ds $A

wActiveRoom:: ; $DBA5
  ; Current room?
  ds 1

wSaveSlot:: ; DBA6
  ds 1

; Unlabeled
wDBA7 equ $DBA7
  ds 8

wCurrentBank:: ; DBAF
  ds 1

; Unlabeled
wDBB0 equ $DBB0
  ds $5

wKillCount2:: ; DBB5
  ds 1

; Unlabeled
wDBB6 equ $DBB6
  ds $16

wHasDungeonMap:: ; DBCC
  ds 1

wHasDungeonCompass:: ; DBCD
  ds 1

wHasDungeonStoneSlab:: ; DBCE
  ds 1

wHasDungeonBossKey:: ; DBCF
  ds 1

; Unlabeled
wDBD0 equ $DBD0
  ds $3C

; Photos 1-8 (bitfield)
wPhotos1:: ; DC0C
  ds 1

; Photos 9-12 (bitfield)
wPhotos2:: ; DC0D
  ds 1

wDC0E::
  ds 1

; Tunic Type (GBC only)
; 0: green
; 1: red
; 2: blue
wTunicType:: ; DC0F
  ds 1
