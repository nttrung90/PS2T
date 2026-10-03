.class public final Lm3/c;
.super Lj3/w;
.source "SourceFile"

# interfaces
.implements Ly2/d;
.implements Lw2/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj3/w<",
        "TT;>;",
        "Ly2/d;",
        "Lw2/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile synthetic _reusableCancellableContinuation:Ljava/lang/Object;

.field public final f:Lj3/m;

.field public final g:Lw2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/Object;

.field public final i:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lm3/c;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_reusableCancellableContinuation"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lj3/m;Lw2/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj3/m;",
            "Lw2/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lj3/w;-><init>()V

    .line 2
    iput-object p1, p0, Lm3/c;->f:Lj3/m;

    .line 3
    iput-object p2, p0, Lm3/c;->g:Lw2/d;

    .line 4
    sget-object p1, Lv/d;->N:Le/p;

    .line 5
    iput-object p1, p0, Lm3/c;->h:Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lm3/c;->d()Lw2/f;

    move-result-object p1

    const/4 p2, 0x0

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Lm3/p$a;->d:Lm3/p$a;

    invoke-interface {p1, p2, v0}, Lw2/f;->fold(Ljava/lang/Object;Lc3/p;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lv/d;->e(Ljava/lang/Object;)V

    .line 8
    iput-object p1, p0, Lm3/c;->i:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lm3/c;->_reusableCancellableContinuation:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lj3/k;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lj3/k;

    iget-object p1, p1, Lj3/k;->b:Lc3/l;

    invoke-interface {p1, p2}, Lc3/l;->e(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final b()Lw2/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/d<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final d()Lw2/f;
    .locals 1

    iget-object v0, p0, Lm3/c;->g:Lw2/d;

    invoke-interface {v0}, Lw2/d;->d()Lw2/f;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lm3/c;->h:Ljava/lang/Object;

    .line 2
    sget-object v1, Lv/d;->N:Le/p;

    .line 3
    iput-object v1, p0, Lm3/c;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public final h()Ly2/d;
    .locals 2

    iget-object v0, p0, Lm3/c;->g:Lw2/d;

    instance-of v1, v0, Ly2/d;

    if-eqz v1, :cond_0

    check-cast v0, Ly2/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final i()V
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lm3/c;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 2
    sget-object v1, Lv/d;->O:Le/p;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lm3/c;->_reusableCancellableContinuation:Ljava/lang/Object;

    instance-of v1, v0, Lj3/d;

    if-eqz v1, :cond_1

    check-cast v0, Lj3/d;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iget-object v1, v0, Lj3/d;->f:Lj3/q0;

    if-nez v1, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    sget-object v1, Lj3/q0;->c:Lj3/q0;

    iput-object v1, v0, Lj3/d;->f:Lj3/q0;

    :goto_1
    return-void
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lm3/c;->g:Lw2/d;

    invoke-interface {v0}, Lw2/d;->d()Lw2/f;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v1}, Lj3/q;->x(Ljava/lang/Object;Lc3/l;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lm3/c;->f:Lj3/m;

    invoke-virtual {v3}, Lj3/m;->h()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 4
    iput-object v2, p0, Lm3/c;->h:Ljava/lang/Object;

    .line 5
    iput v4, p0, Lj3/w;->e:I

    .line 6
    iget-object p1, p0, Lm3/c;->f:Lj3/m;

    invoke-virtual {p1, v0, p0}, Lj3/m;->d(Lw2/f;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 7
    :cond_0
    sget-object v0, Lj3/u0;->a:Lj3/u0;

    invoke-static {}, Lj3/u0;->a()Lj3/a0;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lj3/a0;->q()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iput-object v2, p0, Lm3/c;->h:Ljava/lang/Object;

    .line 10
    iput v4, p0, Lj3/w;->e:I

    .line 11
    invoke-virtual {v0, p0}, Lj3/a0;->o(Lj3/w;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v2}, Lj3/a0;->p(Z)V

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lm3/c;->d()Lw2/f;

    move-result-object v2

    iget-object v3, p0, Lm3/c;->i:Ljava/lang/Object;

    .line 14
    invoke-static {v2, v3}, Lm3/p;->b(Lw2/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-object v4, p0, Lm3/c;->g:Lw2/d;

    invoke-interface {v4, p1}, Lw2/d;->j(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :try_start_2
    invoke-static {v2, v3}, Lm3/p;->a(Lw2/f;Ljava/lang/Object;)V

    .line 17
    :cond_2
    invoke-virtual {v0}, Lj3/a0;->r()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 18
    invoke-static {v2, v3}, Lm3/p;->a(Lw2/f;Ljava/lang/Object;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 19
    :try_start_3
    invoke-virtual {p0, p1, v1}, Lj3/w;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 20
    :goto_0
    invoke-virtual {v0}, Lj3/a0;->j()V

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lj3/a0;->j()V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DispatchedContinuation["

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/a;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lm3/c;->f:Lj3/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm3/c;->g:Lw2/d;

    invoke-static {v1}, Lj3/q;->v(Lw2/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
