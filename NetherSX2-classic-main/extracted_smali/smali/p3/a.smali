.class public abstract Lp3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/c;


# instance fields
.field public a:Lo3/l;

.field public b:Z

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lp3/a;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lp3/a;->b:Z

    .line 3
    invoke-virtual {p0}, Lp3/a;->d()V

    .line 4
    :cond_0
    iput-object p1, p0, Lp3/a;->c:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lp3/a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lp3/a;->d()V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lp3/a;->b:Z

    .line 2
    move-object v0, p0

    check-cast v0, Lp3/d;

    .line 3
    iget-object v1, v0, Lp3/d;->d:Lo3/h;

    .line 4
    iget-object v1, v1, Lo3/h;->f:Lo3/g;

    .line 5
    iget-boolean v1, v1, Lo3/g;->q:Z

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lp3/a;->a:Lo3/l;

    invoke-interface {v1, p1, p2}, Lo3/j;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lp3/a;->a:Lo3/l;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :goto_0
    iget-object p2, p0, Lp3/a;->c:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 9
    iget-object v1, p0, Lp3/a;->a:Lo3/l;

    .line 10
    iget-object v0, v0, Lp3/d;->d:Lo3/h;

    .line 11
    iget-object v0, v0, Lo3/h;->f:Lo3/g;

    .line 12
    iget-boolean v0, v0, Lo3/g;->c:Z

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {v1, p1, p2}, Lo3/e;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lp3/a;->c:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Lp3/d;

    .line 2
    iget-object v0, v0, Lp3/d;->d:Lo3/h;

    .line 3
    iget-object v1, v0, Lo3/h;->f:Lo3/g;

    .line 4
    iget-boolean v1, v1, Lo3/g;->c:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lp3/a;->c:Ljava/lang/String;

    .line 6
    iput-object v1, v0, Lo3/c;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Lp3/d;

    .line 2
    iget-object v0, v0, Lp3/d;->d:Lo3/h;

    .line 3
    iget-object v0, v0, Lo3/h;->f:Lo3/g;

    .line 4
    iget-boolean v0, v0, Lo3/g;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lp3/a;->b:Z

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 3

    .line 1
    move-object v0, p0

    check-cast v0, Lp3/d;

    .line 2
    iget-object v1, v0, Lp3/d;->d:Lo3/h;

    .line 3
    iget-object v2, v1, Lo3/h;->f:Lo3/g;

    .line 4
    iget-boolean v2, v2, Lo3/g;->r:Z

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1, p1}, Lo3/c;->l(Ljava/lang/String;)Lo3/l;

    move-result-object v1

    iput-object v1, p0, Lp3/a;->a:Lo3/l;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1, p1}, Lo3/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo3/l;

    if-nez v1, :cond_1

    .line 7
    iget-object v1, v0, Lp3/d;->d:Lo3/h;

    .line 8
    invoke-virtual {v1, p1}, Lo3/c;->l(Ljava/lang/String;)Lo3/l;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lp3/a;->a:Lo3/l;

    .line 9
    :goto_0
    iget-object v1, p0, Lp3/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 10
    iget-boolean v2, p0, Lp3/a;->b:Z

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {p0}, Lp3/a;->d()V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, v0, Lp3/d;->d:Lo3/h;

    .line 13
    iget-object v2, v0, Lo3/h;->f:Lo3/g;

    .line 14
    iget-boolean v2, v2, Lo3/g;->c:Z

    if-eqz v2, :cond_3

    .line 15
    invoke-virtual {v0, p1, v1}, Lo3/f;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lp3/a;->c:Ljava/lang/String;

    :cond_4
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lp3/a;->b:Z

    return-void
.end method
