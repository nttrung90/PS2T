.class public Li1/n;
.super Li1/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/n$b;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:I

.field public C:Z

.field public D:I

.field public z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Li1/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Li1/i;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li1/n;->z:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Li1/n;->A:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Li1/n;->C:Z

    .line 5
    iput v0, p0, Li1/n;->D:I

    return-void
.end method


# virtual methods
.method public final A(J)Li1/i;
    .locals 3

    .line 1
    iput-wide p1, p0, Li1/i;->e:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Li1/n;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li1/i;

    invoke-virtual {v2, p1, p2}, Li1/i;->A(J)Li1/i;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final B(Li1/i$c;)V
    .locals 3

    .line 1
    iput-object p1, p0, Li1/i;->u:Li1/i$c;

    .line 2
    iget v0, p0, Li1/n;->D:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Li1/n;->D:I

    .line 3
    iget-object v0, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li1/i;

    invoke-virtual {v2, p1}, Li1/i;->B(Li1/i$c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final C(Landroid/animation/TimeInterpolator;)Li1/i;
    .locals 3

    .line 1
    iget v0, p0, Li1/n;->D:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Li1/n;->D:I

    .line 2
    iget-object v0, p0, Li1/n;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li1/i;

    invoke-virtual {v2, p1}, Li1/i;->C(Landroid/animation/TimeInterpolator;)Li1/i;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Li1/i;->f:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public final D(Landroidx/fragment/app/q;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Li1/i;->D(Landroidx/fragment/app/q;)V

    .line 2
    iget v0, p0, Li1/n;->D:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Li1/n;->D:I

    .line 3
    iget-object v0, p0, Li1/n;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5
    iget-object v1, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li1/i;

    invoke-virtual {v1, p1}, Li1/i;->D(Landroidx/fragment/app/q;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final E()V
    .locals 3

    .line 1
    iget v0, p0, Li1/n;->D:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Li1/n;->D:I

    .line 2
    iget-object v0, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li1/i;

    invoke-virtual {v2}, Li1/i;->E()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final F(J)Li1/i;
    .locals 0

    iput-wide p1, p0, Li1/i;->d:J

    return-object p0
.end method

.method public final H(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-super {p0, p1}, Li1/i;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li1/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Li1/i;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final I(Li1/i;)Li1/n;
    .locals 4

    .line 1
    iget-object v0, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iput-object p0, p1, Li1/i;->k:Li1/n;

    .line 3
    iget-wide v0, p0, Li1/i;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 4
    invoke-virtual {p1, v0, v1}, Li1/i;->A(J)Li1/i;

    .line 5
    :cond_0
    iget v0, p0, Li1/n;->D:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Li1/i;->f:Landroid/animation/TimeInterpolator;

    .line 7
    invoke-virtual {p1, v0}, Li1/i;->C(Landroid/animation/TimeInterpolator;)Li1/i;

    .line 8
    :cond_1
    iget v0, p0, Li1/n;->D:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1}, Li1/i;->E()V

    .line 10
    :cond_2
    iget v0, p0, Li1/n;->D:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Li1/i;->v:Landroidx/fragment/app/q;

    .line 12
    invoke-virtual {p1, v0}, Li1/i;->D(Landroidx/fragment/app/q;)V

    .line 13
    :cond_3
    iget v0, p0, Li1/n;->D:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Li1/i;->u:Li1/i$c;

    .line 15
    invoke-virtual {p1, v0}, Li1/i;->B(Li1/i$c;)V

    :cond_4
    return-object p0
.end method

.method public final J(I)Li1/i;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li1/i;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Li1/i$d;)Li1/i;
    .locals 0

    invoke-super {p0, p1}, Li1/i;->a(Li1/i$d;)Li1/i;

    return-object p0
.end method

.method public final b(Landroid/view/View;)Li1/i;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li1/i;

    invoke-virtual {v1, p1}, Li1/i;->b(Landroid/view/View;)Li1/i;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Li1/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Li1/n;->k()Li1/i;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 3

    .line 1
    invoke-super {p0}, Li1/i;->d()V

    .line 2
    iget-object v0, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li1/i;

    invoke-virtual {v2}, Li1/i;->d()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Li1/p;)V
    .locals 3

    .line 1
    iget-object v0, p1, Li1/p;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Li1/i;->t(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li1/i;

    .line 3
    iget-object v2, p1, Li1/p;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Li1/i;->t(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Li1/i;->e(Li1/p;)V

    .line 5
    iget-object v2, p1, Li1/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final g(Li1/p;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li1/i;

    invoke-virtual {v2, p1}, Li1/i;->g(Li1/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h(Li1/p;)V
    .locals 3

    .line 1
    iget-object v0, p1, Li1/p;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Li1/i;->t(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li1/i;

    .line 3
    iget-object v2, p1, Li1/p;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Li1/i;->t(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Li1/i;->h(Li1/p;)V

    .line 5
    iget-object v2, p1, Li1/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final k()Li1/i;
    .locals 5

    .line 1
    invoke-super {p0}, Li1/i;->k()Li1/i;

    move-result-object v0

    check-cast v0, Li1/n;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Li1/n;->z:Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    iget-object v3, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li1/i;

    invoke-virtual {v3}, Li1/i;->k()Li1/i;

    move-result-object v3

    .line 5
    iget-object v4, v0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iput-object v0, v3, Li1/i;->k:Li1/n;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final m(Landroid/view/ViewGroup;Lx/a;Lx/a;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lx/a;",
            "Lx/a;",
            "Ljava/util/ArrayList<",
            "Li1/p;",
            ">;",
            "Ljava/util/ArrayList<",
            "Li1/p;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Li1/i;->d:J

    .line 2
    iget-object v3, v0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 3
    iget-object v5, v0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Li1/i;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    .line 4
    iget-boolean v5, v0, Li1/n;->A:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 5
    :cond_0
    iget-wide v9, v6, Li1/i;->d:J

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    .line 6
    invoke-virtual {v6, v9, v10}, Li1/i;->F(J)Li1/i;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v6, v1, v2}, Li1/i;->F(J)Li1/i;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 8
    invoke-virtual/range {v6 .. v11}, Li1/i;->m(Landroid/view/ViewGroup;Lx/a;Lx/a;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final v(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Li1/i;->v(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li1/i;

    invoke-virtual {v2, p1}, Li1/i;->v(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w(Li1/i$d;)Li1/i;
    .locals 0

    invoke-super {p0, p1}, Li1/i;->w(Li1/i$d;)Li1/i;

    return-object p0
.end method

.method public final x(Landroid/view/View;)Li1/i;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li1/i;

    invoke-virtual {v1, p1}, Li1/i;->x(Landroid/view/View;)Li1/i;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Li1/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final y(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Li1/i;->y(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li1/i;

    invoke-virtual {v2, p1}, Li1/i;->y(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z()V
    .locals 4

    .line 1
    iget-object v0, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Li1/i;->G()V

    .line 3
    invoke-virtual {p0}, Li1/i;->n()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Li1/n$b;

    invoke-direct {v0, p0}, Li1/n$b;-><init>(Li1/n;)V

    .line 5
    iget-object v1, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li1/i;

    .line 6
    invoke-virtual {v2, v0}, Li1/i;->a(Li1/i$d;)Li1/i;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Li1/n;->B:I

    .line 8
    iget-boolean v0, p0, Li1/n;->A:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 9
    :goto_1
    iget-object v1, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 10
    iget-object v1, p0, Li1/n;->z:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li1/i;

    .line 11
    iget-object v2, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li1/i;

    .line 12
    new-instance v3, Li1/n$a;

    invoke-direct {v3, v2}, Li1/n$a;-><init>(Li1/i;)V

    invoke-virtual {v1, v3}, Li1/i;->a(Li1/i$d;)Li1/i;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p0, Li1/n;->z:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li1/i;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Li1/i;->z()V

    goto :goto_3

    .line 15
    :cond_3
    iget-object v0, p0, Li1/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li1/i;

    .line 16
    invoke-virtual {v1}, Li1/i;->z()V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method
