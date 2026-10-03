.class public final Landroidx/fragment/app/y$b;
.super Landroidx/activity/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroidx/fragment/app/y;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/y;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/y$b;->c:Landroidx/fragment/app/y;

    invoke-direct {p0}, Landroidx/activity/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y$b;->c:Landroidx/fragment/app/y;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroidx/fragment/app/y;->A(Z)Z

    .line 3
    iget-object v1, v0, Landroidx/fragment/app/y;->h:Landroidx/fragment/app/y$b;

    .line 4
    iget-boolean v1, v1, Landroidx/activity/i;->a:Z

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/y;->S()Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/y;->g:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->b()V

    :goto_0
    return-void
.end method
