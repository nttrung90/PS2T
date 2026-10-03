.class public final synthetic Lq3/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxyz/aethersx2/android/b$e;
.implements Landroidx/preference/Preference$e;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;
.implements Lcom/google/android/material/navigation/NavigationView$a;
.implements Landroidx/appcompat/widget/s0$a;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lq3/u;->c:I

    iput-object p1, p0, Lq3/u;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lq3/u;->d:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/ControllerSettingsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public final c()V
    .locals 4

    iget v0, p0, Lq3/u;->c:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lq3/u;->d:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/c;

    .line 1
    iget-object v2, v0, Lxyz/aethersx2/android/c;->c0:Lxyz/aethersx2/android/MainActivity;

    .line 2
    iget-object v2, v2, Lxyz/aethersx2/android/MainActivity;->A:Lxyz/aethersx2/android/d;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->getActivity()Landroidx/fragment/app/o;

    invoke-virtual {v2, v1}, Lxyz/aethersx2/android/d;->d(Z)V

    .line 4
    iget-object v1, v0, Lxyz/aethersx2/android/c;->d0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v2, Landroidx/activity/g;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Landroidx/activity/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 5
    :goto_0
    iget-object v0, p0, Lq3/u;->d:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/e;

    .line 6
    iget-object v2, v0, Lxyz/aethersx2/android/e;->c0:Lxyz/aethersx2/android/MainActivity;

    .line 7
    iget-object v2, v2, Lxyz/aethersx2/android/MainActivity;->A:Lxyz/aethersx2/android/d;

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/n;->getActivity()Landroidx/fragment/app/o;

    invoke-virtual {v2, v1}, Lxyz/aethersx2/android/d;->d(Z)V

    .line 9
    iget-object v1, v0, Lxyz/aethersx2/android/e;->d0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v2, Landroidx/activity/g;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Landroidx/activity/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroidx/preference/Preference;)Z
    .locals 5

    iget p1, p0, Lq3/u;->c:I

    const-string v0, "android.intent.category.OPENABLE"

    const-string v1, "*/*"

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    iget-object p1, p0, Lq3/u;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/f$f;

    sget v3, Lxyz/aethersx2/android/f$f;->l0:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.extra.LOCAL_ONLY"

    .line 2
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v0, 0x40

    .line 6
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7
    :try_start_0
    invoke-virtual {p1, v3, v2}, Landroidx/fragment/app/n;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Failed to start ACTION_OPEN_DOCUMENT intent."

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v2

    .line 10
    :sswitch_1
    iget-object p1, p0, Lq3/u;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/EmulationActivity$a;

    .line 11
    iget-object v0, p1, Lxyz/aethersx2/android/EmulationActivity$a;->k0:Lxyz/aethersx2/android/EmulationActivity$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lxyz/aethersx2/android/EmulationActivity$b;->z(Z)V

    .line 12
    iget-object p1, p1, Lxyz/aethersx2/android/EmulationActivity$a;->l0:Lxyz/aethersx2/android/EmulationActivity;

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->getLeaderboardList()[Lxyz/aethersx2/android/Leaderboard;

    move-result-object v0

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p1}, Lxyz/aethersx2/android/EmulationActivity;->K()V

    goto :goto_1

    .line 16
    :cond_0
    new-instance v3, Lxyz/aethersx2/android/LeaderboardListFragment;

    invoke-direct {v3, p1, v0}, Lxyz/aethersx2/android/LeaderboardListFragment;-><init>(Landroid/content/Context;[Lxyz/aethersx2/android/Leaderboard;)V

    .line 17
    invoke-virtual {p1}, Landroidx/fragment/app/o;->v()Landroidx/fragment/app/y;

    move-result-object v0

    const-string v4, "fragment_leaderboard_list"

    invoke-virtual {v3, v0, v4}, Landroidx/fragment/app/m;->show(Landroidx/fragment/app/y;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lq3/i1;

    invoke-direct {v0, p1, v1}, Lq3/i1;-><init>(Lxyz/aethersx2/android/EmulationActivity;I)V

    invoke-virtual {v3, v0}, Lxyz/aethersx2/android/LeaderboardListFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_1
    return v2

    .line 19
    :goto_2
    iget-object p1, p0, Lq3/u;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/j$c;

    sget-object v3, Lxyz/aethersx2/android/j$c;->k0:[Lxyz/aethersx2/android/MemoryCardNamePreference;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Choose Memory Card Image"

    .line 23
    invoke-static {v3, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/n;->startActivityForResult(Landroid/content/Intent;I)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    iget-object v0, p0, Lq3/u;->d:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/h$c;

    sget v1, Lxyz/aethersx2/android/h$c;->B:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v1, 0x1

    const v2, 0x7f090163

    if-ne p1, v2, :cond_0

    .line 2
    iget-object p1, v0, Lxyz/aethersx2/android/h$c;->z:Lxyz/aethersx2/android/h;

    iget-object v0, v0, Lxyz/aethersx2/android/h$c;->A:Lxyz/aethersx2/android/i;

    invoke-static {p1, v0}, Lxyz/aethersx2/android/h;->z(Lxyz/aethersx2/android/h;Lxyz/aethersx2/android/i;)V

    goto :goto_0

    :cond_0
    const v2, 0x7f0900da

    if-ne p1, v2, :cond_1

    .line 3
    new-instance p1, Landroidx/appcompat/app/d$a;

    iget-object v2, v0, Lxyz/aethersx2/android/h$c;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f10004a

    .line 4
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/d$a;->j(I)Landroidx/appcompat/app/d$a;

    const v2, 0x7f100049

    .line 5
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/d$a;->c(I)Landroidx/appcompat/app/d$a;

    const v2, 0x7f10008b

    .line 6
    new-instance v3, Lq3/j;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, Lq3/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/app/d$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    const v0, 0x7f100087

    .line 7
    sget-object v2, Lq3/k;->l:Lq3/k;

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/d$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
