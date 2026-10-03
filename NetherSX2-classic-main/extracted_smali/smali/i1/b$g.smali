.class public final Li1/b$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li1/b;->l(Landroid/view/ViewGroup;Li1/p;Li1/p;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mViewBounds:Li1/b$i;


# direct methods
.method public constructor <init>(Li1/b$i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Li1/b$g;->mViewBounds:Li1/b$i;

    return-void
.end method
