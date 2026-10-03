.class public final Lxyz/aethersx2/android/b$i;
.super Lxyz/aethersx2/android/b$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/aethersx2/android/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# direct methods
.method public constructor <init>(Lxyz/aethersx2/android/b;)V
    .locals 1

    const v0, 0x7f130015

    invoke-direct {p0, p1, v0}, Lxyz/aethersx2/android/b$h;-><init>(Lxyz/aethersx2/android/b;I)V

    return-void
.end method


# virtual methods
.method public final z(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Lxyz/aethersx2/android/b$h;->z(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 3
    iget-object p1, p1, Lxyz/aethersx2/android/b;->e0:Lxyz/aethersx2/android/k;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const-string v1, "TouchscreenController/AddRemoveButtons"

    .line 4
    invoke-virtual {p0, v1, p1}, Lxyz/aethersx2/android/b$h;->D(Ljava/lang/String;Z)V

    const-string v2, "TouchscreenController/EditPositions"

    .line 5
    invoke-virtual {p0, v2, p1}, Lxyz/aethersx2/android/b$h;->D(Ljava/lang/String;Z)V

    const-string v3, "TouchscreenController/EditScale"

    .line 6
    invoke-virtual {p0, v3, p1}, Lxyz/aethersx2/android/b$h;->D(Ljava/lang/String;Z)V

    const-string v4, "TouchscreenController/ToggleButtons"

    .line 7
    invoke-virtual {p0, v4, p1}, Lxyz/aethersx2/android/b$h;->D(Ljava/lang/String;Z)V

    const-string v5, "TouchscreenController/ResetLayout"

    .line 8
    invoke-virtual {p0, v5, p1}, Lxyz/aethersx2/android/b$h;->D(Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    .line 9
    new-instance p1, Lq3/c0;

    invoke-direct {p1, p0, v0}, Lq3/c0;-><init>(Lxyz/aethersx2/android/b$i;I)V

    invoke-virtual {p0, v1, p1}, Lxyz/aethersx2/android/b$h;->C(Ljava/lang/String;Landroidx/preference/Preference$e;)V

    .line 10
    new-instance p1, Lq3/d0;

    invoke-direct {p1, p0, v0}, Lq3/d0;-><init>(Lxyz/aethersx2/android/b$i;I)V

    invoke-virtual {p0, v4, p1}, Lxyz/aethersx2/android/b$h;->C(Ljava/lang/String;Landroidx/preference/Preference$e;)V

    .line 11
    new-instance p1, Lq3/c0;

    invoke-direct {p1, p0, p2}, Lq3/c0;-><init>(Lxyz/aethersx2/android/b$i;I)V

    invoke-virtual {p0, v2, p1}, Lxyz/aethersx2/android/b$h;->C(Ljava/lang/String;Landroidx/preference/Preference$e;)V

    .line 12
    new-instance p1, Lq3/d0;

    invoke-direct {p1, p0, p2}, Lq3/d0;-><init>(Lxyz/aethersx2/android/b$i;I)V

    invoke-virtual {p0, v3, p1}, Lxyz/aethersx2/android/b$h;->C(Ljava/lang/String;Landroidx/preference/Preference$e;)V

    .line 13
    new-instance p1, Lq3/c0;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lq3/c0;-><init>(Lxyz/aethersx2/android/b$i;I)V

    invoke-virtual {p0, v5, p1}, Lxyz/aethersx2/android/b$h;->C(Ljava/lang/String;Landroidx/preference/Preference$e;)V

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/b;->y()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string p2, "TouchscreenController/View"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->X(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 15
    iget-object p2, p0, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 16
    iget-object p2, p2, Lxyz/aethersx2/android/b;->h0:Landroidx/preference/Preference$d;

    if-eqz p2, :cond_2

    .line 17
    iput-object p2, p1, Landroidx/preference/Preference;->h:Landroidx/preference/Preference$d;

    :cond_2
    return-void
.end method
