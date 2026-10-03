.class public abstract Lj3/m0;
.super Lj3/l;
.source "SourceFile"

# interfaces
.implements Lj3/y;
.implements Lj3/f0;


# instance fields
.field public f:Lj3/n0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj3/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lj3/p0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lj3/m0;->n()Lj3/n0;

    move-result-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lj3/n0;->w()Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lj3/m0;

    if-eqz v2, :cond_4

    if-eq v1, p0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    sget-object v2, Lj3/n0;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v3, Lv/d;->M:Lj3/z;

    :cond_2
    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    goto :goto_1

    .line 5
    :cond_4
    instance-of v0, v1, Lj3/f0;

    if-eqz v0, :cond_5

    .line 6
    check-cast v1, Lj3/f0;

    invoke-interface {v1}, Lj3/f0;->b()Lj3/p0;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lm3/f;->l()Z

    :cond_5
    :goto_1
    return-void
.end method

.method public final n()Lj3/n0;
    .locals 2

    .line 1
    iget-object v0, p0, Lj3/m0;->f:Lj3/n0;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lu2/b;

    const-string v1, "lateinit property job has not been initialized"

    invoke-direct {v0, v1}, Lu2/b;-><init>(Ljava/lang/String;)V

    .line 3
    const-class v1, Lv/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lv/d;->s(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 4
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lj3/q;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[job@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lj3/m0;->n()Lj3/n0;

    move-result-object v1

    invoke-static {v1}, Lj3/q;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
