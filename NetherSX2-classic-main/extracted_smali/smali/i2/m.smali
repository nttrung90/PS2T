.class public final Li2/m;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Li2/o;


# direct methods
.method public constructor <init>(Li2/o;)V
    .locals 0

    iput-object p1, p0, Li2/m;->a:Li2/o;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Li2/m;->a:Li2/o;

    .line 3
    iget v0, p1, Li2/o;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 4
    iget-object v2, p1, Li2/o;->g:Li2/p;

    .line 5
    iget-object v2, v2, Li2/c;->c:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    .line 6
    iput v0, p1, Li2/o;->h:I

    .line 7
    iput-boolean v1, p1, Li2/o;->i:Z

    return-void
.end method
