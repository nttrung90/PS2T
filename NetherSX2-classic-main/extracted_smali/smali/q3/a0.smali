.class public final synthetic Lq3/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;
.implements Landroidx/preference/Preference$e;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lxyz/aethersx2/android/b$d;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/b$d;I)V
    .locals 0

    iput p2, p0, Lq3/a0;->c:I

    iput-object p1, p0, Lq3/a0;->d:Lxyz/aethersx2/android/b$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lq3/a0;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lq3/a0;->d:Lxyz/aethersx2/android/b$d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, v0, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 3
    iget-object v1, v1, Lxyz/aethersx2/android/b;->f0:Lq3/a2;

    const/4 v2, 0x0

    const-string v3, "Pad/GameSettingsInitialized"

    .line 4
    invoke-virtual {v1, v3, v2}, Lq3/a2;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lxyz/aethersx2/android/b$d;->E()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v0, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 7
    iget-object v1, v1, Lxyz/aethersx2/android/b;->f0:Lq3/a2;

    const-string v2, "Pad/UseGameSettingsForController"

    .line 8
    invoke-virtual {v1, v2, p1}, Lq3/a2;->f(Ljava/lang/String;Z)V

    .line 9
    iget-object p1, v0, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 10
    iget-object p1, p1, Lxyz/aethersx2/android/b;->i0:Lxyz/aethersx2/android/b$c;

    if-eqz p1, :cond_1

    .line 11
    invoke-interface {p1}, Lxyz/aethersx2/android/b$c;->a()V

    :cond_1
    :goto_0
    return-void

    .line 12
    :goto_1
    iget-object p1, p0, Lq3/a0;->d:Lxyz/aethersx2/android/b$d;

    .line 13
    iget-object p1, p1, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 14
    iget-object p1, p1, Lxyz/aethersx2/android/b;->j0:Lxyz/aethersx2/android/b$e;

    if-eqz p1, :cond_2

    .line 15
    invoke-interface {p1}, Lxyz/aethersx2/android/b$e;->b()V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroidx/preference/Preference;)Z
    .locals 4

    iget p1, p0, Lq3/a0;->c:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lq3/a0;->d:Lxyz/aethersx2/android/b$d;

    .line 1
    iget-object p1, p1, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 2
    new-instance v1, Landroidx/appcompat/app/d$a;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1001a1

    .line 3
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/d$a;->j(I)Landroidx/appcompat/app/d$a;

    const v2, 0x7f100060

    .line 4
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/d$a;->c(I)Landroidx/appcompat/app/d$a;

    new-instance v2, Lq3/w;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, Lq3/w;-><init>(Lxyz/aethersx2/android/b;I)V

    const p1, 0x7f10008b

    .line 5
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/d$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    sget-object p1, Lq3/e;->h:Lq3/e;

    const v2, 0x7f100084

    .line 6
    invoke-virtual {v1, v2, p1}, Landroidx/appcompat/app/d$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 7
    invoke-virtual {v1}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v0

    .line 9
    :goto_0
    iget-object p1, p0, Lq3/a0;->d:Lxyz/aethersx2/android/b$d;

    .line 10
    iget-object p1, p1, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v1}, Lxyz/aethersx2/android/b;->y(Z)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
