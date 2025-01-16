RETRO_KEYS:
.byte 0x00

.headersize(0x80867920 - 0x00C05200)

.org 0x80867E2C
    j    use_universal_small_key
    nop
    sb  t1,  0x00BC(v0)
