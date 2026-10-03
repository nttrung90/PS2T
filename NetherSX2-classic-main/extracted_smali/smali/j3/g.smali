.class public final Lj3/g;
.super Lj3/l0;
.source "SourceFile"

# interfaces
.implements Lj3/f;


# instance fields
.field public final g:Lj3/h;


# virtual methods
.method public final d(Ljava/lang/Throwable;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lj3/m0;->n()Lj3/n0;

    move-result-object v0

    .line 2
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lj3/n0;->p(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    return v2
.end method

.method public final bridge synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lj3/g;->m(Ljava/lang/Throwable;)V

    sget-object p1, Lu2/f;->a:Lu2/f;

    return-object p1
.end method

.method public final m(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lj3/g;->g:Lj3/h;

    invoke-virtual {p0}, Lj3/m0;->n()Lj3/n0;

    move-result-object v0

    invoke-interface {p1, v0}, Lj3/h;->e(Lj3/s0;)V

    return-void
.end method
