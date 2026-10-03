.class public final Lxyz/aethersx2/android/EmulationActivity$c;
.super Landroidx/preference/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/aethersx2/android/EmulationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public k0:Lxyz/aethersx2/android/EmulationActivity$b;

.field public l0:Lxyz/aethersx2/android/EmulationActivity;


# direct methods
.method public constructor <init>(Lxyz/aethersx2/android/EmulationActivity$b;Lxyz/aethersx2/android/EmulationActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/b;-><init>()V

    .line 2
    iput-object p1, p0, Lxyz/aethersx2/android/EmulationActivity$c;->k0:Lxyz/aethersx2/android/EmulationActivity$b;

    .line 3
    iput-object p2, p0, Lxyz/aethersx2/android/EmulationActivity$c;->l0:Lxyz/aethersx2/android/EmulationActivity;

    return-void
.end method


# virtual methods
.method public final C(IIZLandroidx/preference/Preference$e;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->P(I)V

    .line 3
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->I(I)V

    .line 4
    iput-object p4, v0, Landroidx/preference/Preference;->i:Landroidx/preference/Preference$e;

    .line 5
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->G(Z)V

    .line 6
    invoke-virtual {p0}, Landroidx/preference/b;->y()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->W(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final z(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object p1, p0, Landroidx/preference/b;->d0:Landroidx/preference/PreferenceManager;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/b;->A(Landroidx/preference/PreferenceScreen;)V

    .line 3
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->isCheevosActive()Z

    move-result p1

    .line 4
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->isCheevosChallengeModeActive()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->getCheevoCount()I

    move-result p1

    if-lez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 6
    :goto_0
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->getGameInfo()Lq3/t1;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Lq3/t1;->b()Z

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const v3, 0x7f1000a4

    const v4, 0x7f08008d

    if-eqz v2, :cond_2

    if-nez p2, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v0

    .line 8
    :goto_2
    new-instance v6, Lq3/r1;

    invoke-direct {v6, p0, v0}, Lq3/r1;-><init>(Lxyz/aethersx2/android/EmulationActivity$c;I)V

    invoke-virtual {p0, v3, v4, v5, v6}, Lxyz/aethersx2/android/EmulationActivity$c;->C(IIZLandroidx/preference/Preference$e;)V

    const v3, 0x7f1000a7

    const v4, 0x7f080097

    .line 9
    new-instance v5, Lq3/q1;

    invoke-direct {v5, p0, v0}, Lq3/q1;-><init>(Lxyz/aethersx2/android/EmulationActivity$c;I)V

    invoke-virtual {p0, v3, v4, v2, v5}, Lxyz/aethersx2/android/EmulationActivity$c;->C(IIZLandroidx/preference/Preference$e;)V

    const v0, 0x7f1000a8

    const v2, 0x7f08009b

    .line 10
    new-instance v3, Lq3/r1;

    invoke-direct {v3, p0, v1}, Lq3/r1;-><init>(Lxyz/aethersx2/android/EmulationActivity$c;I)V

    invoke-virtual {p0, v0, v2, v1, v3}, Lxyz/aethersx2/android/EmulationActivity$c;->C(IIZLandroidx/preference/Preference$e;)V

    const v0, 0x7f1000a9

    const v2, 0x7f08007e

    .line 11
    new-instance v3, Lq3/q1;

    invoke-direct {v3, p0, v1}, Lq3/q1;-><init>(Lxyz/aethersx2/android/EmulationActivity$c;I)V

    invoke-virtual {p0, v0, v2, v1, v3}, Lxyz/aethersx2/android/EmulationActivity$c;->C(IIZLandroidx/preference/Preference$e;)V

    const v0, 0x7f1000a2

    const v2, 0x7f08007a

    .line 12
    new-instance v3, Lq3/r1;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lq3/r1;-><init>(Lxyz/aethersx2/android/EmulationActivity$c;I)V

    invoke-virtual {p0, v0, v2, v1, v3}, Lxyz/aethersx2/android/EmulationActivity$c;->C(IIZLandroidx/preference/Preference$e;)V

    const v0, 0x7f1000a0

    const v2, 0x7f0800a0

    .line 13
    new-instance v3, Lq3/q1;

    invoke-direct {v3, p0, v4}, Lq3/q1;-><init>(Lxyz/aethersx2/android/EmulationActivity$c;I)V

    invoke-virtual {p0, v0, v2, p1, v3}, Lxyz/aethersx2/android/EmulationActivity$c;->C(IIZLandroidx/preference/Preference$e;)V

    const p1, 0x7f1000a5

    const v0, 0x7f080079

    xor-int/2addr p2, v1

    .line 14
    new-instance v2, Lq3/r1;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lq3/r1;-><init>(Lxyz/aethersx2/android/EmulationActivity$c;I)V

    invoke-virtual {p0, p1, v0, p2, v2}, Lxyz/aethersx2/android/EmulationActivity$c;->C(IIZLandroidx/preference/Preference$e;)V

    const p1, 0x7f1000a1

    const p2, 0x7f08006d

    .line 15
    new-instance v0, Lq3/q1;

    invoke-direct {v0, p0, v3}, Lq3/q1;-><init>(Lxyz/aethersx2/android/EmulationActivity$c;I)V

    invoke-virtual {p0, p1, p2, v1, v0}, Lxyz/aethersx2/android/EmulationActivity$c;->C(IIZLandroidx/preference/Preference$e;)V

    const p1, 0x7f1000a6

    const p2, 0x7f080096

    .line 16
    new-instance v0, Lq3/r1;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v2}, Lq3/r1;-><init>(Lxyz/aethersx2/android/EmulationActivity$c;I)V

    invoke-virtual {p0, p1, p2, v1, v0}, Lxyz/aethersx2/android/EmulationActivity$c;->C(IIZLandroidx/preference/Preference$e;)V

    return-void
.end method
