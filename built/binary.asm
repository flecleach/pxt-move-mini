; code sizes (bytes): 1572 (incl. 0 frags, and 0 lits); src size 0
; assembly: 1294 lines; density: 74.86 bytes/stmt
; total bytes: 206372 (85.0% of 237.0k flash with 36316 free)
; peep hole pass: 6 instructions removed and 17 updated
; peep hole pass: 4 instructions removed and 4 updated
; peep hole pass: 0 instructions removed and 0 updated


; start
    .startaddr 0x32000
    .hex 708E3B92C615A841C49866C975EE5197 ; magic number
    .hex 0B6D0A053587D7CB ; hex template hash
    .hex 4FDCC1A242235E9A ; program hash
    .short 3   ; num. globals
    .short 0 ; patched with number of words resulting from assembly
    .word _pxt_config_data
    .short 0 ; patched with comm section size
    .short 0 ; reserved
    .word 0 ; reserved
;
; Function <main>
;
    .section code
    b .themain      
    .balign 4
_main___P1_Lit:
    .short 0xffff, 33   ; action literal
.themain:
    @stackmark litfunc
    push {lr}
    @dummystack 4
    bl _lambda_setup_0
    bl _main___P1
    pop {r4, r5, r6, r7, pc}
    @stackempty litfunc
    .section code
