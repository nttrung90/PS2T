.class public final Lxyz/aethersx2/android/e;
.super Landroidx/fragment/app/n;
.source "SourceFile"

# interfaces
.implements Lxyz/aethersx2/android/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxyz/aethersx2/android/e$a;,
        Lxyz/aethersx2/android/e$b;
    }
.end annotation


# instance fields
.field public c0:Lxyz/aethersx2/android/MainActivity;

.field public d0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public e0:Landroidx/recyclerview/widget/RecyclerView;

.field public f0:Lxyz/aethersx2/android/e$a;


# direct methods
.method public constructor <init>(Lxyz/aethersx2/android/MainActivity;)V
    .locals 1

    const v0, 0x7f0c003b

    .line 1
    invoke-direct {p0, v0}, Landroidx/fragment/app/n;-><init>(I)V

    .line 2
    iput-object p1, p0, Lxyz/aethersx2/android/e;->c0:Lxyz/aethersx2/android/MainActivity;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object v0, p0, Lxyz/aethersx2/android/e;->f0:Lxyz/aethersx2/android/e$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->f()V

    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/n;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lxyz/aethersx2/android/e;->c0:Lxyz/aethersx2/android/MainActivity;

    .line 3
    iget-object v0, v0, Lxyz/aethersx2/android/MainActivity;->A:Lxyz/aethersx2/android/d;

    .line 4
    iget-object v0, v0, Lxyz/aethersx2/android/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/n;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    new-instance p2, Lxyz/aethersx2/android/e$a;

    iget-object v0, p0, Lxyz/aethersx2/android/e;->c0:Lxyz/aethersx2/android/MainActivity;

    .line 3
    iget-object v1, v0, Lxyz/aethersx2/android/MainActivity;->A:Lxyz/aethersx2/android/d;

    .line 4
    invoke-direct {p2, v0, v1}, Lxyz/aethersx2/android/e$a;-><init>(Lxyz/aethersx2/android/MainActivity;Lxyz/aethersx2/android/d;)V

    iput-object p2, p0, Lxyz/aethersx2/android/e;->f0:Lxyz/aethersx2/android/e$a;

    .line 5
    iget-object p2, p0, Lxyz/aethersx2/android/e;->c0:Lxyz/aethersx2/android/MainActivity;

    .line 6
    iget-object p2, p2, Lxyz/aethersx2/android/MainActivity;->A:Lxyz/aethersx2/android/d;

    .line 7
    invoke-virtual {p2, p0}, Lxyz/aethersx2/android/d;->a(Lxyz/aethersx2/android/d$b;)V

    const p2, 0x7f09012d

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lxyz/aethersx2/android/e;->e0:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    iget-object v0, p0, Lxyz/aethersx2/android/e;->f0:Lxyz/aethersx2/android/e$a;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 10
    iget-object p2, p0, Lxyz/aethersx2/android/e;->e0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 12
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 13
    iget-object p2, p0, Lxyz/aethersx2/android/e;->e0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/l;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 14
    iget-object p2, p0, Lxyz/aethersx2/android/e;->e0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f090245

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lxyz/aethersx2/android/e;->d0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 16
    new-instance p2, Lq3/u;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lq3/u;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;)V

    return-void
.end method
