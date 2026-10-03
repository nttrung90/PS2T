.class public abstract Lj3/w;
.super Ln3/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ln3/g;"
    }
.end annotation


# instance fields
.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/g;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lj3/w;->e:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public abstract b()Lw2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/d<",
            "TT;>;"
        }
    .end annotation
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    instance-of v0, p1, Lj3/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lj3/j;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lj3/j;->a:Ljava/lang/Throwable;

    :goto_1
    return-object v1
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public final f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1
    invoke-static {p1, p2}, Lj3/q;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    if-nez p1, :cond_2

    move-object p1, p2

    .line 2
    :cond_2
    new-instance p2, Lj3/p;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lv/d;->e(Ljava/lang/Object;)V

    .line 4
    invoke-direct {p2, v0, p1}, Lj3/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0}, Lj3/w;->b()Lw2/d;

    move-result-object p1

    invoke-interface {p1}, Lw2/d;->d()Lw2/f;

    move-result-object p1

    invoke-static {p1, p2}, Lj3/q;->i(Lw2/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract g()Ljava/lang/Object;
.end method

.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Ln3/g;->d:Ln3/h;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lj3/w;->b()Lw2/d;

    move-result-object v1

    check-cast v1, Lm3/c;

    .line 3
    iget-object v2, v1, Lm3/c;->g:Lw2/d;

    .line 4
    iget-object v1, v1, Lm3/c;->i:Ljava/lang/Object;

    .line 5
    invoke-interface {v2}, Lw2/d;->d()Lw2/f;

    move-result-object v3

    .line 6
    invoke-static {v3, v1}, Lm3/p;->b(Lw2/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    sget-object v4, Lm3/p;->a:Le/p;

    const/4 v5, 0x0

    if-eq v1, v4, :cond_0

    .line 8
    invoke-static {v2, v3}, Lj3/q;->y(Lw2/d;Lw2/f;)Lj3/w0;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 9
    :goto_0
    :try_start_1
    invoke-interface {v2}, Lw2/d;->d()Lw2/f;

    move-result-object v6

    .line 10
    invoke-virtual {p0}, Lj3/w;->g()Ljava/lang/Object;

    move-result-object v7

    .line 11
    invoke-virtual {p0, v7}, Lj3/w;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_1

    .line 12
    iget v9, p0, Lj3/w;->e:I

    invoke-static {v9}, Lj3/q;->k(I)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lj3/j0$b;->c:Lj3/j0$b;

    invoke-interface {v6, v9}, Lw2/f;->get(Lw2/f$c;)Lw2/f$b;

    move-result-object v6

    check-cast v6, Lj3/j0;

    goto :goto_1

    :cond_1
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_2

    .line 13
    invoke-interface {v6}, Lj3/j0;->a()Z

    move-result v9

    if-nez v9, :cond_2

    .line 14
    invoke-interface {v6}, Lj3/j0;->g()Ljava/util/concurrent/CancellationException;

    move-result-object v6

    .line 15
    invoke-virtual {p0, v7, v6}, Lj3/w;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 16
    invoke-static {v6}, Ln2/e;->m(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lw2/d;->j(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    if-eqz v8, :cond_3

    .line 17
    invoke-static {v8}, Ln2/e;->m(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lw2/d;->j(Ljava/lang/Object;)V

    goto :goto_2

    .line 18
    :cond_3
    invoke-virtual {p0, v7}, Lj3/w;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Lw2/d;->j(Ljava/lang/Object;)V

    .line 19
    :goto_2
    sget-object v2, Lu2/f;->a:Lu2/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_4

    .line 20
    :try_start_2
    invoke-static {v3, v1}, Lm3/p;->a(Lw2/f;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 21
    :try_start_3
    invoke-interface {v0}, Ln3/h;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v0}, Ln2/e;->m(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    .line 22
    :goto_3
    invoke-static {v2}, Lu2/d;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lj3/w;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 23
    :cond_4
    :try_start_4
    throw v5

    :catchall_1
    move-exception v2

    if-eqz v4, :cond_5

    throw v5

    .line 24
    :cond_5
    invoke-static {v3, v1}, Lm3/p;->a(Lw2/f;Ljava/lang/Object;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    .line 25
    :try_start_5
    invoke-interface {v0}, Ln3/h;->b()V

    sget-object v0, Lu2/f;->a:Lu2/f;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    invoke-static {v0}, Ln2/e;->m(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    :goto_4
    invoke-static {v0}, Lu2/d;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lj3/w;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method
