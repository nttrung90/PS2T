.class public final Li2/l$a;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Li2/l;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-class v0, Ljava/lang/Float;

    const-string v1, "animationFraction"

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Li2/l;

    .line 2
    iget p1, p1, Li2/l;->i:F

    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Li2/l;

    check-cast p2, Ljava/lang/Float;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 3
    iput p2, p1, Li2/l;->i:F

    const v0, 0x43a68000    # 333.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 4
    iget-object v0, p1, Lj/b;->b:Ljava/lang/Object;

    check-cast v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    const/16 v2, 0x29b

    int-to-float v2, v2

    div-float/2addr p2, v2

    .line 5
    iget-object v2, p1, Li2/l;->e:Lz0/b;

    invoke-virtual {v2, p2}, Lz0/d;->getInterpolation(F)F

    move-result v2

    const/4 v3, 0x2

    aput v2, v0, v3

    const/4 v4, 0x1

    aput v2, v0, v4

    const v0, 0x3eff9dbf

    add-float/2addr p2, v0

    .line 6
    iget-object v0, p1, Lj/b;->b:Ljava/lang/Object;

    check-cast v0, [F

    iget-object v2, p1, Li2/l;->e:Lz0/b;

    invoke-virtual {v2, p2}, Lz0/d;->getInterpolation(F)F

    move-result p2

    const/4 v2, 0x4

    aput p2, v0, v2

    const/4 v2, 0x3

    aput p2, v0, v2

    .line 7
    iget-object p2, p1, Lj/b;->b:Ljava/lang/Object;

    check-cast p2, [F

    const/4 v0, 0x5

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, p2, v0

    .line 8
    iget-boolean v0, p1, Li2/l;->h:Z

    if-eqz v0, :cond_0

    aget p2, p2, v2

    cmpg-float p2, p2, v5

    if-gez p2, :cond_0

    .line 9
    iget-object p2, p1, Lj/b;->c:Ljava/lang/Object;

    check-cast p2, [I

    aget v0, p2, v4

    aput v0, p2, v3

    .line 10
    aget v0, p2, v1

    aput v0, p2, v4

    .line 11
    iget-object v0, p1, Li2/l;->f:Li2/p;

    iget-object v0, v0, Li2/c;->c:[I

    iget v2, p1, Li2/l;->g:I

    aget v0, v0, v2

    iget-object v2, p1, Lj/b;->a:Ljava/lang/Object;

    check-cast v2, Li2/i;

    .line 12
    iget v2, v2, Li2/g;->l:I

    .line 13
    invoke-static {v0, v2}, Ln2/e;->l(II)I

    move-result v0

    aput v0, p2, v1

    .line 14
    iput-boolean v1, p1, Li2/l;->h:Z

    .line 15
    :cond_0
    iget-object p1, p1, Lj/b;->a:Ljava/lang/Object;

    check-cast p1, Li2/i;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
