.class public final synthetic Lq3/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;
.implements Landroidx/preference/Preference$e;


# instance fields
.field public final synthetic c:Lxyz/aethersx2/android/b$a;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/b$a;)V
    .locals 0

    iput-object p1, p0, Lq3/y;->c:Lxyz/aethersx2/android/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lq3/y;->c:Lxyz/aethersx2/android/b$a;

    .line 1
    invoke-virtual {v0}, Lxyz/aethersx2/android/b$a;->H()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lxyz/aethersx2/android/b$a;->G(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Landroidx/preference/Preference;)Z
    .locals 3

    iget-object p1, p0, Lq3/y;->c:Lxyz/aethersx2/android/b$a;

    .line 1
    new-instance v0, Landroidx/appcompat/app/d$a;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10005d

    .line 2
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/d$a;->c(I)Landroidx/appcompat/app/d$a;

    .line 3
    new-instance v1, Lq3/j;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lq3/j;-><init>(Ljava/lang/Object;I)V

    const p1, 0x7f100108

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/d$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 4
    sget-object p1, Lq3/k;->g:Lq3/k;

    const v1, 0x7f100107

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/d$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v2
.end method
