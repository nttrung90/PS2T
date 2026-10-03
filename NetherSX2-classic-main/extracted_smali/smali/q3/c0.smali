.class public final synthetic Lq3/c0;
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

    iput p2, p0, Lq3/c0;->c:I

    iput-object p1, p0, Lq3/c0;->d:Lxyz/aethersx2/android/b$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroidx/preference/Preference;)Z
    .locals 4

    iget p1, p0, Lq3/c0;->c:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lq3/c0;->d:Lxyz/aethersx2/android/b$i;

    .line 1
    iget-object v2, p1, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 2
    iget-object v2, v2, Lxyz/aethersx2/android/b;->g0:Lxyz/aethersx2/android/b$f;

    if-eqz v2, :cond_0

    .line 3
    check-cast v2, Lq3/p1;

    iget-object v2, v2, Lq3/p1;->c:Lxyz/aethersx2/android/EmulationActivity$b;

    .line 4
    invoke-virtual {v2, v0}, Lxyz/aethersx2/android/EmulationActivity$b;->z(Z)V

    .line 5
    :cond_0
    iget-object p1, p1, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 6
    iget-object p1, p1, Lxyz/aethersx2/android/b;->e0:Lxyz/aethersx2/android/k;

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p1, v0}, Lxyz/aethersx2/android/k;->C(I)V

    return v1

    .line 8
    :pswitch_1
    iget-object p1, p0, Lq3/c0;->d:Lxyz/aethersx2/android/b$i;

    .line 9
    iget-object v0, p1, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 10
    iget-object v0, v0, Lxyz/aethersx2/android/b;->e0:Lxyz/aethersx2/android/k;

    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lxyz/aethersx2/android/k;->c(Landroid/content/Context;)Landroidx/appcompat/app/d$a;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v1

    .line 13
    :goto_0
    iget-object p1, p0, Lq3/c0;->d:Lxyz/aethersx2/android/b$i;

    .line 14
    iget-object p1, p1, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 15
    new-instance v2, Landroidx/appcompat/app/d$a;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1002e9

    .line 16
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/d$a;->j(I)Landroidx/appcompat/app/d$a;

    const v3, 0x7f1002ea

    .line 17
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/d$a;->c(I)Landroidx/appcompat/app/d$a;

    new-instance v3, Lq3/w;

    invoke-direct {v3, p1, v0}, Lq3/w;-><init>(Lxyz/aethersx2/android/b;I)V

    const p1, 0x7f10008b

    .line 18
    invoke-virtual {v2, p1, v3}, Landroidx/appcompat/app/d$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    sget-object p1, Lq3/e;->f:Lq3/e;

    const v0, 0x7f100084

    .line 19
    invoke-virtual {v2, v0, p1}, Landroidx/appcompat/app/d$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 20
    invoke-virtual {v2}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
