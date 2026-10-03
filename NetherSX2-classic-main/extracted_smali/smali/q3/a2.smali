.class public final Lq3/a2;
.super Lc1/e;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lo3/h;

.field public c:Z

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc1/e;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lq3/a2;->c:Z

    .line 3
    iput-boolean v0, p0, Lq3/a2;->d:Z

    .line 4
    iput v0, p0, Lq3/a2;->e:I

    .line 5
    iput-object p1, p0, Lq3/a2;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lq3/a2;->p()V

    return-void
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lq3/a2;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lq3/a2;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lq3/a2;->b:Lo3/h;

    invoke-virtual {v1, v0, p1}, Lo3/c;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "yes"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "enabled"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final b(Ljava/lang/String;F)F
    .locals 2

    .line 1
    invoke-static {p1}, Lq3/a2;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lq3/a2;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lq3/a2;->b:Lo3/h;

    invoke-virtual {v1, v0, p1}, Lo3/c;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public final c(Ljava/lang/String;I)I
    .locals 2

    .line 1
    invoke-static {p1}, Lq3/a2;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lq3/a2;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lq3/a2;->b:Lo3/h;

    invoke-virtual {v1, v0, p1}, Lo3/c;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Lq3/a2;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lq3/a2;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lq3/a2;->b:Lo3/h;

    invoke-virtual {v1, v0, p1}, Lo3/c;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public final e(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lq3/a2;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lq3/a2;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lq3/a2;->b:Lo3/h;

    invoke-virtual {v1, v0}, Lo3/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo3/l;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 6
    invoke-interface {v0, p1}, Lo3/j;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object p2
.end method

.method public final f(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Lq3/a2;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lq3/a2;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lq3/a2;->b:Lo3/h;

    if-eqz p2, :cond_0

    const-string p2, "true"

    goto :goto_0

    :cond_0
    const-string p2, "false"

    :goto_0
    invoke-virtual {v1, v0, p1, p2}, Lo3/c;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lq3/a2;->o()V

    return-void
.end method

.method public final g(Ljava/lang/String;F)V
    .locals 2

    .line 1
    invoke-static {p1}, Lq3/a2;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lq3/a2;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lq3/a2;->b:Lo3/h;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p1, p2}, Lo3/c;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lq3/a2;->o()V

    return-void
.end method

.method public final h(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lq3/a2;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lq3/a2;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lq3/a2;->b:Lo3/h;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p1, p2}, Lo3/c;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lq3/a2;->o()V

    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lq3/a2;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lq3/a2;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object p2, p0, Lq3/a2;->b:Lo3/h;

    .line 5
    invoke-virtual {p2, v0}, Lo3/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo3/l;

    if-nez p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lq3/a2;->b:Lo3/h;

    invoke-virtual {v1, v0, p1, p2}, Lo3/c;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    :goto_0
    invoke-virtual {p0}, Lq3/a2;->o()V

    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lq3/a2;->q(Ljava/lang/String;)Z

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lq3/a2;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lq3/a2;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lq3/a2;->b:Lo3/h;

    invoke-virtual {v1, v0}, Lo3/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo3/l;

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lq3/a2;->b:Lo3/h;

    invoke-virtual {v1, v0}, Lo3/c;->l(Ljava/lang/String;)Lo3/l;

    move-result-object v1

    .line 6
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v1, p1, v0}, Lo3/j;->b(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    .line 10
    invoke-virtual {p0}, Lq3/a2;->o()V

    return-void
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lq3/a2;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lq3/a2;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lq3/a2;->b:Lo3/h;

    invoke-virtual {v1, v0, p1}, Lo3/c;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final l()V
    .locals 1

    .line 1
    iget v0, p0, Lq3/a2;->e:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Lq3/a2;->e:I

    .line 3
    iget-boolean v0, p0, Lq3/a2;->d:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lq3/a2;->r()V

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lq3/a2;->d:Z

    .line 2
    iget v1, p0, Lq3/a2;->e:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lq3/a2;->r()V

    :cond_1
    return-void
.end method

.method public final p()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lq3/a2;->c:Z

    .line 2
    new-instance v1, Lo3/h;

    invoke-direct {v1}, Lo3/h;-><init>()V

    iput-object v1, p0, Lq3/a2;->b:Lo3/h;

    .line 3
    iget-object v1, v1, Lo3/h;->f:Lo3/g;

    .line 4
    iput-boolean v0, v1, Lo3/g;->f:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, v1, Lo3/g;->q:Z

    .line 6
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lq3/a2;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iget-object v2, p0, Lq3/a2;->b:Lo3/h;

    invoke-virtual {v2, v1}, Lo3/h;->o(Ljava/io/File;)V
    :try_end_0
    .catch Lo3/i; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    iput-boolean v0, p0, Lq3/a2;->c:Z

    goto :goto_0

    :catch_1
    move-exception v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    iput-boolean v0, p0, Lq3/a2;->c:Z

    :cond_0
    :goto_0
    return-void
.end method

.method public final q(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lq3/a2;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lq3/a2;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lq3/a2;->b:Lo3/h;

    .line 4
    invoke-virtual {v1, v0}, Lo3/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo3/l;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 6
    :goto_1
    invoke-virtual {p0}, Lq3/a2;->o()V

    return p1
.end method

.method public final r()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lq3/a2;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v1, p0, Lq3/a2;->b:Lo3/h;

    invoke-virtual {v1, v0}, Lo3/h;->p(Ljava/io/File;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lq3/a2;->d:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lq3/a2;->c:Z

    :goto_0
    return-void
.end method

.method public final s()V
    .locals 1

    iget v0, p0, Lq3/a2;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq3/a2;->e:I

    return-void
.end method
