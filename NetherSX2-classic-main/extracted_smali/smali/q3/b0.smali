.class public final synthetic Lq3/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$e;
.implements Landroidx/preference/Preference$d;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lxyz/aethersx2/android/b$d;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/b$d;I)V
    .locals 0

    iput p2, p0, Lq3/b0;->c:I

    iput-object p1, p0, Lq3/b0;->d:Lxyz/aethersx2/android/b$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lq3/b0;->d:Lxyz/aethersx2/android/b$d;

    .line 1
    iget-object p1, p1, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 2
    iget-object p1, p1, Lxyz/aethersx2/android/b;->j0:Lxyz/aethersx2/android/b$e;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lxyz/aethersx2/android/b$e;->b()V

    :cond_0
    return-void
.end method

.method public final d(Landroidx/preference/Preference;)Z
    .locals 3

    iget p1, p0, Lq3/b0;->c:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lq3/b0;->d:Lxyz/aethersx2/android/b$d;

    .line 1
    invoke-virtual {p1}, Lxyz/aethersx2/android/b$d;->E()V

    return v0

    .line 2
    :goto_0
    iget-object p1, p0, Lq3/b0;->d:Lxyz/aethersx2/android/b$d;

    .line 3
    iget-object p1, p1, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 4
    new-instance v1, Landroidx/appcompat/app/d$a;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1000ef

    .line 5
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/d$a;->j(I)Landroidx/appcompat/app/d$a;

    const v2, 0x7f1000f1

    .line 6
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/d$a;->c(I)Landroidx/appcompat/app/d$a;

    new-instance v2, Lq3/w;

    invoke-direct {v2, p1, v0}, Lq3/w;-><init>(Lxyz/aethersx2/android/b;I)V

    const p1, 0x7f10008b

    .line 7
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/d$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    sget-object p1, Lq3/e;->g:Lq3/e;

    const v2, 0x7f100087

    .line 8
    invoke-virtual {v1, v2, p1}, Landroidx/appcompat/app/d$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 9
    invoke-virtual {v1}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
