.headersize(0x80AC3500 - 0x00E43340)

;Following 2 hacks, allows for both chests in each room to be opened separately.
;Skips part of Flags_SetTreasure(play, this->leftChestNum & 0x1F)

.org 0x80AC3A60
    nop             ;nop out jal to chest opening function func_80020624

.org 0x80AC3AA8
    nop             ;nop out jal to chest opening function func_80020624

;Following 4 hacks prevents the floating item above the unopened chest
;Namely prevents Actor_Spawn(&play->actorCtx, play, ACTOR_EN_EX_ITEM, xPos, yPos, zPos, 0, 0, 0)

.org 0x80AC3B5C
    nop            ;nop out jal to func_80025110

.org 0x80AC3BB4
    nop            ;nop out jal to func_80025110

.org 0x80AC3C04
    nop            ;nop out jal to func_80025110

.org 0x80AC3C5C
    nop            ;nop out jal to func_80025110