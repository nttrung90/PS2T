.class public Lxyz/aethersx2/android/j;
.super Landroidx/fragment/app/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxyz/aethersx2/android/j$d;,
        Lxyz/aethersx2/android/j$a;,
        Lxyz/aethersx2/android/j$c;,
        Lxyz/aethersx2/android/j$b;,
        Lxyz/aethersx2/android/j$e;
    }
.end annotation


# static fields
.field public static final synthetic e0:I


# instance fields
.field public c0:Lxyz/aethersx2/android/j$d;

.field public d0:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0040

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    new-instance p2, Lxyz/aethersx2/android/j$d;

    invoke-direct {p2, p0}, Lxyz/aethersx2/android/j$d;-><init>(Landroidx/fragment/app/n;)V

    iput-object p2, p0, Lxyz/aethersx2/android/j;->c0:Lxyz/aethersx2/android/j$d;

    const p2, 0x7f09028a

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager2/widget/ViewPager2;

    iput-object p2, p0, Lxyz/aethersx2/android/j;->d0:Landroidx/viewpager2/widget/ViewPager2;

    .line 3
    iget-object v0, p0, Lxyz/aethersx2/android/j;->c0:Lxyz/aethersx2/android/j$d;

    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    const p2, 0x7f090248

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    .line 5
    new-instance p2, Lcom/google/android/material/tabs/c;

    iget-object v0, p0, Lxyz/aethersx2/android/j;->d0:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lm0/b;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lm0/b;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, p1, v0, v1}, Lcom/google/android/material/tabs/c;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/c$b;)V

    .line 6
    invoke-virtual {p2}, Lcom/google/android/material/tabs/c;->a()V

    return-void
.end method
