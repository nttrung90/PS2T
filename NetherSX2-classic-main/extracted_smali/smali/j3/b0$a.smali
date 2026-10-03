.class public abstract Lj3/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lj3/y;
.implements Lm3/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj3/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lj3/b0$a;",
        ">;",
        "Lj3/y;",
        "Lm3/r;"
    }
.end annotation


# instance fields
.field public c:J

.field public d:Ljava/lang/Object;

.field public e:I


# virtual methods
.method public final a(Lm3/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm3/q<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj3/b0$a;->d:Ljava/lang/Object;

    .line 2
    sget-object v1, Ln2/e;->d:Le/p;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iput-object p1, p0, Lj3/b0$a;->d:Ljava/lang/Object;

    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lj3/b0$a;->e:I

    return-void
.end method

.method public final declared-synchronized c()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lj3/b0$a;->d:Ljava/lang/Object;

    .line 2
    sget-object v1, Ln2/e;->d:Le/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v0, v1, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    instance-of v2, v0, Lj3/b0$b;

    if-eqz v2, :cond_1

    check-cast v0, Lj3/b0$b;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    invoke-interface {p0}, Lm3/r;->e()Lm3/q;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-interface {p0}, Lm3/r;->f()I

    move-result v2

    .line 8
    invoke-virtual {v0, v2}, Lm3/q;->d(I)Lm3/r;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :goto_1
    :try_start_3
    monitor-exit v0

    .line 10
    :goto_2
    iput-object v1, p0, Lj3/b0$a;->d:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 12
    :try_start_4
    monitor-exit v0

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lj3/b0$a;

    .line 2
    iget-wide v0, p0, Lj3/b0$a;->c:J

    iget-wide v2, p1, Lj3/b0$a;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final e()Lm3/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm3/q<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lj3/b0$a;->d:Ljava/lang/Object;

    instance-of v1, v0, Lm3/q;

    if-eqz v1, :cond_0

    check-cast v0, Lm3/q;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lj3/b0$a;->e:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Delayed[nanos="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/a;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lj3/b0$a;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
