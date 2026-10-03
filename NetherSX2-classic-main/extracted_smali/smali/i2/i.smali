.class public final Li2/i;
.super Li2/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Li2/c;",
        ">",
        "Li2/g;"
    }
.end annotation


# instance fields
.field public n:Li2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li2/h<",
            "TS;>;"
        }
    .end annotation
.end field

.field public o:Lj/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/b;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Li2/c;Li2/h;Lj/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Li2/c;",
            "Li2/h<",
            "TS;>;",
            "Lj/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Li2/g;-><init>(Landroid/content/Context;Li2/c;)V

    .line 2
    iput-object p3, p0, Li2/i;->n:Li2/h;

    .line 3
    iput-object p0, p3, Li2/h;->b:Li2/g;

    .line 4
    iput-object p4, p0, Li2/i;->o:Lj/b;

    .line 5
    iput-object p0, p4, Lj/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget-object v0, p0, Li2/i;->n:Li2/h;

    invoke-virtual {p0}, Li2/g;->b()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Li2/h;->d(Landroid/graphics/Canvas;F)V

    .line 5
    iget-object v0, p0, Li2/i;->n:Li2/h;

    iget-object v1, p0, Li2/g;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Li2/h;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Li2/i;->o:Lj/b;

    iget-object v2, v1, Lj/b;->c:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 7
    iget-object v4, p0, Li2/i;->n:Li2/h;

    iget-object v6, p0, Li2/g;->k:Landroid/graphics/Paint;

    iget-object v1, v1, Lj/b;->b:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, [F

    mul-int/lit8 v5, v0, 0x2

    aget v7, v3, v5

    check-cast v1, [F

    add-int/lit8 v5, v5, 0x1

    aget v8, v1, v5

    check-cast v2, [I

    aget v9, v2, v0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Li2/h;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Li2/i;->n:Li2/h;

    invoke-virtual {v0}, Li2/h;->c()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Li2/i;->n:Li2/h;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    return v0
.end method

.method public final h(ZZZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Li2/g;->h(ZZZ)Z

    move-result p2

    .line 2
    invoke-virtual {p0}, Li2/g;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Li2/i;->o:Lj/b;

    invoke-virtual {v0}, Lj/b;->c()V

    .line 4
    :cond_0
    iget-object v0, p0, Li2/g;->e:Li2/a;

    iget-object v1, p0, Li2/g;->c:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Li2/a;->a(Landroid/content/ContentResolver;)F

    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Li2/i;->o:Lj/b;

    invoke-virtual {p1}, Lj/b;->i()V

    :cond_2
    :goto_0
    return p2
.end method
