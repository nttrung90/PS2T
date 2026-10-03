.class public final Lxyz/aethersx2/android/j$e;
.super Landroidx/preference/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/aethersx2/android/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final k0:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/b;-><init>()V

    .line 2
    iput p1, p0, Lxyz/aethersx2/android/j$e;->k0:I

    return-void
.end method


# virtual methods
.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/preference/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Landroidx/preference/b;->e0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    return-void
.end method

.method public final z(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    iget p1, p0, Lxyz/aethersx2/android/j$e;->k0:I

    invoke-virtual {p0, p1, p2}, Landroidx/preference/b;->B(ILjava/lang/String;)V

    return-void
.end method
