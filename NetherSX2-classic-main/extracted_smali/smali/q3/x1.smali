.class public final synthetic Lq3/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$e;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lxyz/aethersx2/android/f$c;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/f$c;I)V
    .locals 0

    iput p2, p0, Lq3/x1;->c:I

    iput-object p1, p0, Lq3/x1;->d:Lxyz/aethersx2/android/f$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroidx/preference/Preference;)Z
    .locals 7

    iget v0, p0, Lq3/x1;->c:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object p1, p0, Lq3/x1;->d:Lxyz/aethersx2/android/f$c;

    .line 1
    iget-object p1, p1, Lxyz/aethersx2/android/f$a;->k0:Lxyz/aethersx2/android/f;

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v2, 0x7f130013

    .line 3
    invoke-virtual {p1, v0, v2}, Lxyz/aethersx2/android/f;->A(Landroid/content/SharedPreferences;I)V

    const v2, 0x7f13000b

    .line 4
    invoke-virtual {p1, v0, v2}, Lxyz/aethersx2/android/f;->A(Landroid/content/SharedPreferences;I)V

    const v2, 0x7f130002

    .line 5
    invoke-virtual {p1, v0, v2}, Lxyz/aethersx2/android/f;->A(Landroid/content/SharedPreferences;I)V

    .line 6
    invoke-virtual {p1}, Lxyz/aethersx2/android/f;->B()V

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1000c6

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    .line 8
    :pswitch_1
    iget-object v0, p0, Lq3/x1;->d:Lxyz/aethersx2/android/f$c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->getInputProfileNames()Ljava/util/List;

    move-result-object v2

    const v3, 0x7f1000d7

    .line 10
    invoke-virtual {v0, v3}, Landroidx/fragment/app/n;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    iget-object v3, v0, Lxyz/aethersx2/android/f$a;->k0:Lxyz/aethersx2/android/f;

    .line 12
    iget-object v3, v3, Lxyz/aethersx2/android/f;->f0:Lq3/a2;

    const/4 v5, 0x0

    const-string v6, "Pad/InputProfileName"

    .line 13
    invoke-virtual {v3, v6, v5}, Lq3/a2;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    .line 14
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 16
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_1
    if-gez v4, :cond_3

    .line 17
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 18
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 20
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 21
    new-instance v2, Landroidx/appcompat/app/d$a;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    const v5, 0x7f1000e7

    .line 22
    invoke-virtual {v2, v5}, Landroidx/appcompat/app/d$a;->j(I)Landroidx/appcompat/app/d$a;

    new-instance v5, Lq3/z0;

    invoke-direct {v5, v0, p1, v3}, Lq3/z0;-><init>(Lxyz/aethersx2/android/f$c;Landroidx/preference/Preference;[Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2, v3, v4, v5}, Landroidx/appcompat/app/d$a;->i([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    const p1, 0x7f100084

    sget-object v0, Lq3/e;->o:Lq3/e;

    .line 24
    invoke-virtual {v2, p1, v0}, Landroidx/appcompat/app/d$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 25
    invoke-virtual {v2}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v1

    .line 27
    :goto_3
    iget-object p1, p0, Lq3/x1;->d:Lxyz/aethersx2/android/f$c;

    .line 28
    iget-object p1, p1, Lxyz/aethersx2/android/f$a;->k0:Lxyz/aethersx2/android/f;

    invoke-static {p1, v1}, Lxyz/aethersx2/android/f;->y(Lxyz/aethersx2/android/f;Z)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
