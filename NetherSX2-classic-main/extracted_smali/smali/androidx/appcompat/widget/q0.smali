.class public final Landroidx/appcompat/widget/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/e$a;


# instance fields
.field public final synthetic c:Landroidx/appcompat/widget/s0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/s0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/q0;->c:Landroidx/appcompat/widget/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/e;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/q0;->c:Landroidx/appcompat/widget/s0;

    iget-object p1, p1, Landroidx/appcompat/widget/s0;->d:Landroidx/appcompat/widget/s0$a;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p2}, Landroidx/appcompat/widget/s0$a;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Landroidx/appcompat/view/menu/e;)V
    .locals 0

    return-void
.end method
