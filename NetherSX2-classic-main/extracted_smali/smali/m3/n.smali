.class public Lm3/n;
.super Lj3/a;
.source "SourceFile"

# interfaces
.implements Ly2/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj3/a<",
        "TT;>;",
        "Ly2/d;"
    }
.end annotation


# instance fields
.field public final e:Lw2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/d<",
            "TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method public K(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lm3/n;->e:Lw2/d;

    invoke-static {p1}, Lj3/q;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lw2/d;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public final h()Ly2/d;
    .locals 2

    iget-object v0, p0, Lm3/n;->e:Lw2/d;

    instance-of v1, v0, Ly2/d;

    if-eqz v1, :cond_0

    check-cast v0, Ly2/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public o(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm3/n;->e:Lw2/d;

    invoke-static {v0}, Lj3/q;->j(Lw2/d;)Lw2/d;

    move-result-object v0

    invoke-static {p1}, Lj3/q;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p1, v1}, Lv/d;->r(Lw2/d;Ljava/lang/Object;Lc3/l;)V

    return-void
.end method

.method public final z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
