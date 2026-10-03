.class public Lh3/e;
.super Lj3/q;
.source "SourceFile"


# direct methods
.method public static final A(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 3

    .line 1
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lj3/q;->m(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-static {p0, v1}, Lh3/e;->B(Ljava/lang/Iterable;Ljava/util/Map;)Ljava/util/Map;

    goto :goto_0

    .line 3
    :cond_0
    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu2/c;

    const-string v0, "pair"

    .line 4
    invoke-static {p0, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lu2/c;->c:Ljava/lang/Object;

    .line 6
    iget-object p0, p0, Lu2/c;->d:Ljava/lang/Object;

    .line 7
    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string p0, "singletonMap(pair.first, pair.second)"

    invoke-static {v1, p0}, Lv/d;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object v1, Lv2/e;->c:Lv2/e;

    :goto_0
    return-object v1
.end method

.method public static final B(Ljava/lang/Iterable;Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    .line 1
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu2/c;

    .line 2
    iget-object v1, v0, Lu2/c;->c:Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Lu2/c;->d:Ljava/lang/Object;

    .line 4
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static final z(Ljava/util/Iterator;)Lh3/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lh3/d;

    invoke-direct {v0, p0}, Lh3/d;-><init>(Ljava/util/Iterator;)V

    .line 2
    instance-of p0, v0, Lh3/a;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lh3/a;

    invoke-direct {p0, v0}, Lh3/a;-><init>(Lh3/b;)V

    move-object v0, p0

    :goto_0
    return-object v0
.end method
