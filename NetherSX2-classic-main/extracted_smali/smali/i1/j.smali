.class public final Li1/j;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lp/a;

.field public final synthetic b:Li1/i;


# direct methods
.method public constructor <init>(Li1/i;Lp/a;)V
    .locals 0

    iput-object p1, p0, Li1/j;->b:Li1/i;

    iput-object p2, p0, Li1/j;->a:Lp/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li1/j;->a:Lp/a;

    invoke-virtual {v0, p1}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Li1/j;->b:Li1/i;

    iget-object v0, v0, Li1/i;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Li1/j;->b:Li1/i;

    iget-object v0, v0, Li1/i;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
