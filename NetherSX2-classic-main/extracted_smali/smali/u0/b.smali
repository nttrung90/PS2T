.class public abstract Lu0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu0/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/b$i;,
        Lu0/b$h;,
        Lu0/b$g;,
        Lu0/b$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lu0/b<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lu0/a$b;"
    }
.end annotation


# static fields
.field public static final l:Lu0/b$b;

.field public static final m:Lu0/b$c;

.field public static final n:Lu0/b$d;

.field public static final o:Lu0/b$e;

.field public static final p:Lu0/b$f;

.field public static final q:Lu0/b$a;


# instance fields
.field public a:F

.field public b:F

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final e:Landroidx/fragment/app/q;

.field public f:Z

.field public g:F

.field public h:J

.field public i:F

.field public final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lu0/b$h;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lu0/b$i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lu0/b$b;

    invoke-direct {v0}, Lu0/b$b;-><init>()V

    sput-object v0, Lu0/b;->l:Lu0/b$b;

    .line 2
    new-instance v0, Lu0/b$c;

    invoke-direct {v0}, Lu0/b$c;-><init>()V

    sput-object v0, Lu0/b;->m:Lu0/b$c;

    .line 3
    new-instance v0, Lu0/b$d;

    invoke-direct {v0}, Lu0/b$d;-><init>()V

    sput-object v0, Lu0/b;->n:Lu0/b$d;

    .line 4
    new-instance v0, Lu0/b$e;

    invoke-direct {v0}, Lu0/b$e;-><init>()V

    sput-object v0, Lu0/b;->o:Lu0/b$e;

    .line 5
    new-instance v0, Lu0/b$f;

    invoke-direct {v0}, Lu0/b$f;-><init>()V

    sput-object v0, Lu0/b;->p:Lu0/b$f;

    .line 6
    new-instance v0, Lu0/b$a;

    invoke-direct {v0}, Lu0/b$a;-><init>()V

    sput-object v0, Lu0/b;->q:Lu0/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/fragment/app/q;",
            ")V"
        }
    .end annotation

    sget-object v0, Li2/d;->s:Li2/d$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lu0/b;->a:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    iput v1, p0, Lu0/b;->b:F

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lu0/b;->c:Z

    .line 5
    iput-boolean v1, p0, Lu0/b;->f:Z

    const v1, -0x800001

    .line 6
    iput v1, p0, Lu0/b;->g:F

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lu0/b;->h:J

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lu0/b;->j:Ljava/util/ArrayList;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lu0/b;->k:Ljava/util/ArrayList;

    .line 10
    iput-object p1, p0, Lu0/b;->d:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lu0/b;->e:Landroidx/fragment/app/q;

    .line 12
    sget-object p1, Lu0/b;->n:Lu0/b$d;

    if-eq v0, p1, :cond_4

    sget-object p1, Lu0/b;->o:Lu0/b$e;

    if-eq v0, p1, :cond_4

    sget-object p1, Lu0/b;->p:Lu0/b$f;

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    sget-object p1, Lu0/b;->q:Lu0/b$a;

    const/high16 v1, 0x3b800000    # 0.00390625f

    if-ne v0, p1, :cond_1

    .line 14
    iput v1, p0, Lu0/b;->i:F

    goto :goto_2

    .line 15
    :cond_1
    sget-object p1, Lu0/b;->l:Lu0/b$b;

    if-eq v0, p1, :cond_3

    sget-object p1, Lu0/b;->m:Lu0/b$c;

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    iput p1, p0, Lu0/b;->i:F

    goto :goto_2

    .line 17
    :cond_3
    :goto_0
    iput v1, p0, Lu0/b;->i:F

    goto :goto_2

    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    .line 18
    iput p1, p0, Lu0/b;->i:F

    :goto_2
    return-void
.end method

