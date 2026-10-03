.class public final synthetic Lq3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lq3/l;->c:I

    iput-object p1, p0, Lq3/l;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget p1, p0, Lq3/l;->c:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lq3/l;->d:Ljava/lang/Object;

    check-cast p1, Lq3/c1;

    sget v0, Lq3/c1;->y0:I

    .line 1
    invoke-virtual {p1}, Lq3/c1;->G()V

    return-void

    .line 2
    :pswitch_1
    iget-object p1, p0, Lq3/l;->d:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6
    :goto_0
    iget-object p1, p0, Lq3/l;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/MainActivity;

    sget v0, Lxyz/aethersx2/android/MainActivity;->K:I

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
