.class public final Li2/j;
.super Li2/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li2/h<",
        "Li2/p;",
        ">;"
    }
.end annotation


# instance fields
.field public c:F

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>(Li2/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Li2/h;-><init>(Li2/c;)V

    const/high16 p1, 0x43960000    # 300.0f

    .line 2
    iput p1, p0, Li2/j;->c:F

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V
    .locals 5

    cmpl-float v0, p3, p4

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Li2/j;->c:F

    neg-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Li2/j;->e:F

    mul-float v4, v3, v2

    sub-float v4, v0, v4

    mul-float/2addr v4, p3

    add-float/2addr v4, v1

    neg-float p3, v0

    div-float/2addr p3, v2

    mul-float v1, v3, v2

    sub-float/2addr v0, v1

    mul-float/2addr v0, p4

    add-float/2addr v0, p3

    mul-float/2addr v3, v2

    add-float/2addr v3, v0

    .line 2
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p3, 0x1

    .line 3
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Li2/j;->d:F

    neg-float p5, p4

    div-float/2addr p5, v2

    div-float/2addr p4, v2

    invoke-direct {p3, v4, p5, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 6
    iget p4, p0, Li2/j;->e:F

    invoke-virtual {p1, p3, p4, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    .line 1
    iget-object v0, p0, Li2/h;->a:Li2/c;

    check-cast v0, Li2/p;

    iget v0, v0, Li2/c;->d:I

    iget-object v1, p0, Li2/h;->b:Li2/g;

    .line 2
    iget v1, v1, Li2/g;->l:I

    .line 3
    invoke-static {v0, v1}, Ln2/e;->l(II)I

    move-result v0

    .line 4
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Li2/j;->c:F

    neg-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Li2/j;->d:F

    neg-float v5, v4

    div-float/2addr v5, v3

    div-float/2addr v1, v3

    div-float/2addr v4, v3

    invoke-direct {v0, v2, v5, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 8
    iget v1, p0, Li2/j;->e:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Li2/h;->a:Li2/c;

    check-cast v0, Li2/p;

    iget v0, v0, Li2/c;->a:I

    return v0
.end method
