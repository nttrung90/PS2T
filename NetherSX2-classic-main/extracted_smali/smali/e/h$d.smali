.class public final Le/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Li/a$a;

.field public final synthetic b:Le/h;


# direct methods
.method public constructor <init>(Le/h;Li/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h$d;->b:Le/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/h$d;->a:Li/a$a;

    return-void
.end method


# virtual methods
.method public final a(Li/a;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Le/h$d;->a:Li/a$a;

    invoke-interface {v0, p1, p2}, Li/a$a;->a(Li/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final b(Li/a;Landroid/view/Menu;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/h$d;->b:Le/h;

    iget-object v0, v0, Le/h;->x:Landroid/view/ViewGroup;

    sget-object v1, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {v0}, Lj0/a0$h;->c(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Le/h$d;->a:Li/a$a;

    invoke-interface {v0, p1, p2}, Li/a$a;->b(Li/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final c(Li/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/h$d;->a:Li/a$a;

    invoke-interface {v0, p1}, Li/a$a;->c(Li/a;)V

    .line 2
    iget-object p1, p0, Le/h$d;->b:Le/h;

    iget-object v0, p1, Le/h;->s:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Le/h;->h:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Le/h$d;->b:Le/h;

    iget-object v0, v0, Le/h;->t:Le/k;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    iget-object p1, p0, Le/h$d;->b:Le/h;

    iget-object v0, p1, Le/h;->r:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Le/h;->I()V

    .line 6
    iget-object p1, p0, Le/h$d;->b:Le/h;

    iget-object v0, p1, Le/h;->r:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Lj0/a0;->b(Landroid/view/View;)Lj0/h0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj0/h0;->a(F)Lj0/h0;

    iput-object v0, p1, Le/h;->u:Lj0/h0;

    .line 7
    iget-object p1, p0, Le/h$d;->b:Le/h;

    iget-object p1, p1, Le/h;->u:Lj0/h0;

    new-instance v0, Le/h$d$a;

    invoke-direct {v0, p0}, Le/h$d$a;-><init>(Le/h$d;)V

    invoke-virtual {p1, v0}, Lj0/h0;->d(Lj0/i0;)Lj0/h0;

    .line 8
    :cond_1
    iget-object p1, p0, Le/h$d;->b:Le/h;

    iget-object p1, p1, Le/h;->j:Le/f;

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1}, Le/f;->n()V

    .line 10
    :cond_2
    iget-object p1, p0, Le/h$d;->b:Le/h;

    const/4 v0, 0x0

    iput-object v0, p1, Le/h;->q:Li/a;

    .line 11
    iget-object p1, p1, Le/h;->x:Landroid/view/ViewGroup;

    sget-object v0, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 12
    invoke-static {p1}, Lj0/a0$h;->c(Landroid/view/View;)V

    return-void
.end method

.method public final d(Li/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Le/h$d;->a:Li/a$a;

    invoke-interface {v0, p1, p2}, Li/a$a;->d(Li/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
