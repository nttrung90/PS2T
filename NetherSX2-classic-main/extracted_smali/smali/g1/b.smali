.class public final Lg1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lg1/d$a;

.field public final synthetic b:Lg1/d;


# direct methods
.method public constructor <init>(Lg1/d;Lg1/d$a;)V
    .locals 0

    iput-object p1, p0, Lg1/b;->b:Lg1/d;

    iput-object p2, p0, Lg1/b;->a:Lg1/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lg1/b;->b:Lg1/d;

    iget-object v1, p0, Lg1/b;->a:Lg1/d$a;

    invoke-virtual {v0, p1, v1}, Lg1/d;->d(FLg1/d$a;)V

    .line 3
    iget-object v0, p0, Lg1/b;->b:Lg1/d;

    iget-object v1, p0, Lg1/b;->a:Lg1/d$a;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lg1/d;->a(FLg1/d$a;Z)V

    .line 4
    iget-object p1, p0, Lg1/b;->b:Lg1/d;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
