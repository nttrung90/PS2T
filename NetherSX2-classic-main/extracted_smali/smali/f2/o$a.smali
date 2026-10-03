.class public final Lf2/o$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf2/o;


# direct methods
.method public constructor <init>(Lf2/o;)V
    .locals 0

    iput-object p1, p0, Lf2/o$a;->a:Lf2/o;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/o$a;->a:Lf2/o;

    iget-object v1, v0, Lf2/o;->c:Landroid/animation/ValueAnimator;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, v0, Lf2/o;->c:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method
