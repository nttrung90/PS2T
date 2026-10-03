.class public final Landroidx/fragment/app/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/v$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/fragment/app/v$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroidx/fragment/app/y;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/y;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    iput-object p1, p0, Landroidx/fragment/app/v;->b:Landroidx/fragment/app/y;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/n;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Landroidx/fragment/app/y;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/y;->w:Landroidx/fragment/app/n;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->getParentFragmentManager()Landroidx/fragment/app/y;

    move-result-object v0

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/y;->m:Landroidx/fragment/app/v;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/v;->a(Landroidx/fragment/app/n;Landroid/os/Bundle;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/v$a;

    if-eqz p3, :cond_2

    .line 7
    iget-boolean v0, p2, Landroidx/fragment/app/v$a;->b:Z

    if-eqz v0, :cond_1

    .line 8
    :cond_2
    iget-object p2, p2, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/y$k;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final b(Landroidx/fragment/app/n;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Landroidx/fragment/app/y;

    .line 2
    iget-object v1, v0, Landroidx/fragment/app/y;->u:Landroidx/fragment/app/t;

    .line 3
    iget-object v1, v1, Landroidx/fragment/app/t;->d:Landroid/content/Context;

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/y;->w:Landroidx/fragment/app/n;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/n;->getParentFragmentManager()Landroidx/fragment/app/y;

    move-result-object v0

    .line 6
    iget-object v0, v0, Landroidx/fragment/app/y;->m:Landroidx/fragment/app/v;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/v;->b(Landroidx/fragment/app/n;Z)V

    .line 8
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/v$a;

    if-eqz p2, :cond_2

    .line 9
    iget-boolean v1, v0, Landroidx/fragment/app/v$a;->b:Z

    if-eqz v1, :cond_1

    .line 10
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/y$k;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final c(Landroidx/fragment/app/n;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Landroidx/fragment/app/y;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/y;->w:Landroidx/fragment/app/n;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->getParentFragmentManager()Landroidx/fragment/app/y;

    move-result-object v0

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/y;->m:Landroidx/fragment/app/v;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/v;->c(Landroidx/fragment/app/n;Landroid/os/Bundle;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/v$a;

    if-eqz p3, :cond_2

    .line 7
    iget-boolean v0, p2, Landroidx/fragment/app/v$a;->b:Z

    if-eqz v0, :cond_1

    .line 8
    :cond_2
    iget-object p2, p2, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/y$k;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final d(Landroidx/fragment/app/n;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Landroidx/fragment/app/y;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/y;->w:Landroidx/fragment/app/n;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->getParentFragmentManager()Landroidx/fragment/app/y;

    move-result-object v0

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/y;->m:Landroidx/fragment/app/v;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/v;->d(Landroidx/fragment/app/n;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/v$a;

    if-eqz p2, :cond_2

    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/v$a;->b:Z

    if-eqz v1, :cond_1

    .line 8
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/y$k;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final e(Landroidx/fragment/app/n;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Landroidx/fragment/app/y;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/y;->w:Landroidx/fragment/app/n;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->getParentFragmentManager()Landroidx/fragment/app/y;

    move-result-object v0

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/y;->m:Landroidx/fragment/app/v;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/v;->e(Landroidx/fragment/app/n;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/v$a;

    if-eqz p2, :cond_2

    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/v$a;->b:Z

    if-eqz v1, :cond_1

    .line 8
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/y$k;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final f(Landroidx/fragment/app/n;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Landroidx/fragment/app/y;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/y;->w:Landroidx/fragment/app/n;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->getParentFragmentManager()Landroidx/fragment/app/y;

    move-result-object v0

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/y;->m:Landroidx/fragment/app/v;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/v;->f(Landroidx/fragment/app/n;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/v$a;

    if-eqz p2, :cond_2

    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/v$a;->b:Z

    if-eqz v1, :cond_1

    .line 8
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/y$k;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final g(Landroidx/fragment/app/n;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Landroidx/fragment/app/y;

    .line 2
    iget-object v1, v0, Landroidx/fragment/app/y;->u:Landroidx/fragment/app/t;

    .line 3
    iget-object v1, v1, Landroidx/fragment/app/t;->d:Landroid/content/Context;

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/y;->w:Landroidx/fragment/app/n;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/n;->getParentFragmentManager()Landroidx/fragment/app/y;

    move-result-object v0

    .line 6
    iget-object v0, v0, Landroidx/fragment/app/y;->m:Landroidx/fragment/app/v;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/v;->g(Landroidx/fragment/app/n;Z)V

    .line 8
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/v$a;

    if-eqz p2, :cond_2

    .line 9
    iget-boolean v1, v0, Landroidx/fragment/app/v$a;->b:Z

    if-eqz v1, :cond_1

    .line 10
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/y$k;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final h(Landroidx/fragment/app/n;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Landroidx/fragment/app/y;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/y;->w:Landroidx/fragment/app/n;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->getParentFragmentManager()Landroidx/fragment/app/y;

    move-result-object v0

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/y;->m:Landroidx/fragment/app/v;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/v;->h(Landroidx/fragment/app/n;Landroid/os/Bundle;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/v$a;

    if-eqz p3, :cond_2

    .line 7
    iget-boolean v0, p2, Landroidx/fragment/app/v$a;->b:Z

    if-eqz v0, :cond_1

    .line 8
    :cond_2
    iget-object p2, p2, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/y$k;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final i(Landroidx/fragment/app/n;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Landroidx/fragment/app/y;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/y;->w:Landroidx/fragment/app/n;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->getParentFragmentManager()Landroidx/fragment/app/y;

    move-result-object v0

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/y;->m:Landroidx/fragment/app/v;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/v;->i(Landroidx/fragment/app/n;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/v$a;

    if-eqz p2, :cond_2

    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/v$a;->b:Z

    if-eqz v1, :cond_1

    .line 8
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/y$k;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final j(Landroidx/fragment/app/n;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Landroidx/fragment/app/y;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/y;->w:Landroidx/fragment/app/n;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->getParentFragmentManager()Landroidx/fragment/app/y;

    move-result-object v0

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/y;->m:Landroidx/fragment/app/v;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/v;->j(Landroidx/fragment/app/n;Landroid/os/Bundle;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/v$a;

    if-eqz p3, :cond_2

    .line 7
    iget-boolean v0, p2, Landroidx/fragment/app/v$a;->b:Z

    if-eqz v0, :cond_1

    .line 8
    :cond_2
    iget-object p2, p2, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/y$k;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final k(Landroidx/fragment/app/n;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Landroidx/fragment/app/y;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/y;->w:Landroidx/fragment/app/n;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->getParentFragmentManager()Landroidx/fragment/app/y;

    move-result-object v0

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/y;->m:Landroidx/fragment/app/v;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/v;->k(Landroidx/fragment/app/n;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/v$a;

    if-eqz p2, :cond_2

    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/v$a;->b:Z

    if-eqz v1, :cond_1

    .line 8
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/y$k;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final l(Landroidx/fragment/app/n;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Landroidx/fragment/app/y;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/y;->w:Landroidx/fragment/app/n;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->getParentFragmentManager()Landroidx/fragment/app/y;

    move-result-object v0

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/y;->m:Landroidx/fragment/app/v;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/v;->l(Landroidx/fragment/app/n;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/v$a;

    if-eqz p2, :cond_2

    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/v$a;->b:Z

    if-eqz v1, :cond_1

    .line 8
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/y$k;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final m(Landroidx/fragment/app/n;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Landroidx/fragment/app/y;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/y;->w:Landroidx/fragment/app/n;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->getParentFragmentManager()Landroidx/fragment/app/y;

    move-result-object v0

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/y;->m:Landroidx/fragment/app/v;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/fragment/app/v;->m(Landroidx/fragment/app/n;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 6
    :cond_0
    iget-object p3, p0, Landroidx/fragment/app/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/v$a;

    if-eqz p4, :cond_2

    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/v$a;->b:Z

    if-eqz v1, :cond_1

    .line 8
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/y$k;

    iget-object v1, p0, Landroidx/fragment/app/v;->b:Landroidx/fragment/app/y;

    check-cast v0, Landroidx/viewpager2/adapter/FragmentStateAdapter$a;

    .line 9
    iget-object v2, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter$a;->a:Landroidx/fragment/app/n;

    if-ne p1, v2, :cond_1

    .line 10
    iget-object v1, v1, Landroidx/fragment/app/y;->m:Landroidx/fragment/app/v;

    .line 11
    iget-object v2, v1, Landroidx/fragment/app/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    const/4 v3, 0x0

    .line 12
    :try_start_0
    iget-object v4, v1, Landroidx/fragment/app/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_4

    .line 13
    iget-object v5, v1, Landroidx/fragment/app/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/v$a;

    iget-object v5, v5, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/y$k;

    if-ne v5, v0, :cond_3

    .line 14
    iget-object v1, v1, Landroidx/fragment/app/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 15
    :cond_4
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v1, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter$a;->c:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    iget-object v0, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter$a;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p2, v0}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->q(Landroid/view/View;Landroid/widget/FrameLayout;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    return-void
.end method

.method public final n(Landroidx/fragment/app/n;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v;->b:Landroidx/fragment/app/y;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/y;->w:Landroidx/fragment/app/n;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/n;->getParentFragmentManager()Landroidx/fragment/app/y;

    move-result-object v0

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/y;->m:Landroidx/fragment/app/v;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/v;->n(Landroidx/fragment/app/n;Z)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/v$a;

    if-eqz p2, :cond_2

    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/v$a;->b:Z

    if-eqz v1, :cond_1

    .line 8
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/y$k;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method
