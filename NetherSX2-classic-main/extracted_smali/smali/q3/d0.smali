.class public final synthetic Lq3/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$e;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lxyz/aethersx2/android/b$i;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/b$i;I)V
    .locals 0

    iput p2, p0, Lq3/d0;->c:I

    iput-object p1, p0, Lq3/d0;->d:Lxyz/aethersx2/android/b$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroidx/preference/Preference;)Z
    .locals 9

    iget p1, p0, Lq3/d0;->c:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lq3/d0;->d:Lxyz/aethersx2/android/b$i;

    .line 1
    iget-object v2, p1, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 2
    iget-object v2, v2, Lxyz/aethersx2/android/b;->e0:Lxyz/aethersx2/android/k;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v3, Landroidx/appcompat/app/d$a;

    invoke-direct {v3, p1}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object p1, v2, Lxyz/aethersx2/android/k;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/CharSequence;

    .line 6
    iget-object v4, v2, Lxyz/aethersx2/android/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Z

    .line 7
    iget-object v5, v2, Lxyz/aethersx2/android/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lxyz/aethersx2/android/TouchscreenControllerButtonView;

    .line 8
    invoke-virtual {v7}, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->getConfigName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, p1, v6

    .line 9
    invoke-virtual {v7}, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->getToggle()Z

    move-result v7

    aput-boolean v7, v4, v6

    add-int/2addr v6, v1

    goto :goto_0

    :cond_0
    const v5, 0x7f100089

    .line 10
    invoke-virtual {v3, v5}, Landroidx/appcompat/app/d$a;->j(I)Landroidx/appcompat/app/d$a;

    .line 11
    new-instance v5, Lq3/t2;

    invoke-direct {v5, v2, v0}, Lq3/t2;-><init>(Lxyz/aethersx2/android/k;I)V

    invoke-virtual {v3, p1, v4, v5}, Landroidx/appcompat/app/d$a;->d([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/d$a;

    const p1, 0x7f100086

    .line 12
    sget-object v0, Lq3/k;->o:Lq3/k;

    invoke-virtual {v3, p1, v0}, Landroidx/appcompat/app/d$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 13
    invoke-virtual {v3}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v1

    .line 14
    :goto_1
    iget-object p1, p0, Lq3/d0;->d:Lxyz/aethersx2/android/b$i;

    .line 15
    iget-object v2, p1, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 16
    iget-object v2, v2, Lxyz/aethersx2/android/b;->g0:Lxyz/aethersx2/android/b$f;

    if-eqz v2, :cond_1

    .line 17
    check-cast v2, Lq3/p1;

    iget-object v2, v2, Lq3/p1;->c:Lxyz/aethersx2/android/EmulationActivity$b;

    .line 18
    invoke-virtual {v2, v0}, Lxyz/aethersx2/android/EmulationActivity$b;->z(Z)V

    .line 19
    :cond_1
    iget-object p1, p1, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 20
    iget-object p1, p1, Lxyz/aethersx2/android/b;->e0:Lxyz/aethersx2/android/k;

    const/4 v0, 0x3

    .line 21
    invoke-virtual {p1, v0}, Lxyz/aethersx2/android/k;->C(I)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
