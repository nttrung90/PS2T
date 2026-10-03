.class public final Landroidx/fragment/app/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/u;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroidx/fragment/app/e0;

.field public final synthetic d:Landroidx/fragment/app/u;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/u;Landroidx/fragment/app/e0;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/u$a;->d:Landroidx/fragment/app/u;

    iput-object p2, p0, Landroidx/fragment/app/u$a;->c:Landroidx/fragment/app/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/u$a;->c:Landroidx/fragment/app/e0;

    .line 2
    iget-object v0, p1, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/n;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/e0;->k()V

    .line 4
    iget-object p1, v0, Landroidx/fragment/app/n;->J:Landroid/view/View;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/u$a;->d:Landroidx/fragment/app/u;

    iget-object v0, v0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/y;

    invoke-static {p1, v0}, Landroidx/fragment/app/q0;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/y;)Landroidx/fragment/app/q0;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/q0;->e()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