_main___P1:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_main___P1_locals:
    movs r0, #1
    ldr r1, _ldlit_2      
    bl input::onButtonPressed
    @stackempty locals
    movs r0, #2
    ldr r1, _ldlit_3      
    bl input::onButtonPressed
    @stackempty locals
    movs r0, #26
    ldr r1, _ldlit_4      
    bl input::onButtonPressed
    @stackempty locals
    ldr r0, [r6, #8]
    bl _pxt_decr
    movs r0, #201
    str r0, [r6, #8]
    @stackempty locals
    ldr r0, [r6, #4]
    bl _pxt_decr
    movs r0, #1
lsls r0, r0, #8
adds r0, #145
    str r0, [r6, #4]
    @stackempty locals
.ret.1:
    @stackempty locals
_main___P1_end:
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function inline
;
    .section code
    .balign 4
inline__P329_Lit:
    .short 0xffff, 33   ; action literal
    @stackmark litfunc
    push {lr}
    @dummystack 4
    bl _lambda_setup_0
    bl inline__P329
    pop {r4, r5, r6, r7, pc}
    @stackempty litfunc
    .section code
inline__P329:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
inline__P329_locals:
    movs r0, #181
    push {r0} ; proc-arg
    bl turnRight__P330
_proccall0:
    bl _clr1_1
    @dummystack -1
    @stackempty locals
.ret.329:
    @stackempty locals
inline__P329_end:
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function turnRight
;
    .section code
    .balign 4
turnRight__P330_Lit:
    .short 0xffff, 33   ; action literal
    @stackmark litfunc
    push {lr}
    @dummystack 5
    bl _lambda_setup_2
    bl turnRight__P330
    add sp, #4*1 ; pop locals 1
    pop {r4, r5, r6, r7, pc}
    @stackempty litfunc
    .section code
turnRight__P330:
    @stackmark func
    @stackmark args
    push {lr}
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
turnRight__P330_locals:
    bl _pxt_incr_pushR0_8      
    @dummystack 1      
    ldr r0, [sp, #4*0] ; estack
    ldr r1, _ldlit_5      
    bl numops::muls
    bl _clr1_1
    @dummystack -1
    push {r0} ; proc-arg
    ldr r0, [r6, #4]
    bl _pxt_incr_pushR0      
    @dummystack 1      
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl numops::div
    bl _clr2_3
    @dummystack -2
    push {r0}; tmpstore @1
    bl _pxt_decr_4      
    pop {r0} ; tmpref @1
    str r0, [sp, locals@0]
    @stackempty locals
    movs r0, #8
    movs r1, #130
    bl pins::servoWritePin
    @stackempty locals
    movs r0, #9
    movs r1, #130
    bl pins::servoWritePin
    @stackempty locals
    bl _pxt_incr_pushR0_0      
    @dummystack 1      
    bl _conv_4
    bl control::waitMicros
    bl _clr1_1
    @dummystack -1
    @stackempty locals
    bl stop__P335
_proccall1:
    @stackempty locals
.ret.330:
    @stackempty locals
    bl _pxt_decr_0      
    add sp, #4*1 ; pop locals 1
turnRight__P330_end:
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function stop
;
    .section code
    .balign 4
stop__P335_Lit:
    .short 0xffff, 33   ; action literal
    @stackmark litfunc
    push {lr}
    @dummystack 4
    bl _lambda_setup_0
    bl stop__P335
    pop {r4, r5, r6, r7, pc}
    @stackempty litfunc
    .section code
stop__P335:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
stop__P335_locals:
    movs r0, #8
    movs r1, #0
    bl pins::analogWritePin
    @stackempty locals
    movs r0, #9
    movs r1, #0
    bl pins::analogWritePin
    @stackempty locals
.ret.335:
    @stackempty locals
stop__P335_end:
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function inline
;
    .section code
    .balign 4
inline__P336_Lit:
    .short 0xffff, 33   ; action literal
    @stackmark litfunc
    push {lr}
    @dummystack 4
    bl _lambda_setup_0
    bl inline__P336
    pop {r4, r5, r6, r7, pc}
    @stackempty litfunc
    .section code
inline__P336:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
inline__P336_locals:
    movs r0, #21
    push {r0} ; proc-arg
    bl driveForwards__P337
_proccall2:
    bl _clr1_1
    @dummystack -1
    @stackempty locals
.ret.336:
    @stackempty locals
inline__P336_end:
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function driveForwards
;
    .section code
    .balign 4
driveForwards__P337_Lit:
    .short 0xffff, 33   ; action literal
    @stackmark litfunc
    push {lr}
    @dummystack 5
    bl _lambda_setup_2
    bl driveForwards__P337
    add sp, #4*1 ; pop locals 1
    pop {r4, r5, r6, r7, pc}
    @stackempty litfunc
    .section code
driveForwards__P337:
    @stackmark func
    @stackmark args
    push {lr}
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
driveForwards__P337_locals:
    bl _pxt_incr_pushR0_8      
    @dummystack 1      
    ldr r0, [sp, #4*0] ; estack
    ldr r1, _ldlit_5      
    bl numops::muls
    bl _clr1_1
    @dummystack -1
    push {r0} ; proc-arg
    ldr r0, [r6, #8]
    bl _pxt_incr_pushR0      
    @dummystack 1      
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl numops::div
    bl _clr2_3
    @dummystack -2
    push {r0}; tmpstore @1
    bl _pxt_decr_4      
    pop {r0} ; tmpref @1
    str r0, [sp, locals@0]
    @stackempty locals
    bl forward__P341
_proccall3:
    @stackempty locals
    bl _pxt_incr_pushR0_0      
    @dummystack 1      
    bl _conv_4
    bl control::waitMicros
    bl _clr1_1
    @dummystack -1
    @stackempty locals
    bl stop__P335
_proccall4:
    @stackempty locals
.ret.337:
    @stackempty locals
    bl _pxt_decr_0      
    add sp, #4*1 ; pop locals 1
driveForwards__P337_end:
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function forward
;
    .section code
    .balign 4
forward__P341_Lit:
    .short 0xffff, 33   ; action literal
    @stackmark litfunc
    push {lr}
    @dummystack 4
    bl _lambda_setup_0
    bl forward__P341
    pop {r4, r5, r6, r7, pc}
    @stackempty litfunc
    .section code
forward__P341:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
forward__P341_locals:
    movs r0, #8
    movs r1, #0
    bl pins::servoWritePin
    @stackempty locals
    movs r0, #9
    movs r1, #180
    bl pins::servoWritePin
    @stackempty locals
.ret.341:
    @stackempty locals
forward__P341_end:
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function inline
;
    .section code
    .balign 4
inline__P342_Lit:
    .short 0xffff, 33   ; action literal
    @stackmark litfunc
    push {lr}
    @dummystack 4
    bl _lambda_setup_0
    bl inline__P342
    pop {r4, r5, r6, r7, pc}
    @stackempty litfunc
    .section code
inline__P342:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
inline__P342_locals:
    ldr r0, _ldlit_6      
    bl _pxt_decr
    @stackempty locals
.ret.342:
    @stackempty locals
inline__P342_end:
    pop {pc}
    @stackempty func
    @stackempty args
    .section code
_lambda_setup_0:
    push {r4, r5, r6, r7}
    mov r5, r0
    mov r4, lr
    bl pxtrt::getGlobalsPtr
    mov r6, r0
    bx r4
@dummystack -4
    .section code
_clr1_1:
@dummystack 1
    mov r7, r0
    mov r4, lr
    pop {r0}
    lsls r1, r0, #30
    bne .tag0
    cmp r0, #0
    beq .tag0
    bl pxt::decr
.tag0:
    mov r0, r7
    bx r4
    .section code
_lambda_setup_2:
    push {r4, r5, r6, r7}
    push {r1}
    mov r5, r0
    mov r4, lr
    bl pxtrt::getGlobalsPtr
    mov r6, r0
    bx r4
@dummystack -5
    .section code
_clr2_3:
@dummystack 2
    mov r7, r0
    mov r4, lr
    pop {r0}
    lsls r1, r0, #30
    bne .tag0
    cmp r0, #0
    beq .tag0
    bl pxt::decr
.tag0:
    pop {r0}
    lsls r1, r0, #30
    bne .tag1
    cmp r0, #0
    beq .tag1
    bl pxt::decr
.tag1:
    mov r0, r7
    bx r4
    .section code
_conv_4:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    bl _numops_toInt
    pop {pc}
    @stackempty args
_numops_adds:
    @scope _numops_adds
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r2, r1, #1
    adds r2, r0, r2
    bvs .boxed
    movs r0, r2
    blx lr
.boxed:
    push {r4, lr}
    push {r0, r1}
    bl numops::adds
    movs r4, r0
    pop {r0}
    bl _pxt_decr
    pop {r0}
    bl _pxt_decr
    movs r0, r4
    pop {r4, pc}
_numops_subs:
    @scope _numops_subs
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r2, r1, #1
    subs r2, r0, r2
    bvs .boxed
    movs r0, r2
    blx lr
.boxed:
    push {r4, lr}
    push {r0, r1}
    bl numops::subs
    movs r4, r0
    pop {r0}
    bl _pxt_decr
    pop {r0}
    bl _pxt_decr
    movs r0, r4
    pop {r4, pc}
_numops_ands:
    @scope _numops_ands
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    ands r0, r1
    blx lr
.boxed:
    push {r4, lr}
    push {r0, r1}
    bl numops::ands
    movs r4, r0
    pop {r0}
    bl _pxt_decr
    pop {r0}
    bl _pxt_decr
    movs r0, r4
    pop {r4, pc}
_numops_orrs:
    @scope _numops_orrs
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    orrs r0, r1
    blx lr
.boxed:
    push {r4, lr}
    push {r0, r1}
    bl numops::orrs
    movs r4, r0
    pop {r0}
    bl _pxt_decr
    pop {r0}
    bl _pxt_decr
    movs r0, r4
    pop {r4, pc}
_numops_eors:
    @scope _numops_eors
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    eors r0, r1
    adds r0, r0, #1
    blx lr
.boxed:
    push {r4, lr}
    push {r0, r1}
    bl numops::eors
    movs r4, r0
    pop {r0}
    bl _pxt_decr
    pop {r0}
    bl _pxt_decr
    movs r0, r4
    pop {r4, pc}
@scope _numops_toInt
_numops_toInt:
    asrs r0, r0, #1
    bcc .over
    blx lr
.over:
    push {lr}
    lsls r0, r0, #1
    bl pxt::toInt
    pop {pc}
_numops_fromInt:
    lsls r2, r0, #1
    asrs r1, r2, #1
    cmp r0, r1
    bne .over2
    adds r0, r2, #1
    blx lr
.over2:
    push {lr}
    bl pxt::fromInt
    pop {pc}
.section code
_pxt_incr_56:
    ldr r0, [sp, #56]
    b _pxt_incr
_pxt_incr_52:
    ldr r0, [sp, #52]
    b _pxt_incr
_pxt_incr_48:
    ldr r0, [sp, #48]
    b _pxt_incr
_pxt_incr_44:
    ldr r0, [sp, #44]
    b _pxt_incr
_pxt_incr_40:
    ldr r0, [sp, #40]
    b _pxt_incr
_pxt_incr_36:
    ldr r0, [sp, #36]
    b _pxt_incr
_pxt_incr_32:
    ldr r0, [sp, #32]
    b _pxt_incr
_pxt_incr_28:
    ldr r0, [sp, #28]
    b _pxt_incr
_pxt_incr_24:
    ldr r0, [sp, #24]
    b _pxt_incr
_pxt_incr_20:
    ldr r0, [sp, #20]
    b _pxt_incr
_pxt_incr_16:
    ldr r0, [sp, #16]
    b _pxt_incr
_pxt_incr_12:
    ldr r0, [sp, #12]
    b _pxt_incr
_pxt_incr_8:
    ldr r0, [sp, #8]
    b _pxt_incr
_pxt_incr_4:
    ldr r0, [sp, #4]
    b _pxt_incr
_pxt_incr_0:
    ldr r0, [sp, #0]
    ; b _pxt_incr
_pxt_incr:
    lsls r3, r0, #30
    beq .t0
.skip:
    bx lr
.t0:
    cmp r0, #0
    beq .skip
    push {lr}
    bl pxt::incr
    pop {pc}
_pxt_incr_pushR0_56:
    ldr r0, [sp, #56]
    b _pxt_incr_pushR0
_pxt_incr_pushR0_52:
    ldr r0, [sp, #52]
    b _pxt_incr_pushR0
_pxt_incr_pushR0_48:
    ldr r0, [sp, #48]
    b _pxt_incr_pushR0
_pxt_incr_pushR0_44:
    ldr r0, [sp, #44]
    b _pxt_incr_pushR0
_pxt_incr_pushR0_40:
    ldr r0, [sp, #40]
    b _pxt_incr_pushR0
_pxt_incr_pushR0_36:
    ldr r0, [sp, #36]
    b _pxt_incr_pushR0
_pxt_incr_pushR0_32:
    ldr r0, [sp, #32]
    b _pxt_incr_pushR0
.balign 4
_ldlit_5:
 .word 2000001
_ldlit_2:
 .word inline__P329_Lit
_ldlit_3:
 .word inline__P336_Lit
_ldlit_4:
 .word inline__P342_Lit
_ldlit_6:
 .word stop__P335_Lit
_pxt_incr_pushR0_28:
    ldr r0, [sp, #28]
    b _pxt_incr_pushR0
_pxt_incr_pushR0_24:
    ldr r0, [sp, #24]
    b _pxt_incr_pushR0
_pxt_incr_pushR0_20:
    ldr r0, [sp, #20]
    b _pxt_incr_pushR0
_pxt_incr_pushR0_16:
    ldr r0, [sp, #16]
    b _pxt_incr_pushR0
_pxt_incr_pushR0_12:
    ldr r0, [sp, #12]
    b _pxt_incr_pushR0
_pxt_incr_pushR0_8:
    ldr r0, [sp, #8]
    b _pxt_incr_pushR0
_pxt_incr_pushR0_4:
    ldr r0, [sp, #4]
    b _pxt_incr_pushR0
_pxt_incr_pushR0_0:
    ldr r0, [sp, #0]
    ; b _pxt_incr_pushR0
_pxt_incr_pushR0:
    push {r0}
    @dummystack -1
    lsls r3, r0, #30
    beq .t2
.skip2:
    bx lr
.t2:
    cmp r0, #0
    beq .skip2
    push {lr}
    bl pxt::incr
    pop {pc}
.section code
_pxt_decr_56:
    ldr r0, [sp, #56]
    b _pxt_decr
_pxt_decr_52:
    ldr r0, [sp, #52]
    b _pxt_decr
_pxt_decr_48:
    ldr r0, [sp, #48]
    b _pxt_decr
_pxt_decr_44:
    ldr r0, [sp, #44]
    b _pxt_decr
_pxt_decr_40:
    ldr r0, [sp, #40]
    b _pxt_decr
_pxt_decr_36:
    ldr r0, [sp, #36]
    b _pxt_decr
_pxt_decr_32:
    ldr r0, [sp, #32]
    b _pxt_decr
_pxt_decr_28:
    ldr r0, [sp, #28]
    b _pxt_decr
_pxt_decr_24:
    ldr r0, [sp, #24]
    b _pxt_decr
_pxt_decr_20:
    ldr r0, [sp, #20]
    b _pxt_decr
_pxt_decr_16:
    ldr r0, [sp, #16]
    b _pxt_decr
_pxt_decr_12:
    ldr r0, [sp, #12]
    b _pxt_decr
_pxt_decr_8:
    ldr r0, [sp, #8]
    b _pxt_decr
_pxt_decr_4:
    ldr r0, [sp, #4]
    b _pxt_decr
_pxt_decr_0:
    ldr r0, [sp, #0]
    ; b _pxt_decr
_pxt_decr:
    lsls r3, r0, #30
    beq .t0
.skip:
    bx lr
.t0:
    cmp r0, #0
    beq .skip
    push {lr}
    bl pxt::decr
    pop {pc}
_pxt_decr_pushR0_56:
    ldr r0, [sp, #56]
    b _pxt_decr_pushR0
_pxt_decr_pushR0_52:
    ldr r0, [sp, #52]
    b _pxt_decr_pushR0
_pxt_decr_pushR0_48:
    ldr r0, [sp, #48]
    b _pxt_decr_pushR0
_pxt_decr_pushR0_44:
    ldr r0, [sp, #44]
    b _pxt_decr_pushR0
_pxt_decr_pushR0_40:
    ldr r0, [sp, #40]
    b _pxt_decr_pushR0
_pxt_decr_pushR0_36:
    ldr r0, [sp, #36]
    b _pxt_decr_pushR0
_pxt_decr_pushR0_32:
    ldr r0, [sp, #32]
    b _pxt_decr_pushR0
_pxt_decr_pushR0_28:
    ldr r0, [sp, #28]
    b _pxt_decr_pushR0
_pxt_decr_pushR0_24:
    ldr r0, [sp, #24]
    b _pxt_decr_pushR0
_pxt_decr_pushR0_20:
    ldr r0, [sp, #20]
    b _pxt_decr_pushR0
_pxt_decr_pushR0_16:
    ldr r0, [sp, #16]
    b _pxt_decr_pushR0
_pxt_decr_pushR0_12:
    ldr r0, [sp, #12]
    b _pxt_decr_pushR0
_pxt_decr_pushR0_8:
    ldr r0, [sp, #8]
    b _pxt_decr_pushR0
_pxt_decr_pushR0_4:
    ldr r0, [sp, #4]
    b _pxt_decr_pushR0
_pxt_decr_pushR0_0:
    ldr r0, [sp, #0]
    ; b _pxt_decr_pushR0
_pxt_decr_pushR0:
    push {r0}
    @dummystack -1
    lsls r3, r0, #30
    beq .t2
.skip2:
    bx lr
.t2:
    cmp r0, #0
    beq .skip2
    push {lr}
    bl pxt::decr
    pop {pc}
_cmp_lt:
    @scope _cmp_lt
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    blt .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {r4, lr}
    push {r0, r1}
    bl numops::lt
    bl numops::toBoolDecr
    movs r4, r0
    pop {r0}
    bl _pxt_decr
    pop {r0}
    bl _pxt_decr
    movs r0, r4
    pop {r4, pc}
_cmp_gt:
    @scope _cmp_gt
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    bgt .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {r4, lr}
    push {r0, r1}
    bl numops::gt
    bl numops::toBoolDecr
    movs r4, r0
    pop {r0}
    bl _pxt_decr
    pop {r0}
    bl _pxt_decr
    movs r0, r4
    pop {r4, pc}
_cmp_le:
    @scope _cmp_le
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    ble .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {r4, lr}
    push {r0, r1}
    bl numops::le
    bl numops::toBoolDecr
    movs r4, r0
    pop {r0}
    bl _pxt_decr
    pop {r0}
    bl _pxt_decr
    movs r0, r4
    pop {r4, pc}
_cmp_ge:
    @scope _cmp_ge
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    bge .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {r4, lr}
    push {r0, r1}
    bl numops::ge
    bl numops::toBoolDecr
    movs r4, r0
    pop {r0}
    bl _pxt_decr
    pop {r0}
    bl _pxt_decr
    movs r0, r4
    pop {r4, pc}
_cmp_eq:
    @scope _cmp_eq
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    beq .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {r4, lr}
    push {r0, r1}
    bl numops::eq
    bl numops::toBoolDecr
    movs r4, r0
    pop {r0}
    bl _pxt_decr
    pop {r0}
    bl _pxt_decr
    movs r0, r4
    pop {r4, pc}
_cmp_eqq:
    @scope _cmp_eqq
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    beq .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {r4, lr}
    push {r0, r1}
    bl numops::eqq
    bl numops::toBoolDecr
    movs r4, r0
    pop {r0}
    bl _pxt_decr
    pop {r0}
    bl _pxt_decr
    movs r0, r4
    pop {r4, pc}
_cmp_neq:
    @scope _cmp_neq
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    bne .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {r4, lr}
    push {r0, r1}
    bl numops::neq
    bl numops::toBoolDecr
    movs r4, r0
    pop {r0}
    bl _pxt_decr
    pop {r0}
    bl _pxt_decr
    movs r0, r4
    pop {r4, pc}
_cmp_neqq:
    @scope _cmp_neqq
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    bne .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {r4, lr}
    push {r0, r1}
    bl numops::neqq
    bl numops::toBoolDecr
    movs r4, r0
    pop {r0}
    bl _pxt_decr
    pop {r0}
    bl _pxt_decr
    movs r0, r4
    pop {r4, pc}
.balign 4
_pxt_config_data:
    .word 0
_js_end:
_program_end:
