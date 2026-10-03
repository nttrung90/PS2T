.class public final Lxyz/aethersx2/android/RectPreference$b;
.super Landroidx/fragment/app/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/aethersx2/android/RectPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final synthetic t0:I


# instance fields
.field public s0:Lxyz/aethersx2/android/RectPreference;


# direct methods
.method public constructor <init>(Lxyz/aethersx2/android/RectPreference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    .line 2
    iput-object p1, p0, Lxyz/aethersx2/android/RectPreference$b;->s0:Lxyz/aethersx2/android/RectPreference;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c003e

    .line 1
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09026d

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 3
    iget-object p3, p0, Lxyz/aethersx2/android/RectPreference$b;->s0:Lxyz/aethersx2/android/RectPreference;

    .line 4
    iget-object p3, p3, Landroidx/preference/Preference;->k:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const p2, 0x7f090097

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    new-instance p3, Lq3/f;

    const/16 v0, 0xa

    invoke-direct {p3, p0, v0}, Lq3/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/m;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Lxyz/aethersx2/android/RectPreference$b;->s0:Lxyz/aethersx2/android/RectPreference;

    .line 3
    invoke-virtual {p1}, Landroidx/preference/Preference;->o()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getChildFragmentManager()Landroidx/fragment/app/y;

    move-result-object p1

    .line 2
    new-instance p2, Landroidx/fragment/app/a;

    invoke-direct {p2, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/y;)V

    .line 3
    new-instance p1, Lxyz/aethersx2/android/RectPreference$a;

    iget-object v0, p0, Lxyz/aethersx2/android/RectPreference$b;->s0:Lxyz/aethersx2/android/RectPreference;

    invoke-direct {p1, v0}, Lxyz/aethersx2/android/RectPreference$a;-><init>(Lxyz/aethersx2/android/RectPreference;)V

    const v0, 0x7f0900a1

    .line 4
    invoke-virtual {p2, v0, p1}, Landroidx/fragment/app/f0;->e(ILandroidx/fragment/app/n;)Landroidx/fragment/app/f0;

    invoke-virtual {p2}, Landroidx/fragment/app/a;->g()I

    return-void
.end method
