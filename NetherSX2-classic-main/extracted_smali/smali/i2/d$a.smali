.class public final Li2/d$a;
.super Landroidx/fragment/app/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/q;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/Object;)F
    .locals 1

    .line 1
    check-cast p1, Li2/d;

    .line 2
    iget p1, p1, Li2/d;->q:F

    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr p1, v0

    return p1
.end method

.method public final t(Ljava/lang/Object;F)V
    .locals 1

    .line 1
    check-cast p1, Li2/d;

    const v0, 0x461c4000    # 10000.0f

    div-float/2addr p2, v0

    .line 2
    invoke-virtual {p1, p2}, Li2/d;->j(F)V

    return-void
.end method
