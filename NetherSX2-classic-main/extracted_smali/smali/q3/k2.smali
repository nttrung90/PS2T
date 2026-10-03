.class public final synthetic Lq3/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxyz/aethersx2/android/h$a;
.implements Landroidx/preference/Preference$e;


# instance fields
.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lq3/k2;->c:Ljava/lang/Object;

    iput-object p2, p0, Lq3/k2;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lxyz/aethersx2/android/i;)Z
    .locals 3

    iget-object v0, p0, Lq3/k2;->c:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/MainActivity;

    iget-object v1, p0, Lq3/k2;->d:Ljava/lang/Object;

    check-cast v1, Lxyz/aethersx2/android/GameListEntry;

    sget v2, Lxyz/aethersx2/android/MainActivity;->K:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lxyz/aethersx2/android/i;->b()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Lxyz/aethersx2/android/GameListEntry;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object p1, p1, Lxyz/aethersx2/android/i;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, p1}, Lxyz/aethersx2/android/MainActivity;->H(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public final d(Landroidx/preference/Preference;)Z
    .locals 5

    iget-object v0, p0, Lq3/k2;->c:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/j$b;

    iget-object v1, p0, Lq3/k2;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1
    iget-object v2, v0, Lxyz/aethersx2/android/j$b;->l0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    if-ne v3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 2
    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->W(Z)V

    goto :goto_0

    .line 3
    :cond_1
    check-cast p1, Lxyz/aethersx2/android/RadioButtonPreference;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->W(Z)V

    .line 4
    iget-object p1, v0, Landroidx/preference/b;->d0:Landroidx/preference/PreferenceManager;

    .line 5
    invoke-virtual {p1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "Filenames/BIOS"

    .line 6
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v2
.end method
