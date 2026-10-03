.class public final synthetic Landroidx/activity/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/activity/g;->c:I

    iput-object p1, p0, Landroidx/activity/g;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Landroidx/activity/g;->c:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, p0, Landroidx/activity/g;->d:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/LeaderboardListFragment;

    .line 1
    iget-object v2, v0, Lxyz/aethersx2/android/LeaderboardListFragment;->y0:Lxyz/aethersx2/android/Leaderboard;

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v2}, Lxyz/aethersx2/android/Leaderboard;->getId()I

    move-result v2

    invoke-static {v2}, Lxyz/aethersx2/android/NativeLibrary;->getLeaderboardEntryList(I)[Lxyz/aethersx2/android/Leaderboard$Entry;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3
    iget-object v1, v0, Lxyz/aethersx2/android/LeaderboardListFragment;->w0:Landroid/os/Handler;

    iget-object v0, v0, Lxyz/aethersx2/android/LeaderboardListFragment;->x0:Landroidx/activity/g;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object v3, v0, Lxyz/aethersx2/android/LeaderboardListFragment;->s0:Lr3/c;

    .line 5
    iget-object v3, v3, Lr3/c;->b:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/RelativeLayout;

    const v4, 0x7f0901e4

    .line 6
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    new-instance v1, Lxyz/aethersx2/android/LeaderboardListFragment$b;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lxyz/aethersx2/android/LeaderboardListFragment;->y0:Lxyz/aethersx2/android/Leaderboard;

    invoke-virtual {v4}, Lxyz/aethersx2/android/Leaderboard;->isTimeType()Z

    move-result v4

    invoke-direct {v1, v3, v2, v4}, Lxyz/aethersx2/android/LeaderboardListFragment$b;-><init>(Landroid/content/Context;[Lxyz/aethersx2/android/Leaderboard$Entry;Z)V

    .line 8
    iget-object v0, v0, Lxyz/aethersx2/android/LeaderboardListFragment;->s0:Lr3/c;

    iget-object v0, v0, Lr3/c;->f:Landroid/view/View;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    :goto_0
    return-void

    .line 9
    :pswitch_1
    iget-object v0, p0, Landroidx/activity/g;->d:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/e;

    .line 10
    iget-object v0, v0, Lxyz/aethersx2/android/e;->d0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    .line 11
    :pswitch_2
    iget-object v0, p0, Landroidx/activity/g;->d:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/c;

    .line 12
    iget-object v0, v0, Lxyz/aethersx2/android/c;->d0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    .line 13
    :pswitch_3
    iget-object v0, p0, Landroidx/activity/g;->d:Ljava/lang/Object;

    check-cast v0, Lq3/k0$c;

    .line 14
    invoke-virtual {v0}, Lq3/k0$c;->a()V

    return-void

    .line 15
    :pswitch_4
    iget-object v0, p0, Landroidx/activity/g;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/j$b;

    invoke-virtual {v0}, Landroidx/emoji2/text/j$b;->c()V

    return-void

    :pswitch_5
    iget-object v0, p0, Landroidx/activity/g;->d:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    sget v3, Lz/a;->b:I

    .line 16
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lz/f;->a:Ljava/lang/Class;

    .line 17
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x1

    const/16 v5, 0x1c

    if-lt v3, v5, :cond_2

    .line 18
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    goto/16 :goto_2

    .line 19
    :cond_2
    invoke-static {}, Lz/f;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lz/f;->f:Ljava/lang/reflect/Method;

    if-nez v3, :cond_3

    goto/16 :goto_3

    .line 20
    :cond_3
    sget-object v3, Lz/f;->e:Ljava/lang/reflect/Method;

    if-nez v3, :cond_4

    sget-object v3, Lz/f;->d:Ljava/lang/reflect/Method;

    if-nez v3, :cond_4

    goto/16 :goto_3

    .line 21
    :cond_4
    :try_start_0
    sget-object v3, Lz/f;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_3

    .line 22
    :cond_5
    sget-object v5, Lz/f;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_3

    .line 23
    :cond_6
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    .line 24
    new-instance v7, Lz/f$a;

    invoke-direct {v7, v0}, Lz/f$a;-><init>(Landroid/app/Activity;)V

    .line 25
    invoke-virtual {v6, v7}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 26
    sget-object v8, Lz/f;->g:Landroid/os/Handler;

    new-instance v9, Lz/c;

    invoke-direct {v9, v7, v3}, Lz/c;-><init>(Lz/f$a;Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    invoke-static {}, Lz/f;->a()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 28
    sget-object v9, Lz/f;->f:Ljava/lang/reflect/Method;

    const/16 v10, 0x9

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v2

    const/4 v3, 0x0

    aput-object v3, v10, v4

    const/4 v11, 0x2

    aput-object v3, v10, v11

    const/4 v11, 0x3

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v12, v10, v11

    const/4 v11, 0x5

    aput-object v3, v10, v11

    const/4 v11, 0x6

    aput-object v3, v10, v11

    const/4 v3, 0x7

    aput-object v12, v10, v3

    aput-object v12, v10, v1

    .line 30
    invoke-virtual {v9, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 31
    :cond_7
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :goto_1
    :try_start_2
    new-instance v1, Lz/d;

    invoke-direct {v1, v6, v7}, Lz/d;-><init>(Landroid/app/Application;Lz/f$a;)V

    invoke-virtual {v8, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    move v2, v4

    goto :goto_3

    :catchall_0
    move-exception v1

    sget-object v3, Lz/f;->g:Landroid/os/Handler;

    new-instance v4, Lz/d;

    invoke-direct {v4, v6, v7}, Lz/d;-><init>(Landroid/app/Application;Lz/f$a;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_3
    if-nez v2, :cond_8

    .line 34
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    :cond_8
    return-void

    .line 35
    :pswitch_6
    iget-object v0, p0, Landroidx/activity/g;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/h;

    invoke-static {v0}, Landroidx/activity/h;->a(Landroidx/activity/h;)V

    return-void

    :goto_4
    iget-object v0, p0, Landroidx/activity/g;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lxyz/aethersx2/android/NativeLibrary;->c(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
