.class public Le/n;
.super Landroidx/fragment/app/m;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    new-instance p1, Le/m;

    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/m;->getTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Le/m;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public final setupDialog(Landroid/app/Dialog;I)V
    .locals 2

    .line 1
    instance-of v0, p1, Le/m;

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Le/m;

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x18

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 4
    :cond_1
    invoke-virtual {v0}, Le/m;->e()Z

    goto :goto_0

    .line 5
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/m;->setupDialog(Landroid/app/Dialog;I)V

    :goto_0
    return-void
.end method
