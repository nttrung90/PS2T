.class public abstract Lxyz/aethersx2/android/f$a;
.super Landroidx/preference/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/aethersx2/android/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# static fields
.field public static final synthetic l0:I


# instance fields
.field public final k0:Lxyz/aethersx2/android/f;


# direct methods
.method public constructor <init>(Lxyz/aethersx2/android/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/b;-><init>()V

    .line 2
    iput-object p1, p0, Lxyz/aethersx2/android/f$a;->k0:Lxyz/aethersx2/android/f;

    return-void
.end method


# virtual methods
.method public abstract C()V
.end method

.method public final a(Landroidx/preference/Preference;)V
    .locals 6

    .line 1
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroidx/preference/b;->a(Landroidx/preference/Preference;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroidx/preference/ListPreference;

    .line 4
    new-instance v0, Landroidx/appcompat/app/d$a;

    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v1, p1, Landroidx/preference/Preference;->k:Ljava/lang/CharSequence;

    .line 6
    iget-object v2, v0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    .line 7
    iget-object v1, p1, Landroidx/preference/ListPreference;->X:[Ljava/lang/CharSequence;

    .line 8
    array-length v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const v4, 0x7f1000d7

    .line 9
    invoke-virtual {p0, v4}, Landroidx/fragment/app/n;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 10
    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object v1, p1, Landroidx/preference/ListPreference;->Z:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->W(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v3

    .line 13
    new-instance v3, Lq3/d;

    const/4 v4, 0x5

    invoke-direct {v3, p1, v4}, Lq3/d;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2, v1, v3}, Landroidx/appcompat/app/d$a;->i([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    const p1, 0x7f100084

    .line 14
    sget-object v1, Lq3/e;->n:Lq3/e;

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/d$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 15
    invoke-virtual {v0}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/preference/b;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lxyz/aethersx2/android/f$a;->k0:Lxyz/aethersx2/android/f;

    .line 3
    iget-object v0, v0, Lxyz/aethersx2/android/f;->g0:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

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

.method public final z(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/preference/b;->d0:Landroidx/preference/PreferenceManager;

    .line 2
    iget-object p2, p0, Lxyz/aethersx2/android/f$a;->k0:Lxyz/aethersx2/android/f;

    .line 3
    iget-object p2, p2, Lxyz/aethersx2/android/f;->f0:Lq3/a2;

    .line 4
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceManager;->setPreferenceDataStore(Lc1/e;)V

    .line 5
    iget-object p1, p0, Landroidx/preference/b;->d0:Landroidx/preference/PreferenceManager;

    .line 6
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Landroidx/preference/PreferenceManager$a;)V

    .line 7
    invoke-virtual {p0}, Lxyz/aethersx2/android/f$a;->C()V

    .line 8
    iget-object p1, p0, Lxyz/aethersx2/android/f$a;->k0:Lxyz/aethersx2/android/f;

    .line 9
    iget-object p1, p1, Lxyz/aethersx2/android/f;->g0:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
