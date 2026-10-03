.class public final synthetic Lq3/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxyz/aethersx2/android/h$a;
.implements Landroidx/preference/Preference$e;


# instance fields
.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Z)V
    .locals 0

    iput-object p1, p0, Lq3/l1;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Lq3/l1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lxyz/aethersx2/android/i;)Z
    .locals 3

    iget-object v0, p0, Lq3/l1;->d:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/EmulationActivity;

    iget-boolean v1, p0, Lq3/l1;->c:Z

    sget v2, Lxyz/aethersx2/android/EmulationActivity;->N:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1
    iget p1, p1, Lxyz/aethersx2/android/i;->a:I

    .line 2
    invoke-static {p1}, Lxyz/aethersx2/android/NativeLibrary;->saveStateSlot(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lxyz/aethersx2/android/i;->b()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 4
    :cond_1
    iget p1, p1, Lxyz/aethersx2/android/i;->a:I

    .line 5
    invoke-static {p1}, Lxyz/aethersx2/android/NativeLibrary;->loadStateSlot(I)V

    .line 6
    :goto_0
    invoke-virtual {v0}, Lxyz/aethersx2/android/EmulationActivity;->K()V

    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final d(Landroidx/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lq3/l1;->d:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/SetupWizardActivity$e$a;

    iget-boolean v1, p0, Lq3/l1;->c:Z

    .line 1
    iget-object v0, v0, Lxyz/aethersx2/android/SetupWizardActivity$e$a;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->W(Z)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v1}, Lxyz/aethersx2/android/NativeLibrary;->setDefaultSettings(Z)V

    const/4 p1, 0x1

    return p1
.end method
