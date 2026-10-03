.class public final synthetic Landroidx/activity/d;
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

    iput p2, p0, Landroidx/activity/d;->c:I

    iput-object p1, p0, Landroidx/activity/d;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Landroidx/activity/d;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Landroidx/activity/d;->d:Ljava/lang/Object;

    check-cast v0, Landroid/os/Vibrator;

    invoke-static {v0}, Lxyz/aethersx2/android/NativeLibrary;->b(Landroid/os/Vibrator;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/activity/d;->d:Ljava/lang/Object;

    check-cast v0, Lq3/g$a$a;

    .line 1
    iget-boolean v1, v0, Lq3/g$a$a;->d:Z

    if-nez v1, :cond_0

    .line 2
    iget-object v1, v0, Lq3/g$a$a;->a:Lq3/g$a;

    invoke-virtual {v1}, Landroidx/fragment/app/n;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f090107

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f10001d

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object v0, v0, Lq3/g$a$a;->a:Lq3/g$a;

    .line 4
    invoke-virtual {v0, v2}, Lq3/g$a;->z(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Lq3/g$a$a;->a:Lq3/g$a;

    .line 6
    iget-object v1, v1, Lq3/g$a;->s0:Lq3/g;

    .line 7
    sget v2, Lq3/g;->n0:I

    .line 8
    invoke-virtual {v1}, Lq3/g;->C()V

    .line 9
    iget-object v0, v0, Lq3/g$a$a;->a:Lq3/g$a;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->dismiss()V

    :goto_0
    return-void

    .line 10
    :pswitch_2
    iget-object v0, p0, Landroidx/activity/d;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/j$b;

    .line 11
    iget-object v3, v0, Landroidx/emoji2/text/j$b;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 12
    :try_start_0
    iget-object v4, v0, Landroidx/emoji2/text/j$b;->h:Landroidx/emoji2/text/d$h;

    if-nez v4, :cond_1

    .line 13
    monitor-exit v3

    goto/16 :goto_2

    .line 14
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 15
    :try_start_1
    invoke-virtual {v0}, Landroidx/emoji2/text/j$b;->d()Lg0/m;

    move-result-object v3

    .line 16
    iget v4, v3, Lg0/m;->e:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 17
    iget-object v5, v0, Landroidx/emoji2/text/j$b;->d:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 18
    :try_start_2
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :cond_2
    :goto_1
    if-nez v4, :cond_5

    :try_start_4
    const-string v4, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    .line 19
    sget v5, Lf0/b;->a:I

    .line 20
    invoke-static {v4}, Lf0/b$a;->a(Ljava/lang/String;)V

    .line 21
    iget-object v4, v0, Landroidx/emoji2/text/j$b;->c:Landroidx/emoji2/text/j$a;

    iget-object v5, v0, Landroidx/emoji2/text/j$b;->a:Landroid/content/Context;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v2, [Lg0/m;

    aput-object v3, v2, v1

    .line 22
    sget-object v4, Lc0/e;->a:Lc0/j;

    invoke-virtual {v4, v5, v2, v1}, Lc0/j;->b(Landroid/content/Context;[Lg0/m;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 23
    iget-object v2, v0, Landroidx/emoji2/text/j$b;->a:Landroid/content/Context;

    .line 24
    iget-object v3, v3, Lg0/m;->a:Landroid/net/Uri;

    .line 25
    invoke-static {v2, v3}, Lc0/k;->e(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    :try_start_5
    const-string v3, "EmojiCompat.MetadataRepo.create"

    .line 26
    invoke-static {v3}, Lf0/b$a;->a(Ljava/lang/String;)V

    .line 27
    new-instance v3, Landroidx/emoji2/text/m;

    invoke-static {v2}, Landroidx/emoji2/text/l;->a(Ljava/nio/ByteBuffer;)Lv0/b;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Landroidx/emoji2/text/m;-><init>(Landroid/graphics/Typeface;Lv0/b;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 28
    :try_start_6
    invoke-static {}, Lf0/b$a;->b()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 29
    :try_start_7
    invoke-static {}, Lf0/b$a;->b()V

    .line 30
    iget-object v1, v0, Landroidx/emoji2/text/j$b;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 31
    :try_start_8
    iget-object v2, v0, Landroidx/emoji2/text/j$b;->h:Landroidx/emoji2/text/d$h;

    if-eqz v2, :cond_3

    .line 32
    invoke-virtual {v2, v3}, Landroidx/emoji2/text/d$h;->b(Landroidx/emoji2/text/m;)V

    .line 33
    :cond_3
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 34
    :try_start_9
    invoke-virtual {v0}, Landroidx/emoji2/text/j$b;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_2

    :catchall_1
    move-exception v2

    .line 35
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_2
    move-exception v1

    .line 36
    :try_start_c
    sget v2, Lf0/b;->a:I

    .line 37
    invoke-static {}, Lf0/b$a;->b()V

    .line 38
    throw v1

    .line 39
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to open file."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v1

    .line 40
    :try_start_d
    sget v2, Lf0/b;->a:I

    .line 41
    invoke-static {}, Lf0/b$a;->b()V

    .line 42
    throw v1

    .line 43
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchFonts result is not OK. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v1

    .line 44
    iget-object v2, v0, Landroidx/emoji2/text/j$b;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 45
    :try_start_e
    iget-object v3, v0, Landroidx/emoji2/text/j$b;->h:Landroidx/emoji2/text/d$h;

    if-eqz v3, :cond_6

    .line 46
    invoke-virtual {v3, v1}, Landroidx/emoji2/text/d$h;->a(Ljava/lang/Throwable;)V

    .line 47
    :cond_6
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 48
    invoke-virtual {v0}, Landroidx/emoji2/text/j$b;->b()V

    :goto_2
    return-void

    :catchall_5
    move-exception v0

    .line 49
    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v0

    :catchall_6
    move-exception v0

    .line 50
    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v0

    .line 51
    :pswitch_3
    iget-object v0, p0, Landroidx/activity/d;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->q()V

    return-void

    :pswitch_4
    iget-object v0, p0, Landroidx/activity/d;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 52
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    .line 53
    :goto_3
    iget-object v0, p0, Landroidx/activity/d;->d:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/k;

    sget-object v2, Lxyz/aethersx2/android/k;->C:[Ljava/lang/String;

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 55
    iput-boolean v1, v0, Lxyz/aethersx2/android/k;->B:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
