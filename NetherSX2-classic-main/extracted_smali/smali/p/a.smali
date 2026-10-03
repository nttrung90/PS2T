.class public final Lp/a;
.super Lp/g;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lp/g<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public j:Lp/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/f<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp/g;-><init>()V

    return-void
.end method

.method public constructor <init>(Lp/g;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lp/g;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    iget v0, p1, Lp/g;->e:I

    .line 4
    iget v1, p0, Lp/g;->e:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lp/g;->k(I)V

    .line 5
    iget v1, p0, Lp/g;->e:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-lez v0, :cond_1

    .line 6
    iget-object v1, p1, Lp/g;->c:[I

    iget-object v3, p0, Lp/g;->c:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object p1, p1, Lp/g;->d:[Ljava/lang/Object;

    iget-object v1, p0, Lp/g;->d:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iput v0, p0, Lp/g;->e:I

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    invoke-virtual {p1, v2}, Lp/g;->q(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2}, Lp/g;->t(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lp/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp/a;->u()Lp/f;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lp/f;->a:Lp/f$b;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lp/f$b;

    invoke-direct {v1, v0}, Lp/f$b;-><init>(Lp/f;)V

    iput-object v1, v0, Lp/f;->a:Lp/f$b;

    .line 4
    :cond_0
    iget-object v0, v0, Lp/f;->a:Lp/f$b;

    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp/a;->u()Lp/f;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lp/f;->b:Lp/f$c;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lp/f$c;

    invoke-direct {v1, v0}, Lp/f$c;-><init>(Lp/f;)V

    iput-object v1, v0, Lp/f;->b:Lp/f$c;

    .line 4
    :cond_0
    iget-object v0, v0, Lp/f;->b:Lp/f$c;

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lp/g;->e:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lp/g;->k(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lp/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u()Lp/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp/f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp/a;->j:Lp/a$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lp/a$a;

    invoke-direct {v0, p0}, Lp/a$a;-><init>(Lp/a;)V

    iput-object v0, p0, Lp/a;->j:Lp/a$a;

    .line 3
    :cond_0
    iget-object v0, p0, Lp/a;->j:Lp/a$a;

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp/a;->u()Lp/f;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lp/f;->c:Lp/f$e;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lp/f$e;

    invoke-direct {v1, v0}, Lp/f$e;-><init>(Lp/f;)V

    iput-object v1, v0, Lp/f;->c:Lp/f$e;

    .line 4
    :cond_0
    iget-object v0, v0, Lp/f;->c:Lp/f$e;

    return-object v0
.end method
