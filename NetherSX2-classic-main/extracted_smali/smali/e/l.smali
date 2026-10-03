.class public final Le/l;
.super Ln2/e;
.source "SourceFile"


# instance fields
.field public final synthetic o0:Le/h;


# direct methods
.method public constructor <init>(Le/h;)V
    .locals 0

    iput-object p1, p0, Le/l;->o0:Le/h;

    invoke-direct {p0}, Ln2/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/l;->o0:Le/h;

    iget-object v0, v0, Le/h;->r:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Le/l;->o0:Le/h;

    iget-object v0, v0, Le/h;->u:Lj0/h0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj0/h0;->d(Lj0/i0;)Lj0/h0;

    .line 3
    iget-object v0, p0, Le/l;->o0:Le/h;

    iput-object v1, v0, Le/h;->u:Lj0/h0;

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/l;->o0:Le/h;

    iget-object v0, v0, Le/h;->r:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Le/l;->o0:Le/h;

    iget-object v0, v0, Le/h;->r:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/l;->o0:Le/h;

    iget-object v0, v0, Le/h;->r:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget-object v1, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 4
    invoke-static {v0}, Lj0/a0$h;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method
