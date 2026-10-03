.class public abstract Lj3/a;
.super Lj3/n0;
.source "SourceFile"

# interfaces
.implements Lw2/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj3/n0;",
        "Lw2/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Lw2/f;


# virtual methods
.method public final B()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lj3/n0;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final E(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lj3/j;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lj3/j;

    iget-object v0, p1, Lj3/j;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lj3/j;->a()Z

    :cond_0
    return-void
.end method

.method public K(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lj3/n0;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    invoke-super {p0}, Lj3/n0;->a()Z

    move-result v0

    return v0
.end method

.method public final d()Lw2/f;
    .locals 1

    iget-object v0, p0, Lj3/a;->d:Lw2/f;

    return-object v0
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lj3/q;->x(Ljava/lang/Object;Lc3/l;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lj3/n0;->A(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    sget-object v0, Lv/d;->H:Le/p;

    if-ne p1, v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lj3/a;->K(Ljava/lang/Object;)V

    return-void
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " was cancelled"

    .line 2
    invoke-static {v0, v1}, Lv/d;->w(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lj3/a;->d:Lw2/f;

    invoke-static {v0, p1}, Lj3/q;->i(Lw2/f;Ljava/lang/Throwable;)V

    return-void
.end method
