.class public final Lxyz/aethersx2/android/LeaderboardListFragment$d;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/aethersx2/android/LeaderboardListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lxyz/aethersx2/android/LeaderboardListFragment$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lxyz/aethersx2/android/LeaderboardListFragment;

.field public final d:Landroid/view/LayoutInflater;

.field public final e:[Lxyz/aethersx2/android/Leaderboard;


# direct methods
.method public constructor <init>(Lxyz/aethersx2/android/LeaderboardListFragment;[Lxyz/aethersx2/android/Leaderboard;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    .line 2
    iput-object p1, p0, Lxyz/aethersx2/android/LeaderboardListFragment$d;->c:Lxyz/aethersx2/android/LeaderboardListFragment;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lxyz/aethersx2/android/LeaderboardListFragment$d;->d:Landroid/view/LayoutInflater;

    .line 4
    iput-object p2, p0, Lxyz/aethersx2/android/LeaderboardListFragment$d;->e:[Lxyz/aethersx2/android/Leaderboard;

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget-object v0, p0, Lxyz/aethersx2/android/LeaderboardListFragment$d;->e:[Lxyz/aethersx2/android/Leaderboard;

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e(I)I
    .locals 0

    const p1, 0x7f0c0055

    return p1
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 2

    .line 1
    check-cast p1, Lxyz/aethersx2/android/LeaderboardListFragment$e;

    .line 2
    iget-object v0, p0, Lxyz/aethersx2/android/LeaderboardListFragment$d;->e:[Lxyz/aethersx2/android/Leaderboard;

    aget-object p2, v0, p2

    .line 3
    iget-object v0, p1, Lxyz/aethersx2/android/LeaderboardListFragment$e;->w:Landroid/view/View;

    const v1, 0x7f09026d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lxyz/aethersx2/android/Leaderboard;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Lxyz/aethersx2/android/LeaderboardListFragment$e;->w:Landroid/view/View;

    const v1, 0x7f0900dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lxyz/aethersx2/android/Leaderboard;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iput-object p2, p1, Lxyz/aethersx2/android/LeaderboardListFragment$e;->x:Lxyz/aethersx2/android/Leaderboard;

    return-void
.end method

.method public final i(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 4

    new-instance p2, Lxyz/aethersx2/android/LeaderboardListFragment$e;

    iget-object v0, p0, Lxyz/aethersx2/android/LeaderboardListFragment$d;->c:Lxyz/aethersx2/android/LeaderboardListFragment;

    iget-object v1, p0, Lxyz/aethersx2/android/LeaderboardListFragment$d;->d:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0055

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lxyz/aethersx2/android/LeaderboardListFragment$e;-><init>(Lxyz/aethersx2/android/LeaderboardListFragment;Landroid/view/View;)V

    return-object p2
.end method
