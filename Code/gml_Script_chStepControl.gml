kLeft = oControl.kLeft
kLeftPushedSteps = oControl.kLeftPushedSteps
kLeftPressed = oControl.kLeftPressed
kLeftReleased = oControl.kLeftReleased
kRight = oControl.kRight
kRightPushedSteps = oControl.kRightPushedSteps
kRightPressed = oControl.kRightPressed
kRightReleased = oControl.kRightReleased
kUp = oControl.kUp
kUpPushedSteps = oControl.kUpPushedSteps
kUpPressed = oControl.kUpPressed
kUpReleased = oControl.kUpReleased
kDown = oControl.kDown
kDownPushedSteps = oControl.kDownPushedSteps
kDownPressed = oControl.kDownPressed
kDownReleased = oControl.kDownReleased
kAim = oControl.kAim
kAimPushedSteps = oControl.kAimPushedSteps
kAimPressed = oControl.kAimPressed
kAimReleased = oControl.kAimReleased
kAim2 = oControl.kAim2
kAim2PushedSteps = oControl.kAim2PushedSteps
kAim2Pressed = oControl.kAim2Pressed
kAim2Released = oControl.kAim2Released
kJump = oControl.kJump
kJumpPushedSteps = oControl.kJumpPushedSteps
kJumpPressed = oControl.kJumpPressed
kJumpReleased = oControl.kJumpReleased
kFire = oControl.kFire
kFirePushedSteps = oControl.kFirePushedSteps
kFirePressed = oControl.kFirePressed
kFireReleased = oControl.kFireReleased
kMissile = oControl.kMissile
kMissilePushedSteps = oControl.kMissilePushedSteps
kMissilePressed = oControl.kMissilePressed
kMissileReleased = oControl.kMissileReleased
kSelect = oControl.kSelect
kSelectPushedSteps = oControl.kSelectPushedSteps
kSelectPressed = oControl.kSelectPressed
kSelectReleased = oControl.kSelectReleased
kWalk = oControl.kWalk
kWalkPushedSteps = oControl.kWalkPushedSteps
kWalkPressed = oControl.kWalkPressed
kWalkReleased = oControl.kWalkReleased
kMorph = oControl.kMorph
kMorphPushedSteps = oControl.kMorphPushedSteps
kMorphPressed = oControl.kMorphPressed
kMorphReleased = oControl.kMorphReleased
if (global.opmslstyle == 0)
{
    if (global.currentweapon == 0)
        global.currentweapon = 1
    if (state == STANDING || state == RUNNING || state == DUCKING || state == JUMPING || state == GRIP || state == GRABBEDQUEEN || (global.maxpbombs > 0 && (state == BALL || state == AIRBALL || state == SPIDERBALL || state == GRABBEDQUEENMORPH || state == GRABBEDQUEENBELLY)))
    {
        if (kMissile && (state == BALL || state == AIRBALL || state == SPIDERBALL || state == GRABBEDQUEENMORPH || state == GRABBEDQUEENBELLY))
        {
            idle = 0
            if (armmsl == 0)
            {
                sfx_play(sndMSwitch)
                armmsl = 1
            }
        }
        else if (armmsl == 1)
        {
            sfx_play(sndMSwitch)
            armmsl = 0
        }
    }
    if ((state == BALL || state == AIRBALL || state == SPIDERBALL || state == GRABBEDQUEENMORPH || state == GRABBEDQUEENBELLY) && global.maxpbombs == 0)
        armmsl = 0
}
if (global.opmslstyle == 1)
{
    if (kMissile && kMissilePushedSteps == 0 && global.pbombs > 0)
    {
        global.currentweapon += 3
        if (global.currentweapon > 3)
            global.currentweapon = 0
        sfx_play(sndMSwitch)
    }
    if (kSelect && kSelectPushedSteps == 0 && global.currentweapon != 0)
    {
        global.currentweapon = 0
        sfx_play(sndMSwitch)
    }
}
if (global.controltype == 0)
{
    if (global.opwlkstyle == 0)
    {
        if (kWalk && kWalkPushedSteps == 0)
            walking = (!walking)
    }
    if (global.opwlkstyle == 1)
    {
        if kWalk
        {
            walking = 1
            if (turning == 0 && dash == 0)
                aimlock = 1
        }
        else
        {
            walking = 0
            aimlock = 0
        }
    }
}
if (global.controltype > 0)
{
    if (global.opwlkstyle == 0)
    {
        if (kWalk && kWalkPushedSteps == 0)
            jwalk = (!jwalk)
    }
    if (global.opwlkstyle == 1)
    {
        if kWalk
        {
            jwalk = 1
            if (turning == 0 && dash == 0)
                aimlock = 1
        }
        else
        {
            jwalk = 0
            aimlock = 0
        }
    }
}
if (global.controltype == 1)
{
    if (kLeft > 0)
    {
        if oControl.walk_zone
            walking = 1
        else
            walking = jwalk
    }
    if (kRight > 0)
    {
        if oControl.walk_zone
            walking = 1
        else
            walking = jwalk
    }
}
if (global.controltype == 2)
{
    if (kLeft > 0)
    {
        if oControl.walk_zone
            walking = 1
        else
            walking = jwalk
    }
    if (kRight > 0)
    {
        if oControl.walk_zone
            walking = 1
        else
            walking = jwalk
    }
}
if (dash > 0)
    walking = 0
