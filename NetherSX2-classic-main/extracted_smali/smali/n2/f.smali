.class public Ln2/f;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Ln2/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln2/f$b;
    }
.end annotation


# static fields
.field public static final A:Landroid/graphics/Paint;

.field public static final z:Ljava/lang/String;


# instance fields
.field public c:Ln2/f$b;

.field public final d:[Ln2/k$g;

.field public final e:[Ln2/k$g;

.field public final f:Ljava/util/BitSet;

.field public g:Z

.field public final h:Landroid/graphics/Matrix;

.field public final i:Landroid/graphics/Path;

.field public final j:Landroid/graphics/Path;

.field public final k:Landroid/graphics/RectF;

.field public final l:Landroid/graphics/RectF;

.field public final m:Landroid/graphics/Region;

.field public final n:Landroid/graphics/Region;

.field public o:Ln2/i;

.field public final p:Landroid/graphics/Paint;

.field public final q:Landroid/graphics/Paint;

.field public final r:Lm2/a;

.field public final s:Ln2/f$a;

.field public final t:Ln2/j;

.field public u:Landroid/graphics/PorterDuffColorFilter;

.field public v:Landroid/graphics/PorterDuffColorFilter;

.field public w:I

.field public final x:Landroid/graphics/RectF;

.field public y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ln2/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln2/f;->z:Ljava/lang/String;

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Ln2/f;->A:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ln2/i;

    invoke-direct {v0}, Ln2/i;-><init>()V

    invoke-direct {p0, v0}, Ln2/f;-><init>(Ln2/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3, p4}, Ln2/i;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Ln2/i$a;

    move-result-object p1

    invoke-virtual {p1}, Ln2/i$a;->a()Ln2/i;

    move-result-object p1

    invoke-direct {p0, p1}, Ln2/f;-><init>(Ln2/i;)V

    return-void
.end method

.method public constructor <init>(Ln2/f$b;)V
    .locals 5

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Ln2/k$g;

    .line 5
    iput-object v1, p0, Ln2/f;->d:[Ln2/k$g;

    new-array v0, v0, [Ln2/k$g;

    .line 6
    iput-object v0, p0, Ln2/f;->e:[Ln2/k$g;

    .line 7
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Ln2/f;->f:Ljava/util/BitSet;

    .line 8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ln2/f;->h:Landroid/graphics/Matrix;

    .line 9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ln2/f;->i:Landroid/graphics/Path;

    .line 10
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ln2/f;->j:Landroid/graphics/Path;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ln2/f;->k:Landroid/graphics/RectF;

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ln2/f;->l:Landroid/graphics/RectF;

    .line 13
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Ln2/f;->m:Landroid/graphics/Region;

    .line 14
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Ln2/f;->n:Landroid/graphics/Region;

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Ln2/f;->p:Landroid/graphics/Paint;

    .line 16
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Ln2/f;->q:Landroid/graphics/Paint;

    .line 17
    new-instance v3, Lm2/a;

    invoke-direct {v3}, Lm2/a;-><init>()V

    iput-object v3, p0, Ln2/f;->r:Lm2/a;

    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 19
    sget-object v3, Ln2/j$a;->a:Ln2/j;

    goto :goto_0

    .line 20
    :cond_0
    new-instance v3, Ln2/j;

    invoke-direct {v3}, Ln2/j;-><init>()V

    :goto_0
    iput-object v3, p0, Ln2/f;->t:Ln2/j;

    .line 21
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Ln2/f;->x:Landroid/graphics/RectF;

    .line 22
    iput-boolean v1, p0, Ln2/f;->y:Z

    .line 23
    iput-object p1, p0, Ln2/f;->c:Ln2/f$b;

    .line 24
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    invoke-virtual {p0}, Ln2/f;->x()Z

    .line 27
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Ln2/f;->w([I)Z

    .line 28
    new-instance p1, Ln2/f$a;

    invoke-direct {p1, p0}, Ln2/f$a;-><init>(Ln2/f;)V

    iput-object p1, p0, Ln2/f;->s:Ln2/f$a;

    return-void
.end method

.method public constructor <init>(Ln2/i;)V
    .locals 1

    .line 3
    new-instance v0, Ln2/f$b;

    invoke-direct {v0, p1}, Ln2/f$b;-><init>(Ln2/i;)V

    invoke-direct {p0, v0}, Ln2/f;-><init>(Ln2/f$b;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ln2/f;->t:Ln2/j;

    iget-object v1, p0, Ln2/f;->c:Ln2/f$b;

    iget-object v2, v1, Ln2/f$b;->a:Ln2/i;

    iget v3, v1, Ln2/f$b;->j:F

    iget-object v4, p0, Ln2/f;->s:Ln2/f$a;

    move-object v1, v2

    move v2, v3

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ln2/j;->b(Ln2/i;FLandroid/graphics/RectF;Ln2/j$b;Landroid/graphics/Path;)V

    .line 2
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget v0, v0, Ln2/f$b;->i:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ln2/f;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    iget-object v0, p0, Ln2/f;->h:Landroid/graphics/Matrix;

    iget-object v1, p0, Ln2/f;->c:Ln2/f$b;

    iget v1, v1, Ln2/f$b;->i:F

    .line 5
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v3

    .line 6
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 7
    iget-object p1, p0, Ln2/f;->h:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 8
    :cond_0
    iget-object p1, p0, Ln2/f;->x:Landroid/graphics/RectF;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public final c(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eqz p4, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Ln2/f;->d(I)I

    move-result p1

    .line 3
    :cond_1
    iput p1, p0, Ln2/f;->w:I

    .line 4
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 5
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Ln2/f;->d(I)I

    move-result p2

    .line 7
    iput p2, p0, Ln2/f;->w:I

    if-eq p2, p1, :cond_3

    .line 8
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    move-object p3, p1

    :goto_2
    return-object p3
.end method

.method public final d(I)I
    .locals 7

    .line 1
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget v1, v0, Ln2/f$b;->n:F

    .line 2
    iget v2, v0, Ln2/f$b;->o:F

    add-float/2addr v1, v2

    .line 3
    iget v2, v0, Ln2/f$b;->m:F

    add-float/2addr v1, v2

    .line 4
    iget-object v0, v0, Ln2/f$b;->b:Lc2/a;

    if-eqz v0, :cond_4

    .line 5
    iget-boolean v2, v0, Lc2/a;->a:Z

    if-eqz v2, :cond_4

    const/16 v2, 0xff

    .line 6
    invoke-static {p1, v2}, Lc0/a;->e(II)I

    move-result v3

    iget v4, v0, Lc2/a;->d:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 7
    iget v3, v0, Lc2/a;->e:F

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-lez v5, :cond_2

    cmpg-float v5, v1, v4

    if-gtz v5, :cond_1

    goto :goto_1

    :cond_1
    div-float/2addr v1, v3

    const/high16 v3, 0x40900000    # 4.5f

    float-to-double v5, v1

    .line 8
    invoke-static {v5, v6}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v5

    double-to-float v1, v5

    mul-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v4

    .line 10
    :goto_2
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 11
    invoke-static {p1, v2}, Lc0/a;->e(II)I

    move-result p1

    .line 12
    iget v2, v0, Lc2/a;->b:I

    .line 13
    invoke-static {p1, v2, v1}, Ln2/e;->v(IIF)I

    move-result p1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    .line 14
    iget v0, v0, Lc2/a;->c:I

    if-eqz v0, :cond_3

    .line 15
    sget v1, Lc2/a;->f:I

    .line 16
    invoke-static {v0, v1}, Lc0/a;->e(II)I

    move-result v0

    .line 17
    invoke-static {v0, p1}, Lc0/a;->b(II)I

    move-result p1

    .line 18
    :cond_3
    invoke-static {p1, v3}, Lc0/a;->e(II)I

    move-result p1

    :cond_4
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget-object v0, p0, Ln2/f;->p:Landroid/graphics/Paint;

    iget-object v1, p0, Ln2/f;->u:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2
    iget-object v0, p0, Ln2/f;->p:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 3
    iget-object v1, p0, Ln2/f;->p:Landroid/graphics/Paint;

    iget-object v2, p0, Ln2/f;->c:Ln2/f$b;

    iget v2, v2, Ln2/f$b;->l:I

    ushr-int/lit8 v3, v2, 0x7

    add-int/2addr v2, v3

    mul-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    iget-object v1, p0, Ln2/f;->q:Landroid/graphics/Paint;

    iget-object v2, p0, Ln2/f;->v:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 5
    iget-object v1, p0, Ln2/f;->q:Landroid/graphics/Paint;

    iget-object v2, p0, Ln2/f;->c:Ln2/f$b;

    iget v2, v2, Ln2/f$b;->k:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object v1, p0, Ln2/f;->q:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 7
    iget-object v2, p0, Ln2/f;->q:Landroid/graphics/Paint;

    iget-object v3, p0, Ln2/f;->c:Ln2/f$b;

    iget v3, v3, Ln2/f$b;->l:I

    ushr-int/lit8 v4, v3, 0x7

    add-int/2addr v3, v4

    mul-int/2addr v3, v1

    ushr-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    iget-boolean v2, p0, Ln2/f;->g:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 9
    invoke-virtual {p0}, Ln2/f;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    iget-object v2, p0, Ln2/f;->q:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    neg-float v2, v2

    .line 11
    iget-object v4, p0, Ln2/f;->c:Ln2/f$b;

    iget-object v4, v4, Ln2/f$b;->a:Ln2/i;

    .line 12
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v5, Ln2/i$a;

    invoke-direct {v5, v4}, Ln2/i$a;-><init>(Ln2/i;)V

    .line 14
    iget-object v6, v4, Ln2/i;->e:Ln2/c;

    .line 15
    instance-of v7, v6, Ln2/g;

    if-eqz v7, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    new-instance v7, Ln2/b;

    invoke-direct {v7, v2, v6}, Ln2/b;-><init>(FLn2/c;)V

    move-object v6, v7

    .line 17
    :goto_1
    iput-object v6, v5, Ln2/i$a;->e:Ln2/c;

    .line 18
    iget-object v6, v4, Ln2/i;->f:Ln2/c;

    .line 19
    instance-of v7, v6, Ln2/g;

    if-eqz v7, :cond_2

    goto :goto_2

    .line 20
    :cond_2
    new-instance v7, Ln2/b;

    invoke-direct {v7, v2, v6}, Ln2/b;-><init>(FLn2/c;)V

    move-object v6, v7

    .line 21
    :goto_2
    iput-object v6, v5, Ln2/i$a;->f:Ln2/c;

    .line 22
    iget-object v6, v4, Ln2/i;->h:Ln2/c;

    .line 23
    instance-of v7, v6, Ln2/g;

    if-eqz v7, :cond_3

    goto :goto_3

    .line 24
    :cond_3
    new-instance v7, Ln2/b;

    invoke-direct {v7, v2, v6}, Ln2/b;-><init>(FLn2/c;)V

    move-object v6, v7

    .line 25
    :goto_3
    iput-object v6, v5, Ln2/i$a;->h:Ln2/c;

    .line 26
    iget-object v4, v4, Ln2/i;->g:Ln2/c;

    .line 27
    instance-of v6, v4, Ln2/g;

    if-eqz v6, :cond_4

    goto :goto_4

    .line 28
    :cond_4
    new-instance v6, Ln2/b;

    invoke-direct {v6, v2, v4}, Ln2/b;-><init>(FLn2/c;)V

    move-object v4, v6

    .line 29
    :goto_4
    iput-object v4, v5, Ln2/i$a;->g:Ln2/c;

    .line 30
    invoke-virtual {v5}, Ln2/i$a;->a()Ln2/i;

    move-result-object v2

    .line 31
    iput-object v2, p0, Ln2/f;->o:Ln2/i;

    .line 32
    iget-object v4, p0, Ln2/f;->t:Ln2/j;

    iget-object v5, p0, Ln2/f;->c:Ln2/f$b;

    iget v5, v5, Ln2/f$b;->j:F

    .line 33
    invoke-virtual {p0}, Ln2/f;->i()Landroid/graphics/RectF;

    move-result-object v6

    iget-object v7, p0, Ln2/f;->j:Landroid/graphics/Path;

    .line 34
    invoke-virtual {v4, v2, v5, v6, v7}, Ln2/j;->a(Ln2/i;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 35
    invoke-virtual {p0}, Ln2/f;->h()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v4, p0, Ln2/f;->i:Landroid/graphics/Path;

    invoke-virtual {p0, v2, v4}, Ln2/f;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 36
    iput-boolean v3, p0, Ln2/f;->g:Z

    .line 37
    :cond_5
    iget-object v2, p0, Ln2/f;->c:Ln2/f$b;

    iget v4, v2, Ln2/f$b;->p:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v4, v6, :cond_8

    iget v2, v2, Ln2/f$b;->q:I

    if-lez v2, :cond_8

    if-eq v4, v5, :cond_7

    .line 38
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 39
    invoke-virtual {p0}, Ln2/f;->n()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Ln2/f;->i:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->isConvex()Z

    move-result v4

    if-nez v4, :cond_6

    const/16 v4, 0x1d

    if-ge v2, v4, :cond_6

    move v2, v6

    goto :goto_5

    :cond_6
    move v2, v3

    :goto_5
    if-eqz v2, :cond_8

    :cond_7
    move v2, v6

    goto :goto_6

    :cond_8
    move v2, v3

    :goto_6
    if-nez v2, :cond_9

    goto/16 :goto_7

    .line 40
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 41
    iget-object v2, p0, Ln2/f;->c:Ln2/f$b;

    iget v4, v2, Ln2/f$b;->r:I

    int-to-double v7, v4

    iget v2, v2, Ln2/f$b;->s:I

    int-to-double v9, v2

    .line 42
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    double-to-int v2, v9

    .line 43
    invoke-virtual {p0}, Ln2/f;->j()I

    move-result v4

    int-to-float v2, v2

    int-to-float v4, v4

    .line 44
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 45
    iget-boolean v2, p0, Ln2/f;->y:Z

    if-nez v2, :cond_a

    .line 46
    invoke-virtual {p0, p1}, Ln2/f;->e(Landroid/graphics/Canvas;)V

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    .line 48
    :cond_a
    iget-object v2, p0, Ln2/f;->x:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 49
    iget-object v4, p0, Ln2/f;->x:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    float-to-int v4, v4

    if-ltz v2, :cond_f

    if-ltz v4, :cond_f

    .line 50
    iget-object v7, p0, Ln2/f;->x:Landroid/graphics/RectF;

    .line 51
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Ln2/f;->c:Ln2/f$b;

    iget v8, v8, Ln2/f$b;->q:I

    mul-int/2addr v8, v5

    add-int/2addr v8, v7

    add-int/2addr v8, v2

    iget-object v7, p0, Ln2/f;->x:Landroid/graphics/RectF;

    .line 52
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    iget-object v9, p0, Ln2/f;->c:Ln2/f$b;

    iget v9, v9, Ln2/f$b;->q:I

    mul-int/2addr v9, v5

    add-int/2addr v9, v7

    add-int/2addr v9, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 53
    invoke-static {v8, v9, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 54
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 55
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Ln2/f;->c:Ln2/f$b;

    iget v9, v9, Ln2/f$b;->q:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v2

    int-to-float v2, v8

    .line 56
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Ln2/f;->c:Ln2/f$b;

    iget v9, v9, Ln2/f$b;->q:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v4

    int-to-float v4, v8

    neg-float v8, v2

    neg-float v9, v4

    .line 57
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 58
    invoke-virtual {p0, v7}, Ln2/f;->e(Landroid/graphics/Canvas;)V

    const/4 v7, 0x0

    .line 59
    invoke-virtual {p1, v5, v2, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 60
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 62
    :goto_7
    iget-object v2, p0, Ln2/f;->c:Ln2/f$b;

    iget-object v4, v2, Ln2/f$b;->u:Landroid/graphics/Paint$Style;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v4, v5, :cond_b

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v4, v5, :cond_c

    :cond_b
    move v3, v6

    :cond_c
    if-eqz v3, :cond_d

    .line 63
    iget-object v6, p0, Ln2/f;->p:Landroid/graphics/Paint;

    iget-object v7, p0, Ln2/f;->i:Landroid/graphics/Path;

    iget-object v8, v2, Ln2/f$b;->a:Ln2/i;

    invoke-virtual {p0}, Ln2/f;->h()Landroid/graphics/RectF;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Ln2/f;->f(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Ln2/i;Landroid/graphics/RectF;)V

    .line 64
    :cond_d
    invoke-virtual {p0}, Ln2/f;->l()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 65
    invoke-virtual {p0, p1}, Ln2/f;->g(Landroid/graphics/Canvas;)V

    .line 66
    :cond_e
    iget-object p1, p0, Ln2/f;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 67
    iget-object p1, p0, Ln2/f;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    .line 68
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid shadow bounds. Check that the treatments result in a valid path."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ln2/f;->f:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    sget-object v0, Ln2/f;->z:Ljava/lang/String;

    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget v0, v0, Ln2/f$b;->r:I

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Ln2/f;->i:Landroid/graphics/Path;

    iget-object v1, p0, Ln2/f;->r:Lm2/a;

    .line 5
    iget-object v1, v1, Lm2/a;->a:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 7
    iget-object v1, p0, Ln2/f;->d:[Ln2/k$g;

    aget-object v1, v1, v0

    iget-object v2, p0, Ln2/f;->r:Lm2/a;

    iget-object v3, p0, Ln2/f;->c:Ln2/f$b;

    iget v3, v3, Ln2/f$b;->q:I

    .line 8
    sget-object v4, Ln2/k$g;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4, v2, v3, p1}, Ln2/k$g;->a(Landroid/graphics/Matrix;Lm2/a;ILandroid/graphics/Canvas;)V

    .line 9
    iget-object v1, p0, Ln2/f;->e:[Ln2/k$g;

    aget-object v1, v1, v0

    iget-object v2, p0, Ln2/f;->r:Lm2/a;

    iget-object v3, p0, Ln2/f;->c:Ln2/f$b;

    iget v3, v3, Ln2/f$b;->q:I

    .line 10
    invoke-virtual {v1, v4, v2, v3, p1}, Ln2/k$g;->a(Landroid/graphics/Matrix;Lm2/a;ILandroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iget-boolean v0, p0, Ln2/f;->y:Z

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget v1, v0, Ln2/f$b;->r:I

    int-to-double v1, v1

    iget v0, v0, Ln2/f$b;->s:I

    int-to-double v3, v0

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-int v0, v3

    .line 14
    invoke-virtual {p0}, Ln2/f;->j()I

    move-result v1

    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    .line 15
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16
    iget-object v2, p0, Ln2/f;->i:Landroid/graphics/Path;

    sget-object v3, Ln2/f;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float v0, v0

    int-to-float v1, v1

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Ln2/i;Landroid/graphics/RectF;)V
    .locals 1

    .line 1
    invoke-virtual {p4, p5}, Ln2/i;->e(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p3, p4, Ln2/i;->f:Ln2/c;

    .line 3
    invoke-interface {p3, p5}, Ln2/c;->a(Landroid/graphics/RectF;)F

    move-result p3

    iget-object p4, p0, Ln2/f;->c:Ln2/f$b;

    iget p4, p4, Ln2/f$b;->j:F

    mul-float/2addr p3, p4

    .line 4
    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public g(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v2, p0, Ln2/f;->q:Landroid/graphics/Paint;

    iget-object v3, p0, Ln2/f;->j:Landroid/graphics/Path;

    iget-object v4, p0, Ln2/f;->o:Ln2/i;

    .line 2
    invoke-virtual {p0}, Ln2/f;->i()Landroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 3
    invoke-virtual/range {v0 .. v5}, Ln2/f;->f(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Ln2/i;Landroid/graphics/RectF;)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget v0, v0, Ln2/f$b;->l:I

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget v0, v0, Ln2/f$b;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ln2/f;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ln2/f;->k()F

    move-result v0

    iget-object v1, p0, Ln2/f;->c:Ln2/f$b;

    iget v1, v1, Ln2/f$b;->j:F

    mul-float/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Ln2/f;->h()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Ln2/f;->i:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v1}, Ln2/f;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 6
    iget-object v0, p0, Ln2/f;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    .line 7
    :cond_2
    :try_start_0
    iget-object v0, p0, Ln2/f;->i:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget-object v0, v0, Ln2/f$b;->h:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public final getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln2/f;->m:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3
    invoke-virtual {p0}, Ln2/f;->h()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Ln2/f;->i:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v1}, Ln2/f;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 4
    iget-object v0, p0, Ln2/f;->n:Landroid/graphics/Region;

    iget-object v1, p0, Ln2/f;->i:Landroid/graphics/Path;

    iget-object v2, p0, Ln2/f;->m:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 5
    iget-object v0, p0, Ln2/f;->m:Landroid/graphics/Region;

    iget-object v1, p0, Ln2/f;->n:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 6
    iget-object v0, p0, Ln2/f;->m:Landroid/graphics/Region;

    return-object v0
.end method

.method public final h()Landroid/graphics/RectF;
    .locals 2

    .line 1
    iget-object v0, p0, Ln2/f;->k:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Ln2/f;->k:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final i()Landroid/graphics/RectF;
    .locals 2

    .line 1
    iget-object v0, p0, Ln2/f;->l:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ln2/f;->h()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2
    invoke-virtual {p0}, Ln2/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ln2/f;->q:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Ln2/f;->l:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 5
    iget-object v0, p0, Ln2/f;->l:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln2/f;->g:Z

    .line 2
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget-object v0, v0, Ln2/f$b;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget-object v0, v0, Ln2/f$b;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget-object v0, v0, Ln2/f$b;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget-object v0, v0, Ln2/f$b;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final j()I
    .locals 5

    .line 1
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget v1, v0, Ln2/f$b;->r:I

    int-to-double v1, v1

    iget v0, v0, Ln2/f$b;->s:I

    int-to-double v3, v0

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-int v0, v3

    return v0
.end method

.method public final k()F
    .locals 2

    .line 1
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget-object v0, v0, Ln2/f$b;->a:Ln2/i;

    .line 2
    iget-object v0, v0, Ln2/i;->e:Ln2/c;

    .line 3
    invoke-virtual {p0}, Ln2/f;->h()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Ln2/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget-object v0, v0, Ln2/f$b;->u:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Ln2/f;->q:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    new-instance v1, Lc2/a;

    invoke-direct {v1, p1}, Lc2/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Ln2/f$b;->b:Lc2/a;

    .line 2
    invoke-virtual {p0}, Ln2/f;->y()V

    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Ln2/f$b;

    iget-object v1, p0, Ln2/f;->c:Ln2/f$b;

    invoke-direct {v0, v1}, Ln2/f$b;-><init>(Ln2/f$b;)V

    .line 2
    iput-object v0, p0, Ln2/f;->c:Ln2/f$b;

    return-object p0
.end method

.method public final n()Z
    .locals 2

    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget-object v0, v0, Ln2/f$b;->a:Ln2/i;

    invoke-virtual {p0}, Ln2/f;->h()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln2/i;->e(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public final o(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget v1, v0, Ln2/f$b;->n:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 2
    iput p1, v0, Ln2/f$b;->n:F

    .line 3
    invoke-virtual {p0}, Ln2/f;->y()V

    :cond_0
    return-void
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln2/f;->g:Z

    .line 2
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ln2/f;->w([I)Z

    move-result p1

    .line 2
    invoke-virtual {p0}, Ln2/f;->x()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Ln2/f;->invalidateSelf()V

    :cond_2
    return p1
.end method

.method public final p(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget-object v1, v0, Ln2/f$b;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 2
    iput-object p1, v0, Ln2/f$b;->c:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Ln2/f;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final q(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget v1, v0, Ln2/f$b;->j:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 2
    iput p1, v0, Ln2/f$b;->j:F

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Ln2/f;->g:Z

    .line 4
    invoke-virtual {p0}, Ln2/f;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln2/f;->r:Lm2/a;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Lm2/a;->a(I)V

    .line 2
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ln2/f$b;->t:Z

    .line 3
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final s(FI)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ln2/f;->v(F)V

    .line 2
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln2/f;->u(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget v1, v0, Ln2/f$b;->l:I

    if-eq v1, p1, :cond_0

    .line 2
    iput p1, v0, Ln2/f$b;->l:I

    .line 3
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln2/f;->c:Ln2/f$b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setShapeAppearanceModel(Ln2/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iput-object p1, v0, Ln2/f$b;->a:Ln2/i;

    .line 2
    invoke-virtual {p0}, Ln2/f;->invalidateSelf()V

    return-void
.end method

.method public final setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln2/f;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iput-object p1, v0, Ln2/f$b;->f:Landroid/content/res/ColorStateList;

    .line 2
    invoke-virtual {p0}, Ln2/f;->x()Z

    .line 3
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget-object v1, v0, Ln2/f$b;->g:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    .line 2
    iput-object p1, v0, Ln2/f$b;->g:Landroid/graphics/PorterDuff$Mode;

    .line 3
    invoke-virtual {p0}, Ln2/f;->x()Z

    .line 4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final t(FLandroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ln2/f;->v(F)V

    .line 2
    invoke-virtual {p0, p2}, Ln2/f;->u(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final u(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget-object v1, v0, Ln2/f$b;->d:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 2
    iput-object p1, v0, Ln2/f$b;->d:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Ln2/f;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final v(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iput p1, v0, Ln2/f$b;->k:F

    .line 2
    invoke-virtual {p0}, Ln2/f;->invalidateSelf()V

    return-void
.end method

.method public final w([I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget-object v0, v0, Ln2/f$b;->c:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln2/f;->p:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 3
    iget-object v2, p0, Ln2/f;->c:Ln2/f$b;

    iget-object v2, v2, Ln2/f$b;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Ln2/f;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Ln2/f;->c:Ln2/f$b;

    iget-object v2, v2, Ln2/f$b;->d:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p0, Ln2/f;->q:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 7
    iget-object v3, p0, Ln2/f;->c:Ln2/f$b;

    iget-object v3, v3, Ln2/f$b;->d:Landroid/content/res/ColorStateList;

    .line 8
    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v2, p1, :cond_1

    .line 9
    iget-object v0, p0, Ln2/f;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method public final x()Z
    .locals 7

    .line 1
    iget-object v0, p0, Ln2/f;->u:Landroid/graphics/PorterDuffColorFilter;

    .line 2
    iget-object v1, p0, Ln2/f;->v:Landroid/graphics/PorterDuffColorFilter;

    .line 3
    iget-object v2, p0, Ln2/f;->c:Ln2/f$b;

    iget-object v3, v2, Ln2/f$b;->f:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Ln2/f$b;->g:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Ln2/f;->p:Landroid/graphics/Paint;

    const/4 v5, 0x1

    .line 4
    invoke-virtual {p0, v3, v2, v4, v5}, Ln2/f;->c(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Ln2/f;->u:Landroid/graphics/PorterDuffColorFilter;

    .line 5
    iget-object v2, p0, Ln2/f;->c:Ln2/f$b;

    iget-object v3, v2, Ln2/f$b;->e:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Ln2/f$b;->g:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Ln2/f;->q:Landroid/graphics/Paint;

    const/4 v6, 0x0

    .line 6
    invoke-virtual {p0, v3, v2, v4, v6}, Ln2/f;->c(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Ln2/f;->v:Landroid/graphics/PorterDuffColorFilter;

    .line 7
    iget-object v2, p0, Ln2/f;->c:Ln2/f$b;

    iget-boolean v3, v2, Ln2/f$b;->t:Z

    if-eqz v3, :cond_0

    .line 8
    iget-object v3, p0, Ln2/f;->r:Lm2/a;

    iget-object v2, v2, Ln2/f$b;->f:Landroid/content/res/ColorStateList;

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 10
    invoke-virtual {v3, v2}, Lm2/a;->a(I)V

    .line 11
    :cond_0
    iget-object v2, p0, Ln2/f;->u:Landroid/graphics/PorterDuffColorFilter;

    .line 12
    invoke-static {v0, v2}, Li0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Ln2/f;->v:Landroid/graphics/PorterDuffColorFilter;

    .line 14
    invoke-static {v1, v0}, Li0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :cond_2
    :goto_0
    return v5
.end method

.method public final y()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    iget v1, v0, Ln2/f$b;->n:F

    .line 2
    iget v2, v0, Ln2/f$b;->o:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v2, v1

    float-to-double v2, v2

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Ln2/f$b;->q:I

    .line 4
    iget-object v0, p0, Ln2/f;->c:Ln2/f$b;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Ln2/f$b;->r:I

    .line 5
    invoke-virtual {p0}, Ln2/f;->x()Z

    .line 6
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
