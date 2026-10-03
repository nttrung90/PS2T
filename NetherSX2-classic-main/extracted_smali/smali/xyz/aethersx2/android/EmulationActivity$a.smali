.class public final Lxyz/aethersx2/android/EmulationActivity$a;
.super Landroidx/preference/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/aethersx2/android/EmulationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
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
    iput-object p1, p0, Lxyz/aethersx2/android/EmulationActivity$a;->k0:Lxyz/aethersx2/android/EmulationActivity$b;

    .line 3
    iput-object p2, p0, Lxyz/aethersx2/android/EmulationActivity$a;->l0:Lxyz/aethersx2/android/EmulationActivity;

    return-void
.end method


# virtual methods
.method public final C(IIZLandroidx/preference/Preference$e;)V
    .locals 1

    .line 1
    new-instance p3, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p3, p1}, Landroidx/preference/Preference;->P(I)V

    .line 3
    invoke-virtual {p3, p2}, Landroidx/preference/Preference;->I(I)V

    .line 4
    iput-object p4, p3, Landroidx/preference/Preference;->i:Landroidx/preference/Preference$e;

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p3, p1}, Landroidx/preference/Preference;->G(Z)V

    .line 6
    invoke-virtual {p0}, Landroidx/preference/b;->y()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/preference/PreferenceGroup;->W(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final z(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/preference/b;->d0:Landroidx/preference/PreferenceManager;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/b;->A(Landroidx/preference/PreferenceScreen;)V

    .line 3
    new-instance p1, Lm0/b;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Lm0/b;-><init>(Ljava/lang/Object;I)V

    const p2, 0x7f1000a0

    const v0, 0x7f0800a0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1, p1}, Lxyz/aethersx2/android/EmulationActivity$a;->C(IIZLandroidx/preference/Preference$e;)V

    .line 4
    new-instance p1, Lq3/u;

    invoke-direct {p1, p0, v1}, Lq3/u;-><init>(Ljava/lang/Object;I)V

    const p2, 0x7f1000a3

    const v0, 0x7f08009d

    invoke-virtual {p0, p2, v0, v1, p1}, Lxyz/aethersx2/android/EmulationActivity$a;->C(IIZLandroidx/preference/Preference$e;)V

    return-void
.end method
