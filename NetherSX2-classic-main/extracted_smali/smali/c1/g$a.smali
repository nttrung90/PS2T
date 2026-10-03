.class public final Lc1/g$a;
.super Lj0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lc1/g;


# direct methods
.method public constructor <init>(Lc1/g;)V
    .locals 0

    iput-object p1, p0, Lc1/g$a;->d:Lc1/g;

    invoke-direct {p0}, Lj0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;Lk0/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc1/g$a;->d:Lc1/g;

    iget-object v0, v0, Lc1/g;->g:Landroidx/recyclerview/widget/y$a;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/y$a;->d(Landroid/view/View;Lk0/f;)V

    .line 2
    iget-object p2, p0, Lc1/g$a;->d:Lc1/g;

    iget-object p2, p2, Lc1/g;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->e()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 5
    :goto_0
    iget-object p2, p0, Lc1/g$a;->d:Lc1/g;

    iget-object p2, p2, Lc1/g;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object p2

    .line 6
    instance-of v0, p2, Landroidx/preference/c;

    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    check-cast p2, Landroidx/preference/c;

    .line 8
    invoke-virtual {p2, p1}, Landroidx/preference/c;->s(I)Landroidx/preference/Preference;

    return-void
.end method

.method public final g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lc1/g$a;->d:Lc1/g;

    iget-object v0, v0, Lc1/g;->g:Landroidx/recyclerview/widget/y$a;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/y$a;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
