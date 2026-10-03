.class public Lxyz/aethersx2/android/ControllerSettingsActivity;
.super Lq3/p;
.source "SourceFile"


# instance fields
.field public z:Lxyz/aethersx2/android/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lq3/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/o;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c00b1

    .line 2
    invoke-virtual {p0, v0}, Le/e;->setContentView(I)V

    .line 3
    new-instance v0, Lxyz/aethersx2/android/b;

    invoke-direct {v0}, Lxyz/aethersx2/android/b;-><init>()V

    iput-object v0, p0, Lxyz/aethersx2/android/ControllerSettingsActivity;->z:Lxyz/aethersx2/android/b;

    .line 4
    new-instance v1, Lm0/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lm0/b;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lq3/u;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lq3/u;-><init>(Ljava/lang/Object;I)V

    .line 5
    iput-object p1, v0, Lxyz/aethersx2/android/b;->e0:Lxyz/aethersx2/android/k;

    .line 6
    iput-object p1, v0, Lxyz/aethersx2/android/b;->f0:Lq3/a2;

    .line 7
    iput-object p1, v0, Lxyz/aethersx2/android/b;->g0:Lxyz/aethersx2/android/b$f;

    .line 8
    iput-object p1, v0, Lxyz/aethersx2/android/b;->h0:Landroidx/preference/Preference$d;

    .line 9
    iput-object v1, v0, Lxyz/aethersx2/android/b;->i0:Lxyz/aethersx2/android/b$c;

    .line 10
    iput-object v3, v0, Lxyz/aethersx2/android/b;->j0:Lxyz/aethersx2/android/b$e;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/o;->v()Landroidx/fragment/app/y;

    move-result-object p1

    .line 12
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/y;)V

    .line 13
    iget-object p1, p0, Lxyz/aethersx2/android/ControllerSettingsActivity;->z:Lxyz/aethersx2/android/b;

    const v1, 0x7f090211

    .line 14
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/f0;->e(ILandroidx/fragment/app/n;)Landroidx/fragment/app/f0;

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/a;->g()I

    .line 16
    invoke-virtual {p0}, Le/e;->y()Le/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1, v2}, Le/a;->m(Z)V

    .line 18
    invoke-virtual {p1}, Le/a;->o()V

    :cond_0
    return-void
.end method
