.class public abstract Ly2/c;
.super Ly2/a;
.source "SourceFile"


# instance fields
.field public final d:Lw2/f;

.field public transient e:Lw2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Ly2/c;->e:Lw2/d;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2
    iget-object v1, p0, Ly2/c;->d:Lw2/f;

    invoke-static {v1}, Lv/d;->e(Ljava/lang/Object;)V

    .line 3
    sget v2, Lw2/e;->b:I

    sget-object v2, Lw2/e$a;->c:Lw2/e$a;

    invoke-interface {v1, v2}, Lw2/f;->get(Lw2/f$c;)Lw2/f$b;

    move-result-object v1

    invoke-static {v1}, Lv/d;->e(Ljava/lang/Object;)V

    check-cast v1, Lw2/e;

    invoke-interface {v1, v0}, Lw2/e;->f(Lw2/d;)V

    .line 4
    :cond_0
    sget-object v0, Ly2/b;->c:Ly2/b;

    iput-object v0, p0, Ly2/c;->e:Lw2/d;

    return-void
.end method

.method public final d()Lw2/f;
    .locals 1

    iget-object v0, p0, Ly2/c;->d:Lw2/f;

    invoke-static {v0}, Lv/d;->e(Ljava/lang/Object;)V

    return-object v0
.end method
