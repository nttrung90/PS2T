.class public final Lxyz/aethersx2/android/f$c;
.super Lxyz/aethersx2/android/f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/aethersx2/android/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final synthetic n0:I


# direct methods
.method public constructor <init>(Lxyz/aethersx2/android/f;)V
    .locals 1

    const v0, 0x7f130009

    invoke-direct {p0, p1, v0}, Lxyz/aethersx2/android/f$b;-><init>(Lxyz/aethersx2/android/f;I)V

    return-void
.end method


# virtual methods
.method public final C()V
    .locals 5

    .line 1
    invoke-super {p0}, Lxyz/aethersx2/android/f$b;->C()V

    .line 2
    new-instance v0, Lq3/w1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lq3/w1;-><init>(Lxyz/aethersx2/android/f$c;I)V

    const-string v2, "__CLEAR_GAME_SETTINGS__"

    invoke-virtual {p0, v2, v0}, Lxyz/aethersx2/android/f$c;->D(Ljava/lang/String;Landroidx/preference/Preference$e;)V

    .line 3
    new-instance v0, Lq3/x1;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lq3/x1;-><init>(Lxyz/aethersx2/android/f$c;I)V

    const-string v3, "__COPY_GAME_SETTINGS__"

    invoke-virtual {p0, v3, v0}, Lxyz/aethersx2/android/f$c;->D(Ljava/lang/String;Landroidx/preference/Preference$e;)V

    .line 4
    new-instance v0, Lq3/w1;

    invoke-direct {v0, p0, v2}, Lq3/w1;-><init>(Lxyz/aethersx2/android/f$c;I)V

    const-string v2, "__RESET_GAME_SETTINGS__"

    invoke-virtual {p0, v2, v0}, Lxyz/aethersx2/android/f$c;->D(Ljava/lang/String;Landroidx/preference/Preference$e;)V

    .line 5
    new-instance v0, Lq3/x1;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lq3/x1;-><init>(Lxyz/aethersx2/android/f$c;I)V

    const-string v3, "__RESET_GAME_SETTINGS_UNSAFE__"

    invoke-virtual {p0, v3, v0}, Lxyz/aethersx2/android/f$c;->D(Ljava/lang/String;Landroidx/preference/Preference$e;)V

    .line 6
    new-instance v0, Lq3/w1;

    invoke-direct {v0, p0, v2}, Lq3/w1;-><init>(Lxyz/aethersx2/android/f$c;I)V

    const-string v2, "__COPY_HOTKEY_BINDINGS__"

    invoke-virtual {p0, v2, v0}, Lxyz/aethersx2/android/f$c;->D(Ljava/lang/String;Landroidx/preference/Preference$e;)V

    .line 7
    invoke-virtual {p0}, Landroidx/preference/b;->y()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "Pad/InputProfileName"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->X(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v3, p0, Lxyz/aethersx2/android/f$a;->k0:Lxyz/aethersx2/android/f;

    .line 9
    iget-object v3, v3, Lxyz/aethersx2/android/f;->f0:Lq3/a2;

    const/4 v4, 0x0

    .line 10
    invoke-virtual {v3, v2, v4}, Lq3/a2;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v2, 0x7f1000d7

    invoke-virtual {p0, v2}, Landroidx/fragment/app/n;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->N(Ljava/lang/CharSequence;)V

    .line 12
    new-instance v2, Lq3/x1;

    invoke-direct {v2, p0, v1}, Lq3/x1;-><init>(Lxyz/aethersx2/android/f$c;I)V

    .line 13
    iput-object v2, v0, Landroidx/preference/Preference;->i:Landroidx/preference/Preference$e;

    :goto_0
    return-void
.end method

.method public final D(Ljava/lang/String;Landroidx/preference/Preference$e;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/b;->y()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->X(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iput-object p2, p1, Landroidx/preference/Preference;->i:Landroidx/preference/Preference$e;

    :cond_0
    return-void
.end method
