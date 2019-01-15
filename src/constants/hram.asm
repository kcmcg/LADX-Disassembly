section "HRAM", HRAM[$ff80]

hRomBank:: ; FF80
 ds 1

hTemp:: ; FF81
 ds 1

hCodeTemp:: ; FF82
 ds 1

; Unlabeled
hFF83:: ; FF83
 ds $D

; Beginning of the game-variables section of the HRAM
hGameValuesSection EQU $FF90

hNeedsUpdatingBGTiles:: ; FF90
 ds 1

hNeedsUpdatingEnnemiesTiles:: ; FF91
 ds 1

; Unlabeled
hFF92:: ; hFF92
  ds 4

hBaseScrollX:: ; FF96
 ds 1

hBaseScrollY:: ; FF97
 ds 1

hLinkPositionX:: ; FF98
 ds 1

hLinkPositionY:: ; FF99
 ds 1

; Unlabeled
hFF9A:: ; hFF9A
  ds 3

hLinkAnimationState:: ; FF9D
 ds 1

; Unlabeled
hFF9E:: ; hFF9E
  ds $B

; Store first byte of dungeon room data
;FFA4

; Unused (?) Window Y value
hWindowYUnused:: ; FFA9
  ds 1

; Unused (?) Window X value
hWindowXUnused:: ; FFAA
  ds 1

; Unlabeled
hFFAB:: ; hFFAB
  ds 6

; Next music to be played after map slide transition
hNextMusicTrack:: ; hFFB1
  ds 1

; Unlabeled
hFFB2:: ; hFFB2
  ds 3

hButtonsInactiveDelay:: ; FFB5
  ; Number of frames during which joypad is ignored
  ds 1

; Unlabeled
hFFB6:: ; FFB6
  ds $6

; Unknown; stores previous gameplay type before a transition?
; Related to fade-out/fade-in transitions
; Seems to affect whether a music track is restarted afer
; a transition
hFFBC:: ; FFBC
  ds 4

; DMA routine copied from ROM during initialization
; Copy the content of wOAMBuffer to the OAM memory
hDMARoutine:: ; FFC0
  ds $A

; Unlabeled
hFFCA:: ; FFCA
  ds 1

hPressedButtonsMask:: ; FFCB
 ds 1

; Unlabeled
hFFCC:: ; hFFCC
  ds $5

hNeedsRenderingFrame:: ; FFD1
 ds 1

hFFD2:: ; FFD2
  ds 1

  ds $14

hFrameCounter:: ; FFE7
  ; wraps around 00-FF
  ds 1

; This location has different uses
hFFE8                   ; FFE8
hDialogBackgroundTile:: ; FFE8
  ds 1

; Store last hex of second byte of dungeon room data (default room tile)
hFFE9:: ; FFE9
  ds 2

hActiveSpriteId:: ; FFEB
  ds 1

hFFEC:: ; FFEC
  ds 7

hSFX:: ; FFF3
  ; plays sfx immediately
  ds 1

hFFF4: ds 1
hFFF5: ds 1

hMapIndex:: ; FFF6
  ; currently loaded map
  ds 1

hMapTileset:: ; FFF7
  ; tileset index for the current map
  ; See MAP_TILESET_* constants for values
  ds 1

; Unlabeled
hFFF8:: ; hFFF8
  ds $5

hDidRenderFrame:: ; FFFD
 ds 1

hIsGBC:: ; FFFE
  ; 0 = GB, 1 = GBC
  ds 1
