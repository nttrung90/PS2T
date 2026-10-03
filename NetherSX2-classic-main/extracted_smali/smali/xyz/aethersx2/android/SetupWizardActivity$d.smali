.class public final Lxyz/aethersx2/android/SetupWizardActivity$d;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/aethersx2/android/SetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/fragment/app/o;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/o;->v()Landroidx/fragment/app/y;

    move-result-object v0

    .line 2
    iget-object p1, p1, Landroidx/activity/ComponentActivity;->f:Landroidx/lifecycle/n;

    .line 3
    invoke-direct {p0, v0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/y;Landroidx/lifecycle/h;)V

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final s(I)Landroidx/fragment/app/n;
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 1
    new-instance p1, Landroidx/fragment/app/n;

    invoke-direct {p1}, Landroidx/fragment/app/n;-><init>()V

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lxyz/aethersx2/android/SetupWizardActivity$f;

    const v0, 0x7f0c0042

    invoke-direct {p1, v0}, Lxyz/aethersx2/android/SetupWizardActivity$f;-><init>(I)V

    return-object p1

    .line 3
    :cond_1
    new-instance p1, Lxyz/aethersx2/android/SetupWizardActivity$b;

    invoke-direct {p1}, Lxyz/aethersx2/android/SetupWizardActivity$b;-><init>()V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lxyz/aethersx2/android/SetupWizardActivity$c;

    invoke-direct {p1}, Lxyz/aethersx2/android/SetupWizardActivity$c;-><init>()V

    return-object p1

    .line 5
    :cond_3
    new-instance p1, Lxyz/aethersx2/android/SetupWizardActivity$e;

    invoke-direct {p1}, Lxyz/aethersx2/android/SetupWizardActivity$e;-><init>()V

    return-object p1

    .line 6
    :cond_4
    new-instance p1, Lxyz/aethersx2/android/SetupWizardActivity$a;

    invoke-direct {p1}, Lxyz/aethersx2/android/SetupWizardActivity$a;-><init>()V

    return-object p1

    .line 7
    :cond_5
    new-instance p1, Lxyz/aethersx2/android/SetupWizardActivity$f;

    const v0, 0x7f0c0046

    invoke-direct {p1, v0}, Lxyz/aethersx2/android/SetupWizardActivity$f;-><init>(I)V

    return-object p1
.end method
