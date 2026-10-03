.class public Lxyz/aethersx2/android/b$h;
.super Landroidx/preference/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/aethersx2/android/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final k0:Lxyz/aethersx2/android/b;

.field public final l0:I


# direct methods
.method public constructor <init>(Lxyz/aethersx2/android/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/b;-><init>()V

    .line 2
    iput-object p1, p0, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 3
    iput p2, p0, Lxyz/aethersx2/android/b$h;->l0:I

    return-void
.end method


# virtual methods
.method public final C(Ljava/lang/String;Landroidx/preference/Preference$e;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/b;->y()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->X(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iput-object p2, p1, Landroidx/preference/Preference;->i:Landroidx/preference/Preference$e;

    :cond_0
    return-void
.end method

.method public final D(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/b;->y()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->X(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->G(Z)V

    :cond_0
    return-void
.end method

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

.method public z(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    invoke-virtual {p1}, Lxyz/aethersx2/android/b;->G()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/preference/b;->d0:Landroidx/preference/PreferenceManager;

    .line 3
    iget-object v0, p0, Lxyz/aethersx2/android/b$h;->k0:Lxyz/aethersx2/android/b;

    .line 4
    iget-object v0, v0, Lxyz/aethersx2/android/b;->f0:Lq3/a2;

    .line 5
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->setPreferenceDataStore(Lc1/e;)V

    .line 6
    :cond_0
    iget p1, p0, Lxyz/aethersx2/android/b$h;->l0:I

    invoke-virtual {p0, p1, p2}, Landroidx/preference/b;->B(ILjava/lang/String;)V

    return-void
.end method
