.class public final synthetic Landroidx/emoji2/text/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Landroidx/emoji2/text/e;->c:I

    iput-object p1, p0, Landroidx/emoji2/text/e;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/emoji2/text/e;->e:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/emoji2/text/e;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Landroidx/emoji2/text/e;->c:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Landroidx/emoji2/text/e;->d:Ljava/lang/Object;

    check-cast v0, Lq3/y0;

    iget-object v1, p0, Landroidx/emoji2/text/e;->e:Ljava/lang/Object;

    check-cast v1, Lxyz/aethersx2/android/AndroidProgressCallback;

    sget v2, Lq3/y0;->u0:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    :try_start_0
    invoke-virtual {v1}, Lxyz/aethersx2/android/AndroidProgressCallback;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    iget-object v1, v0, Lq3/y0;->t0:Lxyz/aethersx2/android/d;

    .line 3
    iget-object v2, v1, Lxyz/aethersx2/android/d;->e:Landroid/util/LruCache;

    monitor-enter v2

    .line 4
    :try_start_1
    iget-object v1, v1, Lxyz/aethersx2/android/d;->e:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    iget-object v0, v0, Lq3/y0;->t0:Lxyz/aethersx2/android/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lxyz/aethersx2/android/d;->d(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 8
    :pswitch_1
    iget-object v0, p0, Landroidx/emoji2/text/e;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lq3/k0$c;

    iget-object v0, p0, Landroidx/emoji2/text/e;->e:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    iget-object v0, p0, Landroidx/emoji2/text/e;->f:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 9
    invoke-virtual/range {v1 .. v6}, Lq3/k0$c;->b(Landroid/app/Activity;Landroid/net/Uri;IZZ)V

    return-void

    .line 10
    :pswitch_2
    iget-object v0, p0, Landroidx/emoji2/text/e;->d:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/AndroidProgressCallback;

    iget-object v1, p0, Landroidx/emoji2/text/e;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroidx/emoji2/text/e;->f:Ljava/lang/Object;

    .line 11
    new-instance v3, Landroidx/appcompat/app/d$a;

    iget-object v4, v0, Lxyz/aethersx2/android/AndroidProgressCallback;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    .line 12
    iget-object v4, v3, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    const-string v5, "Error"

    iput-object v5, v4, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    .line 13
    iput-object v1, v4, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    .line 14
    iget-object v0, v0, Lxyz/aethersx2/android/AndroidProgressCallback;->a:Landroid/app/Activity;

    const v1, 0x7f100036

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lq3/k;->d:Lq3/k;

    invoke-virtual {v3, v0, v1}, Landroidx/appcompat/app/d$a;->h(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    new-instance v0, Lq3/m;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lq3/m;-><init>(Ljava/lang/Object;I)V

    .line 16
    iget-object v1, v3, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$b;->n:Landroid/content/DialogInterface$OnDismissListener;

    .line 17
    invoke-virtual {v3}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 19
    :pswitch_3
    iget-object v0, p0, Landroidx/emoji2/text/e;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/EmojiCompatInitializer$b;

    iget-object v1, p0, Landroidx/emoji2/text/e;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/emoji2/text/d$h;

    iget-object v2, p0, Landroidx/emoji2/text/e;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :try_start_3
    iget-object v0, v0, Landroidx/emoji2/text/EmojiCompatInitializer$b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/emoji2/text/c;->a(Landroid/content/Context;)Landroidx/emoji2/text/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v3, v0, Landroidx/emoji2/text/d$c;->a:Landroidx/emoji2/text/d$g;

    .line 22
    check-cast v3, Landroidx/emoji2/text/j$b;

    .line 23
    iget-object v4, v3, Landroidx/emoji2/text/j$b;->d:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 24
    :try_start_4
    iput-object v2, v3, Landroidx/emoji2/text/j$b;->f:Ljava/util/concurrent/Executor;

    .line 25
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 26
    :try_start_5
    iget-object v0, v0, Landroidx/emoji2/text/d$c;->a:Landroidx/emoji2/text/d$g;

    .line 27
    new-instance v3, Landroidx/emoji2/text/f;

    invoke-direct {v3, v1, v2}, Landroidx/emoji2/text/f;-><init>(Landroidx/emoji2/text/d$h;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-interface {v0, v3}, Landroidx/emoji2/text/d$g;->a(Landroidx/emoji2/text/d$h;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 28
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "EmojiCompat font provider not available on this device."

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    .line 30
    invoke-virtual {v1, v0}, Landroidx/emoji2/text/d$h;->a(Ljava/lang/Throwable;)V

    .line 31
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_0
    return-void

    .line 32
    :goto_1
    iget-object v0, p0, Landroidx/emoji2/text/e;->d:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/d;

    iget-object v1, p0, Landroidx/emoji2/text/e;->e:Ljava/lang/Object;

    check-cast v1, Lxyz/aethersx2/android/AndroidProgressCallback;

    iget-object v2, p0, Landroidx/emoji2/text/e;->f:Ljava/lang/Object;

    check-cast v2, [Lxyz/aethersx2/android/GameListEntry;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :try_start_8
    invoke-virtual {v1}, Lxyz/aethersx2/android/AndroidProgressCallback;->dismiss()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v3, "GameList"

    const-string v4, "Exception dismissing refresh progress"

    .line 34
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    :goto_2
    iput-object v2, v0, Lxyz/aethersx2/android/d;->b:[Lxyz/aethersx2/android/GameListEntry;

    .line 37
    invoke-virtual {v0}, Lxyz/aethersx2/android/d;->f()V

    .line 38
    invoke-virtual {v0}, Lxyz/aethersx2/android/d;->b()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
