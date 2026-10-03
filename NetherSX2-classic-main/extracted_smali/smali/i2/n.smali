.class public final Li2/n;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Li2/o;


# direct methods
.method public constructor <init>(Li2/o;)V
    .locals 0

    iput-object p1, p0, Li2/n;->a:Li2/o;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Li2/n;->a:Li2/o;

    invoke-virtual {p1}, Li2/o;->c()V

    .line 3
    iget-object p1, p0, Li2/n;->a:Li2/o;

    iget-object p1, p1, Li2/o;->k:Lj1/a;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lj1/a;->a()V

    :cond_0
    return-void
.end method