.method public static b(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 25

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 1
    iget-wide v3, v0, Lu0/b;->h:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    const/4 v8, 0x0

    if-nez v7, :cond_0

    .line 2
    iput-wide v1, v0, Lu0/b;->h:J

    .line 3
    iget v1, v0, Lu0/b;->b:F

    invoke-virtual {v0, v1}, Lu0/b;->c(F)V

    return v8

    :cond_0
    sub-long v14, v1, v3

    .line 4
    iput-wide v1, v0, Lu0/b;->h:J

    .line 5
    move-object v1, v0

    check-cast v1, Lu0/c;

    .line 6
    iget-boolean v2, v1, Lu0/c;->t:Z

    const/4 v3, 0x0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, 0x1

    if-eqz v2, :cond_2

    .line 7
    iget v2, v1, Lu0/c;->s:F

    cmpl-float v9, v2, v4

    if-eqz v9, :cond_1

    .line 8
    iget-object v9, v1, Lu0/c;->r:Lu0/d;

    float-to-double v10, v2

    .line 9
    iput-wide v10, v9, Lu0/d;->i:D

    .line 10
    iput v4, v1, Lu0/c;->s:F

    .line 11
    :cond_1
    iget-object v2, v1, Lu0/c;->r:Lu0/d;

    .line 12
    iget-wide v9, v2, Lu0/d;->i:D

    double-to-float v2, v9

    .line 13
    iput v2, v1, Lu0/b;->b:F

    .line 14
    iput v3, v1, Lu0/b;->a:F

    .line 15
    iput-boolean v8, v1, Lu0/c;->t:Z

    goto/16 :goto_2

    .line 16
    :cond_2
    iget v2, v1, Lu0/c;->s:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_3

    .line 17
    iget-object v2, v1, Lu0/c;->r:Lu0/d;

    .line 18
    iget-wide v9, v2, Lu0/d;->i:D

    .line 19
    iget v9, v1, Lu0/b;->b:F

    float-to-double v9, v9

    iget v11, v1, Lu0/b;->a:F

    float-to-double v11, v11

    const-wide/16 v16, 0x2

    div-long v23, v14, v16

    move-object/from16 v16, v2

    move-wide/from16 v17, v9

    move-wide/from16 v19, v11

    move-wide/from16 v21, v23

    invoke-virtual/range {v16 .. v22}, Lu0/d;->b(DDJ)Lu0/b$g;

    move-result-object v2

    .line 20
    iget-object v9, v1, Lu0/c;->r:Lu0/d;

    iget v10, v1, Lu0/c;->s:F

    float-to-double v10, v10

    .line 21
    iput-wide v10, v9, Lu0/d;->i:D

    .line 22
    iput v4, v1, Lu0/c;->s:F

    .line 23
    iget v10, v2, Lu0/b$g;->a:F

    float-to-double v10, v10

    iget v2, v2, Lu0/b$g;->b:F

    float-to-double v12, v2

    move-object/from16 v18, v9

    move-wide/from16 v19, v10

    move-wide/from16 v21, v12

    invoke-virtual/range {v18 .. v24}, Lu0/d;->b(DDJ)Lu0/b$g;

    move-result-object v2

    .line 24
    iget v9, v2, Lu0/b$g;->a:F

    iput v9, v1, Lu0/b;->b:F

    .line 25
    iget v2, v2, Lu0/b$g;->b:F

    iput v2, v1, Lu0/b;->a:F

    goto :goto_0

    .line 26
    :cond_3
    iget-object v9, v1, Lu0/c;->r:Lu0/d;

    iget v2, v1, Lu0/b;->b:F

    float-to-double v10, v2

    iget v2, v1, Lu0/b;->a:F

    float-to-double v12, v2

    invoke-virtual/range {v9 .. v15}, Lu0/d;->b(DDJ)Lu0/b$g;

    move-result-object v2

    .line 27
    iget v9, v2, Lu0/b$g;->a:F

    iput v9, v1, Lu0/b;->b:F

    .line 28
    iget v2, v2, Lu0/b$g;->b:F

    iput v2, v1, Lu0/b;->a:F

    .line 29
    :goto_0
    iget v2, v1, Lu0/b;->b:F

    iget v9, v1, Lu0/b;->g:F

    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lu0/b;->b:F

    .line 30
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Lu0/b;->b:F

    .line 31
    iget v9, v1, Lu0/b;->a:F

    .line 32
    iget-object v10, v1, Lu0/c;->r:Lu0/d;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v11, v9

    iget-wide v13, v10, Lu0/d;->e:D

    cmpg-double v9, v11, v13

    if-gez v9, :cond_4

    .line 34
    iget-wide v11, v10, Lu0/d;->i:D

    double-to-float v9, v11

    sub-float/2addr v2, v9

    .line 35
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v11, v2

    iget-wide v9, v10, Lu0/d;->d:D

    cmpg-double v2, v11, v9

    if-gez v2, :cond_4

    move v2, v7

    goto :goto_1

    :cond_4
    move v2, v8

    :goto_1
    if-eqz v2, :cond_5

    .line 36
    iget-object v2, v1, Lu0/c;->r:Lu0/d;

    .line 37
    iget-wide v9, v2, Lu0/d;->i:D

    double-to-float v2, v9

    .line 38
    iput v2, v1, Lu0/b;->b:F

    .line 39
    iput v3, v1, Lu0/b;->a:F

    :goto_2
    move v1, v7

    goto :goto_3

    :cond_5
    move v1, v8

    .line 40
    :goto_3
    iget v2, v0, Lu0/b;->b:F

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v0, Lu0/b;->b:F

    .line 41
    iget v3, v0, Lu0/b;->g:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lu0/b;->b:F

    .line 42
    invoke-virtual {v0, v2}, Lu0/b;->c(F)V

    if-eqz v1, :cond_9

    .line 43
    iput-boolean v8, v0, Lu0/b;->f:Z

    .line 44
    invoke-static {}, Lu0/a;->a()Lu0/a;

    move-result-object v2

    .line 45
    iget-object v3, v2, Lu0/a;->a:Lp/g;

    invoke-virtual {v3, v0}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v3, v2, Lu0/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_6

    .line 47
    iget-object v4, v2, Lu0/a;->b:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v4, v3, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 48
    iput-boolean v7, v2, Lu0/a;->f:Z

    .line 49
    :cond_6
    iput-wide v5, v0, Lu0/b;->h:J

    .line 50
    iput-boolean v8, v0, Lu0/b;->c:Z

    .line 51
    :goto_4
    iget-object v2, v0, Lu0/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_8

    .line 52
    iget-object v2, v0, Lu0/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 53
    iget-object v2, v0, Lu0/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu0/b$h;

    invoke-interface {v2}, Lu0/b$h;->a()V

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 54
    :cond_8
    iget-object v2, v0, Lu0/b;->j:Ljava/util/ArrayList;

    invoke-static {v2}, Lu0/b;->b(Ljava/util/ArrayList;)V

    :cond_9
    return v1
.end method

.method public final c(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu0/b;->e:Landroidx/fragment/app/q;

    iget-object v1, p0, Lu0/b;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/q;->t(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lu0/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lu0/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lu0/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu0/b$i;

    invoke-interface {v0}, Lu0/b$i;->a()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lu0/b;->k:Ljava/util/ArrayList;

    invoke-static {p1}, Lu0/b;->b(Ljava/util/ArrayList;)V

    return-void
.end method
