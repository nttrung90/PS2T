.class public Le/m;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Le/f;


# instance fields
.field public c:Le/h;

.field public final d:Le/m$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Le/m;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v0, Le/m$a;

    invoke-direct {v0, p0}, Le/m$a;-><init>(Le/m;)V

    iput-object v0, p0, Le/m;->d:Le/m$a;

    .line 3
    invoke-virtual {p0}, Le/m;->a()Le/g;

    move-result-object v0

    .line 4
    invoke-static {p1, p2}, Le/m;->b(Landroid/content/Context;I)I

    move-result p1

    move-object p2, v0

    check-cast p2, Le/h;

    .line 5
    iput p1, p2, Le/h;->Q:I

    .line 6
    invoke-virtual {v0}, Le/g;->m()V

    return-void
.end method

.method public static b(Landroid/content/Context;I)I
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x7f04015b

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    :cond_0
    return p1
.end method


# virtual methods
.method public final a()Le/g;
    .locals 3

    .line 1
    iget-object v0, p0, Le/m;->c:Le/h;

    if-nez v0, :cond_0

    .line 2
    sget v0, Le/g;->c:I

    .line 3
    new-instance v0, Le/h;

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0, p0}, Le/h;-><init>(Landroid/content/Context;Landroid/view/Window;Le/f;Ljava/lang/Object;)V

    .line 5
    iput-object v0, p0, Le/m;->c:Le/h;

    .line 6
    :cond_0
    iget-object v0, p0, Le/m;->c:Le/h;

    return-object v0
.end method

.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Le/m;->a()Le/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Le/g;->c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-virtual {p0}, Le/m;->a()Le/g;

    move-result-object v0

    invoke-virtual {v0}, Le/g;->n()V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/m;->d:Le/m$a;

    invoke-static {v1, v0, p0, p1}, Lj0/f;->b(Lj0/f$a;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final e()Z
    .locals 2

    invoke-virtual {p0}, Le/m;->a()Le/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Le/g;->s(I)Z

    move-result v0

    return v0
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Le/m;->a()Le/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/g;->f(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Le/m;->a()Le/g;

    move-result-object v0

    invoke-virtual {v0}, Le/g;->k()V

    return-void
.end method

.method public final m()V
    .locals 0

    return-void
.end method

.method public final n()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m;->a()Le/g;

    move-result-object v0

    invoke-virtual {v0}, Le/g;->j()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Le/m;->a()Le/g;

    move-result-object p1

    invoke-virtual {p1}, Le/g;->m()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2
    invoke-virtual {p0}, Le/m;->a()Le/g;

    move-result-object v0

    invoke-virtual {v0}, Le/g;->q()V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m;->a()Le/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/g;->t(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Le/m;->a()Le/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/g;->u(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Le/m;->a()Le/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Le/g;->v(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 2

    .line 3
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 4
    invoke-virtual {p0}, Le/m;->a()Le/g;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/g;->z(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Le/m;->a()Le/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/g;->z(Ljava/lang/CharSequence;)V

    return-void
.end method
