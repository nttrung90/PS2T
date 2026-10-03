.class public Lf2/y;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    iput p1, p0, Lf2/y;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const p3, 0x7f0401c4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    iput p1, p0, Lf2/y;->c:I

    return-void
.end method


# virtual methods
.method public final b(IZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 2
    iput p1, p0, Lf2/y;->c:I

    :cond_0
    return-void
.end method

.method public final getUserSetVisibility()I
    .locals 1

    iget v0, p0, Lf2/y;->c:I

    return v0
.end method

.method public setVisibility(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lf2/y;->b(IZ)V

    return-void
.end method
