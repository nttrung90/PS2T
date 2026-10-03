.class public final Landroidx/appcompat/widget/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/s0$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/appcompat/view/menu/e;

.field public final c:Landroidx/appcompat/view/menu/h;

.field public d:Landroidx/appcompat/widget/s0$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/s0;->a:Landroid/content/Context;

    .line 3
    new-instance v2, Landroidx/appcompat/view/menu/e;

    invoke-direct {v2, p1}, Landroidx/appcompat/view/menu/e;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/appcompat/widget/s0;->b:Landroidx/appcompat/view/menu/e;

    .line 4
    new-instance v0, Landroidx/appcompat/widget/q0;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/q0;-><init>(Landroidx/appcompat/widget/s0;)V

    .line 5
    iput-object v0, v2, Landroidx/appcompat/view/menu/e;->e:Landroidx/appcompat/view/menu/e$a;

    .line 6
    new-instance v7, Landroidx/appcompat/view/menu/h;

    const/4 v4, 0x0

    const v5, 0x7f040353

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/h;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/e;Landroid/view/View;ZII)V

    iput-object v7, p0, Landroidx/appcompat/widget/s0;->c:Landroidx/appcompat/view/menu/h;

    const/16 p1, 0x35

    .line 7
    iput p1, v7, Landroidx/appcompat/view/menu/h;->g:I

    .line 8
    new-instance p1, Landroidx/appcompat/widget/r0;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/r0;-><init>(Landroidx/appcompat/widget/s0;)V

    .line 9
    iput-object p1, v7, Landroidx/appcompat/view/menu/h;->k:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method
