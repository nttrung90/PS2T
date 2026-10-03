.class public Lj3/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj3/j0;
.implements Lj3/h;
.implements Lj3/s0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj3/n0$b;,
        Lj3/n0$a;
    }
.end annotation


# static fields
.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle:Ljava/lang/Object;

.field private volatile synthetic _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lj3/n0;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lj3/n0;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    :goto_0
    invoke-virtual {p0}, Lj3/n0;->w()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0, p1}, Lj3/n0;->I(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    sget-object v1, Lv/d;->G:Le/p;

    if-ne v0, v1, :cond_2

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    instance-of v2, p1, Lj3/j;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast p1, Lj3/j;

    goto :goto_1

    :cond_0
    move-object p1, v3

    :goto_1
    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p1, Lj3/j;->a:Ljava/lang/Throwable;

    .line 7
    :goto_2
    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_2
    sget-object v1, Lv/d;->I:Le/p;

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final C(Lm3/f;)Lj3/g;
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p1}, Lm3/f;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lm3/f;->j()Lm3/f;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lm3/f;->i()Lm3/f;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lm3/f;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    instance-of v0, p1, Lj3/g;

    if-eqz v0, :cond_2

    check-cast p1, Lj3/g;

    return-object p1

    .line 5
    :cond_2
    instance-of v0, p1, Lj3/p0;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final D(Lj3/p0;Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lm3/f;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm3/f;

    const/4 v1, 0x0

    move-object v2, v1

    .line 2
    :goto_0
    invoke-static {v0, p1}, Lv/d;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3
    instance-of v3, v0, Lj3/l0;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lj3/m0;

    .line 4
    :try_start_0
    invoke-virtual {v3, p2}, Lj3/l;->m(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    if-nez v2, :cond_0

    move-object v5, v1

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v2, v4}, Lj3/q;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object v5, v2

    :goto_1
    if-nez v5, :cond_1

    .line 6
    new-instance v2, Lu2/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in completion handler "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lu2/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_1
    :goto_2
    invoke-virtual {v0}, Lm3/f;->i()Lm3/f;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    goto :goto_3

    .line 8
    :cond_3
    invoke-virtual {p0, v2}, Lj3/n0;->y(Ljava/lang/Throwable;)V

    .line 9
    :goto_3
    invoke-virtual {p0, p2}, Lj3/n0;->q(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public E(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final F(Lj3/m0;)V
    .locals 5

    .line 1
    new-instance v0, Lj3/p0;

    invoke-direct {v0}, Lj3/p0;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v1, Lm3/f;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    sget-object v1, Lm3/f;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lm3/f;->h()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v1, p1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    sget-object v1, Lm3/f;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    invoke-virtual {v1, p1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_2

    :goto_0
    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lm3/f;->g(Lm3/f;)V

    .line 7
    :goto_1
    invoke-virtual {p1}, Lm3/f;->i()Lm3/f;

    move-result-object v1

    .line 8
    sget-object v2, Lj3/n0;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_4
    invoke-virtual {v2, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_4

    :goto_2
    return-void
.end method

.method public final G(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p1, Lj3/n0$b;

    const-string v1, "Active"

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lj3/n0$b;

    invoke-virtual {p1}, Lj3/n0$b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Cancelling"

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lj3/n0$b;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string v1, "Completing"

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Lj3/f0;

    if-eqz v0, :cond_3

    check-cast p1, Lj3/f0;

    invoke-interface {p1}, Lj3/f0;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "New"

    goto :goto_0

    .line 5
    :cond_3
    instance-of p1, p1, Lj3/j;

    if-eqz p1, :cond_4

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_4
    const-string v1, "Completed"

    :cond_5
    :goto_0
    return-object v1
.end method

.method public final H(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 2
    new-instance v0, Lj3/k0;

    if-nez p2, :cond_1

    .line 3
    invoke-virtual {p0}, Lj3/n0;->r()Ljava/lang/String;

    move-result-object p2

    .line 4
    :cond_1
    invoke-direct {v0, p2, p1, p0}, Lj3/k0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lj3/j0;)V

    :cond_2
    return-object v0
.end method

.method public final I(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lj3/f0;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lv/d;->G:Le/p;

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Lj3/z;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    instance-of v0, p1, Lj3/m0;

    if-eqz v0, :cond_7

    :cond_1
    instance-of v0, p1, Lj3/g;

    if-nez v0, :cond_7

    instance-of v0, p2, Lj3/j;

    if-nez v0, :cond_7

    .line 4
    move-object v0, p1

    check-cast v0, Lj3/f0;

    .line 5
    sget-object v3, Lj3/n0;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 6
    instance-of p1, p2, Lj3/f0;

    if-eqz p1, :cond_2

    new-instance p1, Lj3/g0;

    move-object v4, p2

    check-cast v4, Lj3/f0;

    invoke-direct {p1, v4}, Lj3/g0;-><init>(Lj3/f0;)V

    goto :goto_0

    :cond_2
    move-object p1, p2

    .line 7
    :cond_3
    :goto_0
    invoke-virtual {v3, p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move p1, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v0, :cond_3

    move p1, v2

    :goto_1
    if-nez p1, :cond_5

    move v1, v2

    goto :goto_2

    .line 8
    :cond_5
    invoke-virtual {p0, p2}, Lj3/n0;->E(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, v0, p2}, Lj3/n0;->s(Lj3/f0;Ljava/lang/Object;)V

    :goto_2
    if-eqz v1, :cond_6

    return-object p2

    .line 10
    :cond_6
    sget-object p1, Lv/d;->I:Le/p;

    return-object p1

    .line 11
    :cond_7
    check-cast p1, Lj3/f0;

    .line 12
    invoke-virtual {p0, p1}, Lj3/n0;->v(Lj3/f0;)Lj3/p0;

    move-result-object v0

    if-nez v0, :cond_8

    .line 13
    sget-object p1, Lv/d;->I:Le/p;

    goto/16 :goto_b

    .line 14
    :cond_8
    instance-of v3, p1, Lj3/n0$b;

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    move-object v3, p1

    check-cast v3, Lj3/n0$b;

    goto :goto_3

    :cond_9
    move-object v3, v4

    :goto_3
    if-nez v3, :cond_a

    new-instance v3, Lj3/n0$b;

    invoke-direct {v3, v0, v4}, Lj3/n0$b;-><init>(Lj3/p0;Ljava/lang/Throwable;)V

    .line 15
    :cond_a
    monitor-enter v3

    .line 16
    :try_start_0
    invoke-virtual {v3}, Lj3/n0$b;->g()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 17
    sget-object p1, Lv/d;->G:Le/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v3

    goto/16 :goto_b

    .line 19
    :cond_b
    :try_start_1
    invoke-virtual {v3}, Lj3/n0$b;->j()V

    if-eq v3, p1, :cond_e

    .line 20
    sget-object v5, Lj3/n0;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_c
    invoke-virtual {v5, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v2, v1

    goto :goto_4

    :cond_d
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p1, :cond_c

    :goto_4
    if-nez v2, :cond_e

    .line 21
    sget-object p1, Lv/d;->I:Le/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    monitor-exit v3

    goto :goto_b

    .line 23
    :cond_e
    :try_start_2
    invoke-virtual {v3}, Lj3/n0$b;->f()Z

    move-result v2

    .line 24
    instance-of v5, p2, Lj3/j;

    if-eqz v5, :cond_f

    move-object v5, p2

    check-cast v5, Lj3/j;

    goto :goto_5

    :cond_f
    move-object v5, v4

    :goto_5
    if-nez v5, :cond_10

    goto :goto_6

    :cond_10
    iget-object v5, v5, Lj3/j;->a:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Lj3/n0$b;->c(Ljava/lang/Throwable;)V

    .line 25
    :goto_6
    invoke-virtual {v3}, Lj3/n0$b;->e()Ljava/lang/Throwable;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    xor-int/2addr v1, v2

    if-eqz v1, :cond_11

    goto :goto_7

    :cond_11
    move-object v5, v4

    .line 26
    :goto_7
    monitor-exit v3

    if-nez v5, :cond_12

    goto :goto_8

    .line 27
    :cond_12
    invoke-virtual {p0, v0, v5}, Lj3/n0;->D(Lj3/p0;Ljava/lang/Throwable;)V

    .line 28
    :goto_8
    instance-of v0, p1, Lj3/g;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lj3/g;

    goto :goto_9

    :cond_13
    move-object v0, v4

    :goto_9
    if-nez v0, :cond_15

    invoke-interface {p1}, Lj3/f0;->b()Lj3/p0;

    move-result-object p1

    if-nez p1, :cond_14

    goto :goto_a

    :cond_14
    invoke-virtual {p0, p1}, Lj3/n0;->C(Lm3/f;)Lj3/g;

    move-result-object v4

    goto :goto_a

    :cond_15
    move-object v4, v0

    :goto_a
    if-eqz v4, :cond_16

    .line 29
    invoke-virtual {p0, v3, v4, p2}, Lj3/n0;->J(Lj3/n0$b;Lj3/g;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 30
    sget-object p1, Lv/d;->H:Le/p;

    goto :goto_b

    .line 31
    :cond_16
    invoke-virtual {p0, v3, p2}, Lj3/n0;->u(Lj3/n0$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_b
    return-object p1

    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v3

    throw p1
.end method

.method public final J(Lj3/n0$b;Lj3/g;Ljava/lang/Object;)Z
    .locals 6

    .line 1
    :cond_0
    iget-object v0, p2, Lj3/g;->g:Lj3/h;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    new-instance v3, Lj3/n0$a;

    invoke-direct {v3, p0, p1, p2, p3}, Lj3/n0$a;-><init>(Lj3/n0;Lj3/n0$b;Lj3/g;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3
    invoke-static/range {v0 .. v5}, Lj3/j0$a;->a(Lj3/j0;ZZLc3/l;ILjava/lang/Object;)Lj3/y;

    move-result-object v0

    .line 4
    sget-object v1, Lj3/q0;->c:Lj3/q0;

    if-eq v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_1
    invoke-virtual {p0, p2}, Lj3/n0;->C(Lm3/f;)Lj3/g;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public a()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lj3/n0;->w()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lj3/f0;

    if-eqz v1, :cond_0

    check-cast v0, Lj3/f0;

    invoke-interface {v0}, Lj3/f0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Ljava/util/concurrent/CancellationException;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lj3/n0;->w()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lj3/n0$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lj3/n0$b;

    invoke-virtual {v1}, Lj3/n0$b;->e()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Lj3/j;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lj3/j;

    iget-object v1, v1, Lj3/j;->a:Ljava/lang/Throwable;

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, v0, Lj3/f0;

    if-nez v1, :cond_4

    move-object v1, v2

    .line 5
    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Lj3/k0;

    invoke-virtual {p0, v0}, Lj3/n0;->G(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Parent job is "

    invoke-static {v3, v0}, Lv/d;->w(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lj3/k0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lj3/j0;)V

    :cond_3
    return-object v2

    .line 6
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot be cancelling child in this state: "

    invoke-static {v2, v0}, Lv/d;->w(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final e(Lj3/s0;)V
    .locals 0

    invoke-virtual {p0, p1}, Lj3/n0;->p(Ljava/lang/Object;)Z

    return-void
.end method

.method public final fold(Ljava/lang/Object;Lc3/p;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lc3/p<",
            "-TR;-",
            "Lw2/f$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-interface {p2, p1, p0}, Lc3/p;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g()Ljava/util/concurrent/CancellationException;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lj3/n0;->w()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lj3/n0$b;

    const-string v2, "Job is still new or active: "

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lj3/n0$b;

    invoke-virtual {v0}, Lj3/n0$b;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, " is cancelling"

    .line 4
    invoke-static {v1, v3}, Lv/d;->w(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lj3/n0;->H(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5
    invoke-static {v2, p0}, Lv/d;->w(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    instance-of v1, v0, Lj3/f0;

    if-nez v1, :cond_4

    .line 7
    instance-of v1, v0, Lj3/j;

    if-eqz v1, :cond_3

    check-cast v0, Lj3/j;

    iget-object v0, v0, Lj3/j;->a:Ljava/lang/Throwable;

    .line 8
    invoke-virtual {p0, v0, v3}, Lj3/n0;->H(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v3

    goto :goto_1

    .line 9
    :cond_3
    new-instance v0, Lj3/k0;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " has completed normally"

    .line 11
    invoke-static {v1, v2}, Lv/d;->w(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, p0}, Lj3/k0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lj3/j0;)V

    move-object v3, v0

    :goto_1
    return-object v3

    .line 12
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v2, p0}, Lv/d;->w(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final get(Lw2/f$c;)Lw2/f$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lw2/f$b;",
            ">(",
            "Lw2/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lw2/f$b$a;->a(Lw2/f$b;Lw2/f$c;)Lw2/f$b;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Lw2/f$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/f$c<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lj3/j0$b;->c:Lj3/j0$b;

    return-object v0
.end method

.method public final i(ZZLc3/l;)Lj3/y;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lc3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lu2/f;",
            ">;)",
            "Lj3/y;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    instance-of v1, p3, Lj3/l0;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Lj3/l0;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_4

    .line 2
    new-instance v1, Lj3/h0;

    invoke-direct {v1, p3}, Lj3/h0;-><init>(Lc3/l;)V

    goto :goto_2

    .line 3
    :cond_1
    instance-of v1, p3, Lj3/m0;

    if-eqz v1, :cond_2

    move-object v1, p3

    check-cast v1, Lj3/m0;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_3

    move-object v1, v0

    :cond_3
    if-nez v1, :cond_4

    .line 4
    new-instance v1, Lj3/i0;

    invoke-direct {v1, p3}, Lj3/i0;-><init>(Lc3/l;)V

    .line 5
    :cond_4
    :goto_2
    iput-object p0, v1, Lj3/m0;->f:Lj3/n0;

    .line 6
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lj3/n0;->w()Ljava/lang/Object;

    move-result-object v2

    .line 7
    instance-of v3, v2, Lj3/z;

    if-eqz v3, :cond_c

    .line 8
    move-object v3, v2

    check-cast v3, Lj3/z;

    .line 9
    iget-boolean v4, v3, Lj3/z;->c:Z

    if-eqz v4, :cond_8

    .line 10
    sget-object v4, Lj3/n0;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_6
    invoke-virtual {v4, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_6

    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_5

    return-object v1

    .line 11
    :cond_8
    new-instance v2, Lj3/p0;

    invoke-direct {v2}, Lj3/p0;-><init>()V

    .line 12
    iget-boolean v4, v3, Lj3/z;->c:Z

    if-eqz v4, :cond_9

    move-object v4, v2

    goto :goto_5

    .line 13
    :cond_9
    new-instance v4, Lj3/e0;

    invoke-direct {v4, v2}, Lj3/e0;-><init>(Lj3/p0;)V

    .line 14
    :goto_5
    sget-object v5, Lj3/n0;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_a
    invoke-virtual {v5, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v3, :cond_a

    goto :goto_3

    .line 15
    :cond_c
    instance-of v3, v2, Lj3/f0;

    if-eqz v3, :cond_15

    .line 16
    move-object v3, v2

    check-cast v3, Lj3/f0;

    invoke-interface {v3}, Lj3/f0;->b()Lj3/p0;

    move-result-object v3

    if-nez v3, :cond_d

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    .line 17
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lj3/m0;

    invoke-virtual {p0, v2}, Lj3/n0;->F(Lj3/m0;)V

    goto :goto_3

    .line 18
    :cond_d
    sget-object v4, Lj3/q0;->c:Lj3/q0;

    if-eqz p1, :cond_12

    .line 19
    instance-of v5, v2, Lj3/n0$b;

    if-eqz v5, :cond_12

    .line 20
    monitor-enter v2

    .line 21
    :try_start_0
    move-object v5, v2

    check-cast v5, Lj3/n0$b;

    invoke-virtual {v5}, Lj3/n0$b;->e()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 22
    instance-of v6, p3, Lj3/g;

    if-eqz v6, :cond_11

    .line 23
    move-object v6, v2

    check-cast v6, Lj3/n0$b;

    invoke-virtual {v6}, Lj3/n0$b;->g()Z

    move-result v6

    if-nez v6, :cond_11

    .line 24
    :cond_e
    invoke-virtual {p0, v2, v3, v1}, Lj3/n0;->n(Ljava/lang/Object;Lj3/p0;Lj3/m0;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_f

    monitor-exit v2

    goto/16 :goto_3

    :cond_f
    if-nez v5, :cond_10

    .line 25
    monitor-exit v2

    return-object v1

    :cond_10
    move-object v4, v1

    .line 26
    :cond_11
    monitor-exit v2

    goto :goto_6

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_12
    move-object v5, v0

    :goto_6
    if-eqz v5, :cond_14

    if-eqz p2, :cond_13

    .line 27
    invoke-interface {p3, v5}, Lc3/l;->e(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-object v4

    .line 28
    :cond_14
    invoke-virtual {p0, v2, v3, v1}, Lj3/n0;->n(Ljava/lang/Object;Lj3/p0;Lj3/m0;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v1

    :cond_15
    if-eqz p2, :cond_18

    .line 29
    instance-of p1, v2, Lj3/j;

    if-eqz p1, :cond_16

    check-cast v2, Lj3/j;

    goto :goto_7

    :cond_16
    move-object v2, v0

    :goto_7
    if-nez v2, :cond_17

    goto :goto_8

    :cond_17
    iget-object v0, v2, Lj3/j;->a:Ljava/lang/Throwable;

    .line 30
    :goto_8
    invoke-interface {p3, v0}, Lc3/l;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_18
    sget-object p1, Lj3/q0;->c:Lj3/q0;

    return-object p1
.end method

.method public final k(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    new-instance v0, Lj3/k0;

    .line 2
    invoke-virtual {p0}, Lj3/n0;->r()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {v0, v1, p1, p0}, Lj3/k0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lj3/j0;)V

    move-object p1, v0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lj3/n0;->p(Ljava/lang/Object;)Z

    return-void
.end method

.method public final minusKey(Lw2/f$c;)Lw2/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/f$c<",
            "*>;)",
            "Lw2/f;"
        }
    .end annotation

    invoke-static {p0, p1}, Lw2/f$b$a;->b(Lw2/f$b;Lw2/f$c;)Lw2/f;

    move-result-object p1

    return-object p1
.end method

.method public final n(Ljava/lang/Object;Lj3/p0;Lj3/m0;)Z
    .locals 5

    .line 1
    new-instance v0, Lj3/n0$c;

    invoke-direct {v0, p3, p0, p1}, Lj3/n0$c;-><init>(Lm3/f;Lj3/n0;Ljava/lang/Object;)V

    .line 2
    :goto_0
    invoke-virtual {p2}, Lm3/f;->j()Lm3/f;

    move-result-object p1

    .line 3
    sget-object v1, Lm3/f;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    sget-object v1, Lm3/f;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p3, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iput-object p2, v0, Lm3/f$a;->c:Lm3/f;

    .line 6
    :cond_0
    invoke-virtual {v1, p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p2, :cond_0

    move v1, v3

    :goto_1
    const/4 v2, 0x2

    if-nez v1, :cond_2

    move p1, v3

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v0, p1}, Lm3/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    move p1, v4

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_2
    if-eq p1, v4, :cond_4

    if-eq p1, v2, :cond_5

    goto :goto_0

    :cond_4
    move v3, v4

    :cond_5
    return v3
.end method

.method public o(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final p(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x0

    move-object v1, v0

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lj3/n0;->w()Ljava/lang/Object;

    move-result-object v2

    .line 2
    instance-of v3, v2, Lj3/n0$b;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_7

    .line 3
    monitor-enter v2

    .line 4
    :try_start_0
    move-object v3, v2

    check-cast v3, Lj3/n0$b;

    invoke-virtual {v3}, Lj3/n0$b;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    sget-object p1, Lv/d;->J:Le/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v2

    goto/16 :goto_5

    .line 7
    :cond_1
    :try_start_1
    move-object v3, v2

    check-cast v3, Lj3/n0$b;

    invoke-virtual {v3}, Lj3/n0$b;->f()Z

    move-result v3

    if-nez p1, :cond_2

    if-nez v3, :cond_4

    :cond_2
    if-nez v1, :cond_3

    .line 8
    invoke-virtual {p0, p1}, Lj3/n0;->t(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 9
    :cond_3
    move-object p1, v2

    check-cast p1, Lj3/n0$b;

    invoke-virtual {p1, v1}, Lj3/n0$b;->c(Ljava/lang/Throwable;)V

    .line 10
    :cond_4
    move-object p1, v2

    check-cast p1, Lj3/n0$b;

    invoke-virtual {p1}, Lj3/n0$b;->e()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_5

    move-object v0, p1

    :cond_5
    monitor-exit v2

    if-nez v0, :cond_6

    goto :goto_1

    .line 11
    :cond_6
    check-cast v2, Lj3/n0$b;

    .line 12
    iget-object p1, v2, Lj3/n0$b;->c:Lj3/p0;

    .line 13
    invoke-virtual {p0, p1, v0}, Lj3/n0;->D(Lj3/p0;Ljava/lang/Throwable;)V

    .line 14
    :goto_1
    sget-object p1, Lv/d;->G:Le/p;

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v2

    throw p1

    .line 16
    :cond_7
    instance-of v3, v2, Lj3/f0;

    if-eqz v3, :cond_10

    if-nez v1, :cond_8

    .line 17
    invoke-virtual {p0, p1}, Lj3/n0;->t(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 18
    :cond_8
    move-object v3, v2

    check-cast v3, Lj3/f0;

    invoke-interface {v3}, Lj3/f0;->a()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 19
    invoke-virtual {p0, v3}, Lj3/n0;->v(Lj3/f0;)Lj3/p0;

    move-result-object v6

    if-nez v6, :cond_9

    goto :goto_3

    .line 20
    :cond_9
    new-instance v7, Lj3/n0$b;

    invoke-direct {v7, v6, v1}, Lj3/n0$b;-><init>(Lj3/p0;Ljava/lang/Throwable;)V

    .line 21
    sget-object v8, Lj3/n0;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_a
    invoke-virtual {v8, p0, v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v5

    goto :goto_2

    :cond_b
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v3, :cond_a

    move v2, v4

    :goto_2
    if-nez v2, :cond_c

    :goto_3
    move v2, v4

    goto :goto_4

    .line 22
    :cond_c
    invoke-virtual {p0, v6, v1}, Lj3/n0;->D(Lj3/p0;Ljava/lang/Throwable;)V

    move v2, v5

    :goto_4
    if-eqz v2, :cond_0

    .line 23
    sget-object p1, Lv/d;->G:Le/p;

    goto :goto_5

    .line 24
    :cond_d
    new-instance v3, Lj3/j;

    invoke-direct {v3, v1}, Lj3/j;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v3}, Lj3/n0;->I(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 25
    sget-object v6, Lv/d;->G:Le/p;

    if-eq v3, v6, :cond_f

    .line 26
    sget-object v2, Lv/d;->I:Le/p;

    if-ne v3, v2, :cond_e

    goto/16 :goto_0

    :cond_e
    move-object p1, v3

    goto :goto_5

    .line 27
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot happen in "

    invoke-static {v0, v2}, Lv/d;->w(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_10
    sget-object p1, Lv/d;->J:Le/p;

    .line 29
    :goto_5
    sget-object v0, Lv/d;->G:Le/p;

    if-ne p1, v0, :cond_11

    goto :goto_6

    .line 30
    :cond_11
    sget-object v0, Lv/d;->H:Le/p;

    if-ne p1, v0, :cond_12

    goto :goto_6

    .line 31
    :cond_12
    sget-object v0, Lv/d;->J:Le/p;

    if-ne p1, v0, :cond_13

    goto :goto_7

    .line 32
    :cond_13
    invoke-virtual {p0, p1}, Lj3/n0;->o(Ljava/lang/Object;)V

    :goto_6
    move v4, v5

    :goto_7
    return v4
.end method

.method public final q(Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lj3/n0;->z()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 3
    iget-object v2, p0, Lj3/n0;->_parentHandle:Ljava/lang/Object;

    check-cast v2, Lj3/f;

    if-eqz v2, :cond_4

    .line 4
    sget-object v3, Lj3/q0;->c:Lj3/q0;

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {v2, p1}, Lj3/f;->d(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public final s(Lj3/f0;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lj3/n0;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lj3/f;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Lj3/y;->c()V

    .line 3
    sget-object v0, Lj3/q0;->c:Lj3/q0;

    .line 4
    iput-object v0, p0, Lj3/n0;->_parentHandle:Ljava/lang/Object;

    .line 5
    :goto_0
    instance-of v0, p2, Lj3/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lj3/j;

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    if-nez p2, :cond_2

    move-object p2, v1

    goto :goto_2

    :cond_2
    iget-object p2, p2, Lj3/j;->a:Ljava/lang/Throwable;

    .line 6
    :goto_2
    instance-of v0, p1, Lj3/m0;

    const-string v2, " for "

    const-string v3, "Exception in completion handler "

    if-eqz v0, :cond_3

    .line 7
    :try_start_0
    move-object v0, p1

    check-cast v0, Lj3/m0;

    invoke-virtual {v0, p2}, Lj3/l;->m(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception p2

    .line 8
    new-instance v0, Lu2/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lu2/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lj3/n0;->y(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 9
    :cond_3
    invoke-interface {p1}, Lj3/f0;->b()Lj3/p0;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_6

    .line 10
    :cond_4
    invoke-virtual {p1}, Lm3/f;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm3/f;

    move-object v4, v1

    .line 11
    :goto_3
    invoke-static {v0, p1}, Lv/d;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 12
    instance-of v5, v0, Lj3/m0;

    if-eqz v5, :cond_6

    move-object v5, v0

    check-cast v5, Lj3/m0;

    .line 13
    :try_start_1
    invoke-virtual {v5, p2}, Lj3/l;->m(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v6

    if-nez v4, :cond_5

    move-object v7, v1

    goto :goto_4

    .line 14
    :cond_5
    invoke-static {v4, v6}, Lj3/q;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object v7, v4

    :goto_4
    if-nez v7, :cond_6

    .line 15
    new-instance v4, Lu2/b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lu2/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :cond_6
    :goto_5
    invoke-virtual {v0}, Lm3/f;->i()Lm3/f;

    move-result-object v0

    goto :goto_3

    :cond_7
    if-nez v4, :cond_8

    goto :goto_6

    .line 17
    :cond_8
    invoke-virtual {p0, v4}, Lj3/n0;->y(Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1
    :cond_0
    instance-of v0, p1, Ljava/lang/Throwable;

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 2
    new-instance v0, Lj3/k0;

    .line 3
    invoke-virtual {p0}, Lj3/n0;->r()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {v0, v1, p1, p0}, Lj3/k0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lj3/j0;)V

    move-object p1, v0

    goto :goto_1

    :cond_1
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lj3/s0;

    invoke-interface {p1}, Lj3/s0;->c()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lj3/n0;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lj3/n0;->w()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lj3/n0;->G(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lj3/q;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lj3/n0$b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lj3/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lj3/j;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lj3/j;->a:Ljava/lang/Throwable;

    .line 2
    :goto_1
    monitor-enter p1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lj3/n0$b;->f()Z

    .line 4
    invoke-virtual {p1, v0}, Lj3/n0$b;->i(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {p1}, Lj3/n0$b;->f()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7
    new-instance v3, Lj3/k0;

    .line 8
    invoke-virtual {p0}, Lj3/n0;->r()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-direct {v3, v6, v1, p0}, Lj3/k0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lj3/j0;)V

    move-object v1, v3

    goto :goto_2

    .line 10
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Throwable;

    .line 11
    instance-of v7, v7, Ljava/util/concurrent/CancellationException;

    xor-int/2addr v7, v5

    if-eqz v7, :cond_3

    move-object v1, v6

    :cond_4
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    goto :goto_2

    .line 12
    :cond_5
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    :cond_6
    :goto_2
    if-eqz v1, :cond_9

    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v5, :cond_7

    goto :goto_4

    .line 14
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 15
    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6, v3}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v6}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    .line 16
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eq v6, v1, :cond_8

    if-eq v6, v1, :cond_8

    .line 17
    instance-of v7, v6, Ljava/util/concurrent/CancellationException;

    if-nez v7, :cond_8

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 18
    invoke-static {v1, v6}, Lj3/q;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 19
    :cond_9
    :goto_4
    monitor-exit p1

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    if-ne v1, v0, :cond_b

    goto :goto_5

    .line 20
    :cond_b
    new-instance p2, Lj3/j;

    invoke-direct {p2, v1}, Lj3/j;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    if-eqz v1, :cond_e

    .line 21
    invoke-virtual {p0, v1}, Lj3/n0;->q(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, v1}, Lj3/n0;->x(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    move v0, v4

    goto :goto_7

    :cond_d
    :goto_6
    move v0, v5

    :goto_7
    if-eqz v0, :cond_e

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    .line 22
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lj3/j;

    .line 23
    sget-object v1, Lj3/j;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 24
    :cond_e
    invoke-virtual {p0, p2}, Lj3/n0;->E(Ljava/lang/Object;)V

    .line 25
    sget-object v0, Lj3/n0;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 26
    instance-of v1, p2, Lj3/f0;

    if-eqz v1, :cond_f

    new-instance v1, Lj3/g0;

    move-object v2, p2

    check-cast v2, Lj3/f0;

    invoke-direct {v1, v2}, Lj3/g0;-><init>(Lj3/f0;)V

    goto :goto_8

    :cond_f
    move-object v1, p2

    .line 27
    :cond_10
    :goto_8
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_10

    .line 28
    :goto_9
    invoke-virtual {p0, p1, p2}, Lj3/n0;->s(Lj3/f0;Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 29
    monitor-exit p1

    throw p2
.end method

.method public final v(Lj3/f0;)Lj3/p0;
    .locals 2

    .line 1
    invoke-interface {p1}, Lj3/f0;->b()Lj3/p0;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2
    instance-of v0, p1, Lj3/z;

    if-eqz v0, :cond_0

    new-instance v0, Lj3/p0;

    invoke-direct {v0}, Lj3/p0;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lj3/m0;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lj3/m0;

    invoke-virtual {p0, p1}, Lj3/n0;->F(Lj3/m0;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State should have list: "

    .line 6
    invoke-static {v1, p1}, Lv/d;->w(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final w()Ljava/lang/Object;
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lj3/n0;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lm3/k;

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    check-cast v0, Lm3/k;

    invoke-virtual {v0, p0}, Lm3/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public x(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public y(Ljava/lang/Throwable;)V
    .locals 0

    throw p1
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
