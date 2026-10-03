.class public final Li1/w;
.super Li1/v;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Li1/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Landroid/view/View;F)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V

    return-void
.end method

.method public final B(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final C(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final D(Landroid/view/View;IIII)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void
.end method

.method public final u(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionVisibility(I)V

    return-void
.end method

.method public final z(Landroid/view/View;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    move-result p1

    return p1
.end method
