.class public final synthetic Lq3/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lxyz/aethersx2/android/InputBindingPreference;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/InputBindingPreference;I)V
    .locals 0

    iput p2, p0, Lq3/b2;->c:I

    iput-object p1, p0, Lq3/b2;->d:Lxyz/aethersx2/android/InputBindingPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget p2, p0, Lq3/b2;->c:I

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p2, p0, Lq3/b2;->d:Lxyz/aethersx2/android/InputBindingPreference;

    .line 1
    invoke-virtual {p2}, Landroidx/preference/Preference;->j()Lc1/e;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lq3/a2;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lq3/a2;

    .line 4
    iget-object v1, p2, Landroidx/preference/Preference;->o:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Lq3/a2;->q(Ljava/lang/String;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroidx/preference/Preference;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7
    iget-object v1, p2, Landroidx/preference/Preference;->o:Ljava/lang/String;

    .line 8
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 10
    :goto_0
    invoke-virtual {p2}, Lxyz/aethersx2/android/InputBindingPreference;->d0()V

    .line 11
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .line 12
    :goto_1
    iget-object p1, p0, Lq3/b2;->d:Lxyz/aethersx2/android/InputBindingPreference;

    .line 13
    invoke-virtual {p1}, Landroidx/preference/Preference;->j()Lc1/e;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 14
    instance-of v0, p2, Lq3/a2;

    if-eqz v0, :cond_2

    .line 15
    check-cast p2, Lq3/a2;

    invoke-virtual {p1, p2}, Lxyz/aethersx2/android/InputBindingPreference;->Y(Lq3/a2;)V

    goto :goto_2

    .line 16
    :cond_1
    iget-object p2, p1, Landroidx/preference/Preference;->c:Landroid/content/Context;

    .line 17
    invoke-static {p2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Lxyz/aethersx2/android/InputBindingPreference;->X(Landroid/content/SharedPreferences$Editor;)V

    .line 19
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 20
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lxyz/aethersx2/android/InputBindingPreference;->d0()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
