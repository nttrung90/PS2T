.class public final Li1/b$h;
.super Li1/l;
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
.field public a:Z

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/b$h;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Li1/l;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Li1/b$h;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Li1/b$h;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Li1/q;->a(Landroid/view/ViewGroup;Z)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li1/b$h;->a:Z

    return-void
.end method

.method public final c(Li1/i;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Li1/b$h;->a:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Li1/b$h;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Li1/q;->a(Landroid/view/ViewGroup;Z)V

    .line 3
    :cond_0
    invoke-virtual {p1, p0}, Li1/i;->w(Li1/i$d;)Li1/i;

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Li1/b$h;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Li1/q;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Li1/b$h;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Li1/q;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method
