.class public final Lcom/google/android/material/tabs/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Landroidx/viewpager2/widget/ViewPager2;

.field public final b:Z


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/tabs/c$d;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/material/tabs/c$d;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/c$d;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$f;->d:I

    .line 3
    iget-boolean v1, p0, Lcom/google/android/material/tabs/c$d;->b:Z

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->c(IZ)V

    return-void
.end method
