.class public final synthetic Lq3/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lq3/z0;->c:I

    iput-object p1, p0, Lq3/z0;->e:Ljava/lang/Object;

    iput-object p2, p0, Lq3/z0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lq3/z0;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lxyz/aethersx2/android/f$c;Landroidx/preference/Preference;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lq3/z0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/z0;->e:Ljava/lang/Object;

    iput-object p2, p0, Lq3/z0;->f:Ljava/lang/Object;

    iput-object p3, p0, Lq3/z0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    iget v0, p0, Lq3/z0;->c:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object p1, p0, Lq3/z0;->e:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/InputBindingPreference;

    iget-object v0, p0, Lq3/z0;->d:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lq3/z0;->f:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    array-length v2, v0

    const/4 v3, 0x0

    if-ge p2, v2, :cond_0

    .line 2
    aget-object v0, v0, p2

    .line 3
    aget-object p2, v1, p2

    move-object v10, p2

    move-object v9, v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p1, Landroidx/preference/Preference;->c:Landroid/content/Context;

    const v0, 0x7f100052

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object v10, p2

    move-object v9, v3

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->j()Lc1/e;

    move-result-object p2

    .line 7
    instance-of v0, p2, Lq3/a2;

    if-eqz v0, :cond_1

    move-object v3, p2

    check-cast v3, Lq3/a2;

    :cond_1
    move-object v6, v3

    .line 8
    new-instance p2, Lq3/t;

    .line 9
    iget-object v5, p1, Landroidx/preference/Preference;->c:Landroid/content/Context;

    .line 10
    iget-object v7, p1, Lxyz/aethersx2/android/InputBindingPreference;->S:Ljava/lang/String;

    .line 11
    iget-object v8, p1, Landroidx/preference/Preference;->o:Ljava/lang/String;

    .line 12
    iget v11, p1, Lxyz/aethersx2/android/InputBindingPreference;->W:I

    const/4 v12, 0x1

    move-object v4, p2

    invoke-direct/range {v4 .. v12}, Lq3/t;-><init>(Landroid/content/Context;Lq3/a2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 13
    new-instance v0, Lq3/c2;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lq3/c2;-><init>(Lxyz/aethersx2/android/InputBindingPreference;I)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 14
    invoke-virtual {p2}, Lq3/t;->show()V

    return-void

    .line 15
    :pswitch_1
    iget-object v0, p0, Lq3/z0;->e:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/InputBindingPreference;

    iget-object v1, p0, Lq3/z0;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lq3/z0;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, p1, p2}, Lxyz/aethersx2/android/InputBindingPreference;->W(Lxyz/aethersx2/android/InputBindingPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lq3/z0;->e:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/f$c;

    iget-object v1, p0, Lq3/z0;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/preference/Preference;

    iget-object v2, p0, Lq3/z0;->d:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    sget v3, Lxyz/aethersx2/android/f$c;->n0:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Pad/InputProfileName"

    if-nez p2, :cond_2

    const p2, 0x7f1000d7

    .line 16
    invoke-virtual {v1, p2}, Landroidx/preference/Preference;->M(I)V

    .line 17
    iget-object p2, v0, Lxyz/aethersx2/android/f$a;->k0:Lxyz/aethersx2/android/f;

    .line 18
    iget-object p2, p2, Lxyz/aethersx2/android/f;->f0:Lq3/a2;

    .line 19
    invoke-virtual {p2, v3}, Lq3/a2;->q(Ljava/lang/String;)Z

    goto :goto_1

    .line 20
    :cond_2
    aget-object v4, v2, p2

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->N(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, v0, Lxyz/aethersx2/android/f$a;->k0:Lxyz/aethersx2/android/f;

    .line 22
    iget-object v0, v0, Lxyz/aethersx2/android/f;->f0:Lq3/a2;

    .line 23
    aget-object p2, v2, p2

    invoke-virtual {v0, v3, p2}, Lq3/a2;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .line 25
    :pswitch_3
    iget-object p1, p0, Lq3/z0;->e:Ljava/lang/Object;

    check-cast p1, Lq3/c1;

    iget-object p2, p0, Lq3/z0;->d:Ljava/lang/Object;

    check-cast p2, [Ljava/lang/String;

    iget-object v0, p0, Lq3/z0;->f:Ljava/lang/Object;

    check-cast v0, [Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 27
    :goto_2
    array-length v3, p2

    if-ge v2, v3, :cond_5

    .line 28
    aget-boolean v3, v0, v2

    if-nez v3, :cond_3

    goto :goto_3

    .line 29
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    const-string v3, " & "

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    :cond_4
    aget-object v3, p2, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 32
    :cond_5
    iget-object p2, p1, Lq3/c1;->v0:Lq3/a2;

    if-eqz p2, :cond_7

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-nez p2, :cond_6

    .line 34
    iget-object p2, p1, Lq3/c1;->v0:Lq3/a2;

    invoke-virtual {p1}, Lq3/c1;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lq3/a2;->q(Ljava/lang/String;)Z

    goto :goto_5

    .line 35
    :cond_6
    iget-object p2, p1, Lq3/c1;->v0:Lq3/a2;

    invoke-virtual {p1}, Lq3/c1;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lq3/a2;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 36
    :cond_7
    invoke-virtual {p1}, Lq3/c1;->D()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 38
    invoke-virtual {p1}, Lq3/c1;->B()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 39
    :cond_8
    invoke-virtual {p1}, Lq3/c1;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 40
    :goto_4
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 41
    :goto_5
    invoke-virtual {p1}, Lq3/c1;->E()V

    return-void

    .line 42
    :goto_6
    iget-object p1, p0, Lq3/z0;->e:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/j$c;

    iget-object p2, p0, Lq3/z0;->d:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lq3/z0;->f:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    sget-object v1, Lxyz/aethersx2/android/j$c;->k0:[Lxyz/aethersx2/android/MemoryCardNamePreference;

    .line 43
    invoke-virtual {p1, p2, v0}, Lxyz/aethersx2/android/j$c;->C(Ljava/lang/String;Landroid/net/Uri;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
