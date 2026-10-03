.class public final Le/t$a;
.super Ln2/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o0:Le/t;


# direct methods
.method public constructor <init>(Le/t;)V
    .locals 0

    iput-object p1, p0, Le/t$a;->o0:Le/t;

    invoke-direct {p0}, Ln2/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/t$a;->o0:Le/t;

    iget-boolean v1, v0, Le/t;->p:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Le/t;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    iget-object v0, p0, Le/t$a;->o0:Le/t;

    iget-object v0, v0, Le/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 4
    :cond_0
    iget-object v0, p0, Le/t$a;->o0:Le/t;

    iget-object v0, v0, Le/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Le/t$a;->o0:Le/t;

    iget-object v0, v0, Le/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 6
    iget-object v0, p0, Le/t$a;->o0:Le/t;

    const/4 v1, 0x0

    iput-object v1, v0, Le/t;->t:Li/g;

    .line 7
    iget-object v2, v0, Le/t;->k:Li/a$a;

    if-eqz v2, :cond_1

    .line 8
    iget-object v3, v0, Le/t;->j:Le/t$d;

    invoke-interface {v2, v3}, Li/a$a;->c(Li/a;)V

    .line 9
    iput-object v1, v0, Le/t;->j:Le/t$d;

    .line 10
    iput-object v1, v0, Le/t;->k:Li/a$a;

    .line 11
    :cond_1
    iget-object v0, p0, Le/t$a;->o0:Le/t;

    iget-object v0, v0, Le/t;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_2

    .line 12
    sget-object v1, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 13
    invoke-static {v0}, Lj0/a0$h;->c(Landroid/view/View;)V

    :cond_2
    return-void
.end method
