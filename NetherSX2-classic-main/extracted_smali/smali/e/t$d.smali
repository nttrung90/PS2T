.class public final Le/t$d;
.super Li/a;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Landroidx/appcompat/view/menu/e;

.field public g:Li/a$a;

.field public h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic i:Le/t;


# direct methods
.method public constructor <init>(Le/t;Landroid/content/Context;Li/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/t$d;->i:Le/t;

    invoke-direct {p0}, Li/a;-><init>()V

    .line 2
    iput-object p2, p0, Le/t$d;->e:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Le/t$d;->g:Li/a$a;

    .line 4
    new-instance p1, Landroidx/appcompat/view/menu/e;

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/e;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 5
    iput p2, p1, Landroidx/appcompat/view/menu/e;->l:I

    .line 6
    iput-object p1, p0, Le/t$d;->f:Landroidx/appcompat/view/menu/e;

    .line 7
    iput-object p0, p1, Landroidx/appcompat/view/menu/e;->e:Landroidx/appcompat/view/menu/e$a;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/e;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Le/t$d;->g:Li/a$a;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0, p2}, Li/a$a;->a(Li/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Landroidx/appcompat/view/menu/e;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/t$d;->g:Li/a$a;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/t$d;->i()V

    .line 3
    iget-object p1, p0, Le/t$d;->i:Le/t;

    iget-object p1, p1, Le/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    iget-object p1, p1, Landroidx/appcompat/widget/a;->f:Landroidx/appcompat/widget/c;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/widget/c;->o()Z

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/t$d;->i:Le/t;

    iget-object v1, v0, Le/t;->i:Le/t$d;

    if-eq v1, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, v0, Le/t;->q:Z

    const/4 v2, 0x0

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 3
    iput-object p0, v0, Le/t;->j:Le/t$d;

    .line 4
    iget-object v1, p0, Le/t$d;->g:Li/a$a;

    iput-object v1, v0, Le/t;->k:Li/a$a;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Le/t$d;->g:Li/a$a;

    invoke-interface {v0, p0}, Li/a$a;->c(Li/a;)V

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Le/t$d;->g:Li/a$a;

    .line 7
    iget-object v1, p0, Le/t$d;->i:Le/t;

    invoke-virtual {v1, v2}, Le/t;->r(Z)V

    .line 8
    iget-object v1, p0, Le/t$d;->i:Le/t;

    iget-object v1, v1, Le/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 9
    iget-object v2, v1, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/view/View;

    if-nez v2, :cond_2

    .line 10
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    .line 11
    :cond_2
    iget-object v1, p0, Le/t$d;->i:Le/t;

    iget-object v2, v1, Le/t;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v1, v1, Le/t;->v:Z

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 12
    iget-object v1, p0, Le/t$d;->i:Le/t;

    iput-object v0, v1, Le/t;->i:Le/t$d;

    return-void
.end method

.method public final d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Le/t$d;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final e()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Le/t$d;->f:Landroidx/appcompat/view/menu/e;

    return-object v0
.end method

.method public final f()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Li/f;

    iget-object v1, p0, Le/t$d;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Li/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Le/t$d;->i:Le/t;

    iget-object v0, v0, Le/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Le/t$d;->i:Le/t;

    iget-object v0, v0, Le/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/t$d;->i:Le/t;

    iget-object v0, v0, Le/t;->i:Le/t$d;

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/t$d;->f:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->B()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/t$d;->g:Li/a$a;

    iget-object v1, p0, Le/t$d;->f:Landroidx/appcompat/view/menu/e;

    invoke-interface {v0, p0, v1}, Li/a$a;->b(Li/a;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Le/t$d;->f:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->A()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/t$d;->f:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/e;->A()V

    .line 5
    throw v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/t$d;->i:Le/t;

    iget-object v0, v0, Le/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 2
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->u:Z

    return v0
.end method

.method public final k(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/t$d;->i:Le/t;

    iget-object v0, v0, Le/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le/t$d;->h:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final l(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/t$d;->i:Le/t;

    iget-object v0, v0, Le/t;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/t$d;->i:Le/t;

    iget-object v0, v0, Le/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Le/t$d;->i:Le/t;

    iget-object v0, v0, Le/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/t$d;->i:Le/t;

    iget-object v0, v0, Le/t;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/t$d;->i:Le/t;

    iget-object v0, v0, Le/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final o(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Le/t$d;->i:Le/t;

    iget-object v0, v0, Le/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final p(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Li/a;->d:Z

    .line 2
    iget-object v0, p0, Le/t$d;->i:Le/t;

    iget-object v0, v0, Le/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method
