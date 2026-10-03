.class public final Landroidx/fragment/app/o$a;
.super Landroidx/fragment/app/t;
.source "SourceFile"

# interfaces
.implements La0/b;
.implements La0/c;
.implements Lz/l;
.implements Lz/m;
.implements Landroidx/lifecycle/g0;
.implements Landroidx/activity/j;
.implements Landroidx/activity/result/d;
.implements Le1/d;
.implements Landroidx/fragment/app/c0;
.implements Lj0/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/t<",
        "Landroidx/fragment/app/o;",
        ">;",
        "La0/b;",
        "La0/c;",
        "Lz/l;",
        "Lz/m;",
        "Landroidx/lifecycle/g0;",
        "Landroidx/activity/j;",
        "Landroidx/activity/result/d;",
        "Le1/d;",
        "Landroidx/fragment/app/c0;",
        "Lj0/h;"
    }
.end annotation


# instance fields
.field public final synthetic g:Landroidx/fragment/app/o;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    .line 2
    invoke-direct {p0, p1}, Landroidx/fragment/app/t;-><init>(Landroidx/fragment/app/o;)V

    return-void
.end method


# virtual methods
.method public final a(Li0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li0/a<",
            "Lz/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    .line 2
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    .line 2
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->i:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public final c(Li0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li0/a<",
            "Landroid/content/res/Configuration;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    invoke-virtual {v0, p1}, Landroidx/activity/ComponentActivity;->c(Li0/a;)V

    return-void
.end method

.method public final d(Landroidx/fragment/app/n;)V
    .locals 0

    iget-object p1, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(Li0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li0/a<",
            "Landroid/content/res/Configuration;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    .line 2
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Lj0/k;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    .line 2
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->e:Lj0/i;

    .line 3
    iget-object v1, v0, Lj0/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, v0, Lj0/i;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final g(Lj0/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    .line 2
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->e:Lj0/i;

    invoke-virtual {v0, p1}, Lj0/i;->c(Lj0/k;)V

    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/h;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    iget-object v0, v0, Landroidx/fragment/app/o;->q:Landroidx/lifecycle/n;

    return-object v0
.end method

.method public final getSavedStateRegistry()Le1/b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    .line 2
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->g:Le1/c;

    .line 3
    iget-object v0, v0, Le1/c;->b:Le1/b;

    return-object v0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/f0;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/f0;

    move-result-object v0

    return-object v0
.end method

.method public final h()Landroidx/activity/result/ActivityResultRegistry;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    .line 2
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->j:Landroidx/activity/ComponentActivity$b;

    return-object v0
.end method

.method public final i(Li0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li0/a<",
            "Lz/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    .line 2
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final k(Li0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li0/a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    .line 2
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final l(Li0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li0/a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    .line 2
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final n(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final o(Li0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li0/a<",
            "Lz/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    .line 2
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final p(Li0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li0/a<",
            "Lz/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    .line 2
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final u(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    const-string v1, "  "

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/fragment/app/o;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final v()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    return-object v0
.end method

.method public final w()Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final x(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    sget v1, Lz/a;->b:I

    .line 2
    invoke-static {v0, p1}, Lz/a$b;->c(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final y()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/o$a;->g:Landroidx/fragment/app/o;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method
