.class public final synthetic Lm0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/d;
.implements Lxyz/aethersx2/android/b$c;
.implements Lcom/google/android/material/tabs/c$b;
.implements Landroidx/preference/Preference$e;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lm0/b;->c:I

    iput-object p1, p0, Lm0/b;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lm0/b;->d:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/ControllerSettingsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public final b(Lcom/google/android/material/tabs/TabLayout$f;I)V
    .locals 6

    iget v0, p0, Lm0/b;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lm0/b;->d:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/b;

    sget-object v1, Lxyz/aethersx2/android/b;->o0:[C

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const p2, 0x7f100066

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$f;->a(I)Lcom/google/android/material/tabs/TabLayout$f;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const p2, 0x7f100067

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$f;->a(I)Lcom/google/android/material/tabs/TabLayout$f;

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, -0x2

    .line 3
    iget v2, v0, Lxyz/aethersx2/android/b;->l0:I

    if-ge p2, v2, :cond_2

    .line 4
    iget-object v0, v0, Lxyz/aethersx2/android/b;->m0:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$f;->b(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v2, 0x2

    if-ge p2, v3, :cond_3

    const v3, 0x7f100068

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    sub-int/2addr p2, v2

    add-int/2addr p2, v1

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v5

    invoke-virtual {v0, v3, v4}, Landroidx/fragment/app/n;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$f;->b(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;

    goto :goto_0

    :cond_3
    const p2, 0x7f100064

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$f;->a(I)Lcom/google/android/material/tabs/TabLayout$f;

    :goto_0
    return-void

    .line 7
    :goto_1
    iget-object v0, p0, Lm0/b;->d:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/j;

    sget v1, Lxyz/aethersx2/android/j;->e0:I

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$f;->b(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$f;

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lm0/b;->d:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/SaveStateManagerActivity;

    sget v1, Lxyz/aethersx2/android/SaveStateManagerActivity;->y:I

    invoke-virtual {v0}, Lxyz/aethersx2/android/SaveStateManagerActivity;->A()V

    return-void
.end method

.method public final d(Landroidx/preference/Preference;)Z
    .locals 4

    iget p1, p0, Lm0/b;->c:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lm0/b;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/f$f;

    .line 1
    iget-object v1, p1, Lxyz/aethersx2/android/f$f;->k0:Lxyz/aethersx2/android/f;

    .line 2
    iget-object v1, v1, Lxyz/aethersx2/android/f;->f0:Lq3/a2;

    const-string v2, "EmuCore/DiscPath"

    .line 3
    invoke-virtual {v1, v2}, Lq3/a2;->q(Ljava/lang/String;)Z

    .line 4
    invoke-virtual {p1}, Lxyz/aethersx2/android/f$f;->D()V

    return v0

    .line 5
    :pswitch_1
    iget-object p1, p0, Lm0/b;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/EmulationActivity$a;

    .line 6
    iget-object v1, p1, Lxyz/aethersx2/android/EmulationActivity$a;->k0:Lxyz/aethersx2/android/EmulationActivity$b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lxyz/aethersx2/android/EmulationActivity$b;->z(Z)V

    .line 7
    iget-object p1, p1, Lxyz/aethersx2/android/EmulationActivity$a;->l0:Lxyz/aethersx2/android/EmulationActivity;

    invoke-static {p1}, Lxyz/aethersx2/android/EmulationActivity;->A(Lxyz/aethersx2/android/EmulationActivity;)V

    return v0

    .line 8
    :pswitch_2
    iget-object p1, p0, Lm0/b;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/b$j;

    sget-object v1, Lxyz/aethersx2/android/b$j;->t0:[Ljava/lang/String;

    .line 9
    new-instance v1, Landroidx/appcompat/app/d$a;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f10005d

    .line 10
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/d$a;->c(I)Landroidx/appcompat/app/d$a;

    .line 11
    new-instance v2, Lq3/d;

    const/4 v3, 0x3

    invoke-direct {v2, p1, v3}, Lq3/d;-><init>(Ljava/lang/Object;I)V

    const p1, 0x7f100108

    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/d$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 12
    sget-object p1, Lq3/e;->k:Lq3/e;

    const v2, 0x7f100107

    invoke-virtual {v1, v2, p1}, Landroidx/appcompat/app/d$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 13
    invoke-virtual {v1}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v0

    .line 14
    :goto_0
    iget-object p1, p0, Lm0/b;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/j$b;

    sget v1, Lxyz/aethersx2/android/j$b;->m0:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "*/*"

    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.OPENABLE"

    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    iget v2, p1, Lxyz/aethersx2/android/j$b;->k0:I

    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/n;->startActivityForResult(Landroid/content/Intent;I)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lm0/e;ILandroid/os/Bundle;)Z
    .locals 6

    iget-object v0, p0, Lm0/b;->d:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    and-int/2addr p2, v1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1
    :try_start_0
    iget-object p2, p1, Lm0/e;->a:Lm0/e$b;

    check-cast p2, Lm0/e$a;

    invoke-virtual {p2}, Lm0/e$a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object p2, p1, Lm0/e;->a:Lm0/e$b;

    check-cast p2, Lm0/e$a;

    invoke-virtual {p2}, Lm0/e$a;->a()Ljava/lang/Object;

    move-result-object p2

    .line 3
    check-cast p2, Landroid/view/inputmethod/InputContentInfo;

    if-nez p3, :cond_0

    .line 4
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p3, v3

    :goto_0
    const-string v3, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    .line 5
    invoke-virtual {p3, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "InputConnectionCompat"

    const-string p3, "Can\'t insert content from IME; requestPermission() failed"

    .line 6
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 7
    :cond_1
    :goto_1
    new-instance p2, Landroid/content/ClipData;

    .line 8
    iget-object v3, p1, Lm0/e;->a:Lm0/e$b;

    check-cast v3, Lm0/e$a;

    .line 9
    iget-object v3, v3, Lm0/e$a;->a:Landroid/view/inputmethod/InputContentInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputContentInfo;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    .line 10
    new-instance v4, Landroid/content/ClipData$Item;

    .line 11
    iget-object v5, p1, Lm0/e;->a:Lm0/e$b;

    check-cast v5, Lm0/e$a;

    .line 12
    iget-object v5, v5, Lm0/e$a;->a:Landroid/view/inputmethod/InputContentInfo;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputContentInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    .line 13
    invoke-direct {v4, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {p2, v3, v4}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    const/4 v3, 0x2

    .line 14
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_2

    .line 15
    new-instance v4, Lj0/c$a;

    invoke-direct {v4, p2, v3}, Lj0/c$a;-><init>(Landroid/content/ClipData;I)V

    goto :goto_2

    .line 16
    :cond_2
    new-instance v4, Lj0/c$c;

    invoke-direct {v4, p2, v3}, Lj0/c$c;-><init>(Landroid/content/ClipData;I)V

    .line 17
    :goto_2
    iget-object p1, p1, Lm0/e;->a:Lm0/e$b;

    check-cast p1, Lm0/e$a;

    .line 18
    iget-object p1, p1, Lm0/e$a;->a:Landroid/view/inputmethod/InputContentInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getLinkUri()Landroid/net/Uri;

    move-result-object p1

    .line 19
    invoke-interface {v4, p1}, Lj0/c$b;->c(Landroid/net/Uri;)V

    .line 20
    invoke-interface {v4, p3}, Lj0/c$b;->b(Landroid/os/Bundle;)V

    .line 21
    invoke-interface {v4}, Lj0/c$b;->a()Lj0/c;

    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Lj0/a0;->l(Landroid/view/View;Lj0/c;)Lj0/c;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    move v2, v1

    :goto_4
    return v2
.end method
