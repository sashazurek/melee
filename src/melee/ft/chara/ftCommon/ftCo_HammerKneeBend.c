#include "ftCo_HammerKneeBend.h"

#include "ftCo_HammerJump.h"
#include "ftCo_HammerWait.h"

#include "ft/fighter.h"
#include "ft/ft_081B.h"
#include "ft/ft_0C88.h"
#include "ft/types.h"
#include "ftCommon/types.h"

void ftCo_800C5B88(ftCo_GObj* gobj, enum_t arg1)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[8] = { 0 };
#endif
    /// @todo Cannot move below @c fp, which suggests an inline
    u32 flags;
    Fighter* fp = GET_FIGHTER(gobj);
    fp->mv.co.hammerkneebend.x4 = arg1;
    fp->mv.co.hammerkneebend.x0 = 0;
    fp->mv.co.cargokneebend.x8 = fp->co_attrs.jump_startup_time;
    flags = ftCo_800C54C4(fp);
    Fighter_ChangeMotionState(gobj, ftCo_MS_HammerKneeBend, flags,
                              ftCo_800C548C(fp), 1, 0, NULL);
    ftCo_800C4E94(fp);
}

void ftCo_HammerKneeBend_Anim(ftCo_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    ftCo_800C4F64(gobj);
    if (fp->mv.co.hammerkneebend.x8 <= 0) {
        ftCo_800C5A98(gobj);
    }
    --fp->mv.co.hammerkneebend.x8;
}

void ftCo_HammerKneeBend_IASA(ftCo_GObj* gobj)
{
    ftCo_800CB59C(gobj);
}

void ftCo_HammerKneeBend_Phys(ftCo_GObj* gobj)
{
    ft_80084F3C(gobj);
}

void ftCo_HammerKneeBend_Coll(ftCo_GObj* gobj)
{
    ftCo_HammerWait_Coll(gobj);
}
