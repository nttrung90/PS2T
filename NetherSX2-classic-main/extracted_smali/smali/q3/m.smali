.class public final synthetic Lq3/m;
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

    iput p2, p0, Lq3/m;->c:I

    iput-object p1, p0, Lq3/m;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget p1, p0, Lq3/m;->c:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lq3/m;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/AndroidProgressCallback$a;

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4
    :goto_0
    iget-object p1, p0, Lq3/m;->d:Ljava/lang/Object;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 7
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
