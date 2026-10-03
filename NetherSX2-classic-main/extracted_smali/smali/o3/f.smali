.class public Lo3/f;
.super Lo3/a;
.source "SourceFile"

# interfaces
.implements Lo3/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo3/a<",
        "TK;TV;>;",
        "Lo3/e<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo3/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    invoke-super {p0}, Lo3/a;->clear()V

    .line 2
    iget-object v0, p0, Lo3/f;->d:Ljava/util/TreeMap;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lo3/f;->d:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "comment"

    invoke-virtual {p0, v1, p1}, Lo3/f;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    :goto_0
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/f;->d:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lo3/f;->d:Ljava/util/TreeMap;

    .line 3
    :cond_0
    iget-object v0, p0, Lo3/f;->d:Ljava/util/TreeMap;

    const-string v1, "comment"

    .line 4
    invoke-virtual {p0, v1, p1}, Lo3/f;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";#;"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lo3/a;->putAll(Ljava/util/Map;)V

    .line 2
    instance-of v0, p1, Lo3/f;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lo3/f;

    iget-object p1, p1, Lo3/f;->d:Ljava/util/TreeMap;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lo3/f;->d:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lo3/f;->d:Ljava/util/TreeMap;

    .line 6
    :cond_0
    iget-object v0, p0, Lo3/f;->d:Ljava/util/TreeMap;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lo3/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lo3/f;->d:Ljava/util/TreeMap;

    if-eqz v1, :cond_0

    const-string v2, ""

    .line 3
    invoke-virtual {p0, v2, p1}, Lo3/f;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "zzzzzzzzzzzzzzzzzzzzzz"

    invoke-virtual {p0, v3, p1}, Lo3/f;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_0
    return-object v0
.end method
