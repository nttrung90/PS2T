.class public final Lm3/d;
.super Lj3/m;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lj3/t;


# instance fields
.field public final d:Lj3/m;

.field public final e:I

.field public final synthetic f:Lj3/t;

.field public final g:Lm3/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm3/g<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/Object;

.field private volatile runningWorkers:I


# direct methods
.method public constructor <init>(Lj3/m;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj3/m;-><init>()V

    .line 2
    iput-object p1, p0, Lm3/d;->d:Lj3/m;

    .line 3
    iput p2, p0, Lm3/d;->e:I

    .line 4
    instance-of p2, p1, Lj3/t;

    if-eqz p2, :cond_0

    check-cast p1, Lj3/t;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 5
    sget-object p1, Lj3/s;->a:Lj3/t;

    .line 6
    :cond_1
    iput-object p1, p0, Lm3/d;->f:Lj3/t;

    .line 7
    new-instance p1, Lm3/g;

    invoke-direct {p1}, Lm3/g;-><init>()V

    iput-object p1, p0, Lm3/d;->g:Lm3/g;

    .line 8
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3/d;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d(Lw2/f;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lm3/d;->g:Lm3/g;

    invoke-virtual {p1, p2}, Lm3/g;->a(Ljava/lang/Object;)Z

    .line 2
    iget p1, p0, Lm3/d;->runningWorkers:I

    iget p2, p0, Lm3/d;->e:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p1, p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-object p1, p0, Lm3/d;->h:Ljava/lang/Object;

    .line 4
    monitor-enter p1

    .line 5
    :try_start_0
    iget p2, p0, Lm3/d;->runningWorkers:I

    iget v2, p0, Lm3/d;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p2, v2, :cond_2

    monitor-exit p1

    move v0, v1

    goto :goto_1

    .line 6
    :cond_2
    :try_start_1
    iget p2, p0, Lm3/d;->runningWorkers:I

    add-int/2addr p2, v0

    iput p2, p0, Lm3/d;->runningWorkers:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p1

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    iget-object p1, p0, Lm3/d;->d:Lj3/m;

    invoke-virtual {p1, p0, p0}, Lj3/m;->d(Lw2/f;Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :catchall_0
    move-exception p2

    .line 9
    monitor-exit p1

    throw p2
.end method

.method public final run()V
    .locals 3

    :goto_0
    const/4 v0, 0x0

    .line 1
    :cond_0
    iget-object v1, p0, Lm3/d;->g:Lm3/g;

    invoke-virtual {v1}, Lm3/g;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 2
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 3
    sget-object v2, Lw2/g;->c:Lw2/g;

    invoke-static {v2, v1}, Lj3/q;->i(Lw2/f;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lm3/d;->d:Lj3/m;

    invoke-virtual {v1}, Lj3/m;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, p0, Lm3/d;->d:Lj3/m;

    invoke-virtual {v0, p0, p0}, Lj3/m;->d(Lw2/f;Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lm3/d;->h:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_1
    iget v1, p0, Lm3/d;->runningWorkers:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lm3/d;->runningWorkers:I

    .line 9
    iget-object v1, p0, Lm3/d;->g:Lm3/g;

    invoke-virtual {v1}, Lm3/g;->c()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    .line 10
    :cond_2
    :try_start_2
    iget v1, p0, Lm3/d;->runningWorkers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lm3/d;->runningWorkers:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method
