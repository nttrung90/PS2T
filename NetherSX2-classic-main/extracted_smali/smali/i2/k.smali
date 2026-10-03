.class public final Li2/k;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Li2/l;


# direct methods
.method public constructor <init>(Li2/l;)V
    .locals 0

    iput-object p1, p0, Li2/k;->a:Li2/l;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Li2/k;->a:Li2/l;

    .line 3
    iget v0, p1, Li2/l;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 4
    iget-object v2, p1, Li2/l;->f:Li2/p;

    .line 5
    iget-object v2, v2, Li2/c;->c:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    .line 6
    iput v0, p1, Li2/l;->g:I

    .line 7
    iput-boolean v1, p1, Li2/l;->h:Z

    return-void
.end method
