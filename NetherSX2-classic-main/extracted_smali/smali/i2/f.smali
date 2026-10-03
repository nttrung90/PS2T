.class public final Li2/f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Li2/g;


# direct methods
.method public constructor <init>(Li2/g;)V
    .locals 0

    iput-object p1, p0, Li2/f;->a:Li2/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Li2/f;->a:Li2/g;

    invoke-static {p1}, Li2/g;->a(Li2/g;)Z

    .line 3
    iget-object p1, p0, Li2/f;->a:Li2/g;

    .line 4
    iget-object v0, p1, Li2/g;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Li2/g;->i:Z

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj1/a;

    .line 6
    invoke-virtual {v0}, Lj1/a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method
