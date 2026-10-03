.class public final Lk/a;
.super Landroidx/fragment/app/q;
.source "SourceFile"


# static fields
.field public static volatile c:Lk/a;


# instance fields
.field public a:Lk/b;

.field public b:Lk/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/q;-><init>()V

    .line 2
    new-instance v0, Lk/b;

    invoke-direct {v0}, Lk/b;-><init>()V

    iput-object v0, p0, Lk/a;->b:Lk/b;

    .line 3
    iput-object v0, p0, Lk/a;->a:Lk/b;

    return-void
.end method

.method public static u()Lk/a;
    .locals 2

    .line 1
    sget-object v0, Lk/a;->c:Lk/a;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lk/a;->c:Lk/a;

    return-object v0

    .line 3
    :cond_0
    const-class v0, Lk/a;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lk/a;->c:Lk/a;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lk/a;

    invoke-direct {v1}, Lk/a;-><init>()V

    sput-object v1, Lk/a;->c:Lk/a;

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object v0, Lk/a;->c:Lk/a;

    return-object v0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final v()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a;->a:Lk/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
