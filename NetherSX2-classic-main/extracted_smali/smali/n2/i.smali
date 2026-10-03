.class public final Ln2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln2/i$a;
    }
.end annotation


# static fields
.field public static final m:Ln2/g;


# instance fields
.field public a:Lv/d;

.field public b:Lv/d;

.field public c:Lv/d;

.field public d:Lv/d;

.field public e:Ln2/c;

.field public f:Ln2/c;

.field public g:Ln2/c;

.field public h:Ln2/c;

.field public i:Ln2/e;

.field public j:Ln2/e;

.field public k:Ln2/e;

.field public l:Ln2/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln2/g;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Ln2/g;-><init>(F)V

    sput-object v0, Ln2/i;->m:Ln2/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ln2/h;

    invoke-direct {v0}, Ln2/h;-><init>()V

    .line 28
    iput-object v0, p0, Ln2/i;->a:Lv/d;

    .line 29
    new-instance v0, Ln2/h;

    invoke-direct {v0}, Ln2/h;-><init>()V

    .line 30
    iput-object v0, p0, Ln2/i;->b:Lv/d;

    .line 31
    new-instance v0, Ln2/h;

    invoke-direct {v0}, Ln2/h;-><init>()V

    .line 32
    iput-object v0, p0, Ln2/i;->c:Lv/d;

    .line 33
    new-instance v0, Ln2/h;

    invoke-direct {v0}, Ln2/h;-><init>()V

    .line 34
    iput-object v0, p0, Ln2/i;->d:Lv/d;

    .line 35
    new-instance v0, Ln2/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln2/a;-><init>(F)V

    iput-object v0, p0, Ln2/i;->e:Ln2/c;

    .line 36
    new-instance v0, Ln2/a;

    invoke-direct {v0, v1}, Ln2/a;-><init>(F)V

    iput-object v0, p0, Ln2/i;->f:Ln2/c;

    .line 37
    new-instance v0, Ln2/a;

    invoke-direct {v0, v1}, Ln2/a;-><init>(F)V

    iput-object v0, p0, Ln2/i;->g:Ln2/c;

    .line 38
    new-instance v0, Ln2/a;

    invoke-direct {v0, v1}, Ln2/a;-><init>(F)V

    iput-object v0, p0, Ln2/i;->h:Ln2/c;

    .line 39
    new-instance v0, Ln2/e;

    invoke-direct {v0}, Ln2/e;-><init>()V

    .line 40
    iput-object v0, p0, Ln2/i;->i:Ln2/e;

    .line 41
    new-instance v0, Ln2/e;

    invoke-direct {v0}, Ln2/e;-><init>()V

    .line 42
    iput-object v0, p0, Ln2/i;->j:Ln2/e;

    .line 43
    new-instance v0, Ln2/e;

    invoke-direct {v0}, Ln2/e;-><init>()V

    .line 44
    iput-object v0, p0, Ln2/i;->k:Ln2/e;

    .line 45
    new-instance v0, Ln2/e;

    invoke-direct {v0}, Ln2/e;-><init>()V

    .line 46
    iput-object v0, p0, Ln2/i;->l:Ln2/e;

    return-void
.end method

