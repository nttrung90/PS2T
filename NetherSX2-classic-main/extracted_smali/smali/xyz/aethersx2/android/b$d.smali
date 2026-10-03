.class public final Lxyz/aethersx2/android/b$d;
.super Lxyz/aethersx2/android/b$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/aethersx2/android/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Lxyz/aethersx2/android/b;)V
    .locals 1

    const v0, 0x7f130006

    invoke-direct {p0, p1, v0}, Lxyz/aethersx2/android/b$h;-><init>(Lxyz/aethersx2/android/b;I)V

    return-void
.end method


# virtual methods
.method public final E()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100183

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 3
    iget-object v1, v1, Lxyz/aethersx2/android/b;->f0:Lq3/a2;

    const/4 v3, 0x0

    .line 4
    invoke-static {v0, v3, v1}, Lxyz/aethersx2/android/b;->z(Landroid/content/Context;Lq3/a2;Lq3/a2;)V

    .line 5
    iget-object v0, p0, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 6
    iget-object v0, v0, Lxyz/aethersx2/android/b;->f0:Lq3/a2;

    const-string v1, "Pad/GameSettingsInitialized"

    .line 7
    invoke-virtual {v0, v1, v2}, Lq3/a2;->f(Ljava/lang/String;Z)V

    .line 8
    iget-object v0, p0, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 9
    iget-object v0, v0, Lxyz/aethersx2/android/b;->f0:Lq3/a2;

    const-string v1, "Pad/UseGameSettingsForController"

    .line 10
    invoke-virtual {v0, v1, v2}, Lq3/a2;->f(Ljava/lang/String;Z)V

    .line 11
    iget-object v0, p0, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 12
    iget-object v0, v0, Lxyz/aethersx2/android/b;->i0:Lxyz/aethersx2/android/b$c;

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Lxyz/aethersx2/android/b$c;->a()V

    :cond_0
    return-void
.end method

.method public final z(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lxyz/aethersx2/android/b$h;->z(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 3
    iget-object p1, p1, Lxyz/aethersx2/android/b;->f0:Lq3/a2;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Pad/UseGameSettingsForController"

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1, v2, v0}, Lq3/a2;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, p2

    goto :goto_1

    :cond_1
    move p1, v0

    .line 5
    :goto_1
    invoke-virtual {p0}, Landroidx/preference/b;->y()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->X(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->G(Z)V

    if-eqz v1, :cond_2

    .line 7
    move-object v1, v2

    check-cast v1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, p1}, Landroidx/preference/TwoStatePreference;->W(Z)V

    .line 8
    new-instance v1, Lq3/a0;

    invoke-direct {v1, p0, v0}, Lq3/a0;-><init>(Lxyz/aethersx2/android/b$d;I)V

    .line 9
    iput-object v1, v2, Landroidx/preference/Preference;->h:Landroidx/preference/Preference$d;

    goto :goto_2

    :cond_2
    const v1, 0x7f100184

    .line 10
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->M(I)V

    :cond_3
    :goto_2
    const-string v1, "Pad/ResetToDefaults"

    const-string v2, "Pad/CopyGlobalSettings"

    if-eqz p1, :cond_5

    .line 11
    new-instance p1, Lq3/b0;

    invoke-direct {p1, p0, v0}, Lq3/b0;-><init>(Lxyz/aethersx2/android/b$d;I)V

    invoke-virtual {p0, v2, p1}, Lxyz/aethersx2/android/b$h;->C(Ljava/lang/String;Landroidx/preference/Preference$e;)V

    .line 12
    invoke-virtual {p0}, Landroidx/preference/b;->y()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->X(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    .line 14
    :cond_4
    iget-object v0, p1, Landroidx/preference/Preference;->M:Landroidx/preference/PreferenceGroup;

    .line 15
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->b0(Landroidx/preference/Preference;)Z

    goto :goto_4

    .line 16
    :cond_5
    invoke-virtual {p0}, Landroidx/preference/b;->y()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->X(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    iget-object v0, p1, Landroidx/preference/Preference;->M:Landroidx/preference/PreferenceGroup;

    .line 19
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->b0(Landroidx/preference/Preference;)Z

    .line 20
    :goto_3
    new-instance p1, Lq3/a0;

    invoke-direct {p1, p0, p2}, Lq3/a0;-><init>(Lxyz/aethersx2/android/b$d;I)V

    invoke-virtual {p0, v1, p1}, Lxyz/aethersx2/android/b$h;->C(Ljava/lang/String;Landroidx/preference/Preference$e;)V

    .line 21
    :goto_4
    new-instance p1, Lq3/b0;

    invoke-direct {p1, p0, p2}, Lq3/b0;-><init>(Lxyz/aethersx2/android/b$d;I)V

    const-string p2, "Pad/LoadInputProfile"

    invoke-virtual {p0, p2, p1}, Lxyz/aethersx2/android/b$h;->C(Ljava/lang/String;Landroidx/preference/Preference$e;)V

    .line 22
    new-instance p1, Lq3/a0;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lq3/a0;-><init>(Lxyz/aethersx2/android/b$d;I)V

    const-string v0, "Pad/SaveInputProfile"

    invoke-virtual {p0, v0, p1}, Lxyz/aethersx2/android/b$h;->C(Ljava/lang/String;Landroidx/preference/Preference$e;)V

    .line 23
    new-instance p1, Lq3/b0;

    invoke-direct {p1, p0, p2}, Lq3/b0;-><init>(Lxyz/aethersx2/android/b$d;I)V

    .line 24
    invoke-virtual {p0}, Landroidx/preference/b;->y()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    const-string v0, "Pad/MultitapPort1"

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->X(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 25
    iput-object p1, p2, Landroidx/preference/Preference;->h:Landroidx/preference/Preference$d;

    .line 26
    :cond_7
    new-instance p1, Lq3/a0;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lq3/a0;-><init>(Lxyz/aethersx2/android/b$d;I)V

    .line 27
    invoke-virtual {p0}, Landroidx/preference/b;->y()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    const-string v0, "Pad/MultitapPort2"

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->X(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 28
    iput-object p1, p2, Landroidx/preference/Preference;->h:Landroidx/preference/Preference$d;

    :cond_8
    return-void
.end method
