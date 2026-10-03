.class public final Li2/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Li2/b;


# direct methods
.method public constructor <init>(Li2/b;)V
    .locals 0

    iput-object p1, p0, Li2/b$b;->c:Li2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Li2/b$b;->c:Li2/b;

    .line 2
    invoke-virtual {v0}, Li2/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Li2/g;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v1, v2, v2, v3}, Li2/g;->g(ZZZ)Z

    .line 4
    invoke-virtual {v0}, Li2/b;->getProgressDrawable()Li2/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Li2/b;->getProgressDrawable()Li2/d;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    :cond_0
    invoke-virtual {v0}, Li2/b;->getIndeterminateDrawable()Li2/i;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Li2/b;->getIndeterminateDrawable()Li2/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    if-eqz v2, :cond_3

    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_3
    iget-object v0, p0, Li2/b$b;->c:Li2/b;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