.method public constructor <init>(Ln2/i$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Ln2/i$a;->a:Lv/d;

    .line 3
    iput-object v0, p0, Ln2/i;->a:Lv/d;

    .line 4
    iget-object v0, p1, Ln2/i$a;->b:Lv/d;

    .line 5
    iput-object v0, p0, Ln2/i;->b:Lv/d;

    .line 6
    iget-object v0, p1, Ln2/i$a;->c:Lv/d;

    .line 7
    iput-object v0, p0, Ln2/i;->c:Lv/d;

    .line 8
    iget-object v0, p1, Ln2/i$a;->d:Lv/d;

    .line 9
    iput-object v0, p0, Ln2/i;->d:Lv/d;

    .line 10
    iget-object v0, p1, Ln2/i$a;->e:Ln2/c;

    .line 11
    iput-object v0, p0, Ln2/i;->e:Ln2/c;

    .line 12
    iget-object v0, p1, Ln2/i$a;->f:Ln2/c;

    .line 13
    iput-object v0, p0, Ln2/i;->f:Ln2/c;

    .line 14
    iget-object v0, p1, Ln2/i$a;->g:Ln2/c;

    .line 15
    iput-object v0, p0, Ln2/i;->g:Ln2/c;

    .line 16
    iget-object v0, p1, Ln2/i$a;->h:Ln2/c;

    .line 17
    iput-object v0, p0, Ln2/i;->h:Ln2/c;

    .line 18
    iget-object v0, p1, Ln2/i$a;->i:Ln2/e;

    .line 19
    iput-object v0, p0, Ln2/i;->i:Ln2/e;

    .line 20
    iget-object v0, p1, Ln2/i$a;->j:Ln2/e;

    .line 21
    iput-object v0, p0, Ln2/i;->j:Ln2/e;

    .line 22
    iget-object v0, p1, Ln2/i$a;->k:Ln2/e;

    .line 23
    iput-object v0, p0, Ln2/i;->k:Ln2/e;

    .line 24
    iget-object p1, p1, Ln2/i$a;->l:Ln2/e;

    .line 25
    iput-object p1, p0, Ln2/i;->l:Ln2/e;

    return-void
.end method

.method public static a(Landroid/content/Context;IILn2/c;)Ln2/i$a;
    .locals 6

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move p1, p2

    move-object p0, v0

    .line 2
    :cond_0
    sget-object p2, Ln2/e;->N:[I

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 p2, 0x3

    .line 5
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v1, 0x2

    .line 7
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x1

    .line 8
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 v2, 0x5

    .line 9
    invoke-static {p0, v2, p3}, Ln2/i;->d(Landroid/content/res/TypedArray;ILn2/c;)Ln2/c;

    move-result-object p3

    const/16 v2, 0x8

    .line 10
    invoke-static {p0, v2, p3}, Ln2/i;->d(Landroid/content/res/TypedArray;ILn2/c;)Ln2/c;

    move-result-object v2

    const/16 v3, 0x9

    .line 11
    invoke-static {p0, v3, p3}, Ln2/i;->d(Landroid/content/res/TypedArray;ILn2/c;)Ln2/c;

    move-result-object v3

    const/4 v4, 0x7

    .line 12
    invoke-static {p0, v4, p3}, Ln2/i;->d(Landroid/content/res/TypedArray;ILn2/c;)Ln2/c;

    move-result-object v4

    const/4 v5, 0x6

    .line 13
    invoke-static {p0, v5, p3}, Ln2/i;->d(Landroid/content/res/TypedArray;ILn2/c;)Ln2/c;

    move-result-object p3

    .line 14
    new-instance v5, Ln2/i$a;

    invoke-direct {v5}, Ln2/i$a;-><init>()V

    .line 15
    invoke-static {p2}, Lj3/q;->d(I)Lv/d;

    move-result-object p2

    .line 16
    iput-object p2, v5, Ln2/i$a;->a:Lv/d;

    .line 17
    invoke-static {p2}, Ln2/i$a;->b(Lv/d;)V

    .line 18
    iput-object v2, v5, Ln2/i$a;->e:Ln2/c;

    .line 19
    invoke-static {v0}, Lj3/q;->d(I)Lv/d;

    move-result-object p2

    .line 20
    iput-object p2, v5, Ln2/i$a;->b:Lv/d;

    .line 21
    invoke-static {p2}, Ln2/i$a;->b(Lv/d;)V

    .line 22
    iput-object v3, v5, Ln2/i$a;->f:Ln2/c;

    .line 23
    invoke-static {v1}, Lj3/q;->d(I)Lv/d;

    move-result-object p2

    .line 24
    iput-object p2, v5, Ln2/i$a;->c:Lv/d;

    .line 25
    invoke-static {p2}, Ln2/i$a;->b(Lv/d;)V

    .line 26
    iput-object v4, v5, Ln2/i$a;->g:Ln2/c;

    .line 27
    invoke-static {p1}, Lj3/q;->d(I)Lv/d;

    move-result-object p1

    .line 28
    iput-object p1, v5, Ln2/i$a;->d:Lv/d;

    .line 29
    invoke-static {p1}, Ln2/i$a;->b(Lv/d;)V

    .line 30
    iput-object p3, v5, Ln2/i$a;->h:Ln2/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    throw p1
.end method

.method public static b(Landroid/content/Context;Landroid/util/AttributeSet;II)Ln2/i$a;
    .locals 2

    new-instance v0, Ln2/a;

    const/4 v1, 0x0

    int-to-float v1, v1

    invoke-direct {v0, v1}, Ln2/a;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Ln2/i;->c(Landroid/content/Context;Landroid/util/AttributeSet;IILn2/c;)Ln2/i$a;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Landroid/util/AttributeSet;IILn2/c;)Ln2/i$a;
    .locals 1

    .line 1
    sget-object v0, Ln2/e;->F:[I

    .line 2
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    invoke-static {p0, p3, p2, p4}, Ln2/i;->a(Landroid/content/Context;IILn2/c;)Ln2/i$a;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/res/TypedArray;ILn2/c;)Ln2/c;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 2
    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 3
    new-instance p2, Ln2/a;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Ln2/a;-><init>(F)V

    return-object p2

    :cond_1
    const/4 p0, 0x6

    if-ne v0, p0, :cond_2

    .line 5
    new-instance p0, Ln2/g;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Ln2/g;-><init>(F)V

    return-object p0

    :cond_2
    return-object p2
.end method


# virtual methods
.method public final e(Landroid/graphics/RectF;)Z
    .locals 5

    .line 1
    const-class v0, Ln2/e;

    iget-object v1, p0, Ln2/i;->l:Ln2/e;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Ln2/i;->j:Ln2/e;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ln2/i;->i:Ln2/e;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ln2/i;->k:Ln2/e;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 6
    :goto_0
    iget-object v1, p0, Ln2/i;->e:Ln2/c;

    invoke-interface {v1, p1}, Ln2/c;->a(Landroid/graphics/RectF;)F

    move-result v1

    .line 7
    iget-object v4, p0, Ln2/i;->f:Ln2/c;

    .line 8
    invoke-interface {v4, p1}, Ln2/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Ln2/i;->h:Ln2/c;

    .line 9
    invoke-interface {v4, p1}, Ln2/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Ln2/i;->g:Ln2/c;

    .line 10
    invoke-interface {v4, p1}, Ln2/c;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v3

    .line 11
    :goto_1
    iget-object v1, p0, Ln2/i;->b:Lv/d;

    instance-of v1, v1, Ln2/h;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ln2/i;->a:Lv/d;

    instance-of v1, v1, Ln2/h;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ln2/i;->c:Lv/d;

    instance-of v1, v1, Ln2/h;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ln2/i;->d:Lv/d;

    instance-of v1, v1, Ln2/h;

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    return v2
.end method

.method public final f(F)Ln2/i;
    .locals 1

    .line 1
    new-instance v0, Ln2/i$a;

    invoke-direct {v0, p0}, Ln2/i$a;-><init>(Ln2/i;)V

    .line 2
    invoke-virtual {v0, p1}, Ln2/i$a;->c(F)Ln2/i$a;

    invoke-virtual {v0}, Ln2/i$a;->a()Ln2/i;

    move-result-object p1

    return-object p1
.end method
