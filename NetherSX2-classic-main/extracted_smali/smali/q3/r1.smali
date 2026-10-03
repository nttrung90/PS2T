.class public final synthetic Lq3/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$e;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lxyz/aethersx2/android/EmulationActivity$c;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/EmulationActivity$c;I)V
    .locals 0

    iput p2, p0, Lq3/r1;->c:I

    iput-object p1, p0, Lq3/r1;->d:Lxyz/aethersx2/android/EmulationActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroidx/preference/Preference;)Z
    .locals 5

    iget p1, p0, Lq3/r1;->c:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, Lq3/r1;->d:Lxyz/aethersx2/android/EmulationActivity$c;

    .line 1
    iget-object v2, p1, Lxyz/aethersx2/android/EmulationActivity$c;->k0:Lxyz/aethersx2/android/EmulationActivity$b;

    invoke-virtual {v2, v0}, Lxyz/aethersx2/android/EmulationActivity$b;->z(Z)V

    .line 2
    iget-object p1, p1, Lxyz/aethersx2/android/EmulationActivity$c;->l0:Lxyz/aethersx2/android/EmulationActivity;

    .line 3
    iget-object v2, p1, Lxyz/aethersx2/android/EmulationActivity;->z:Landroid/content/SharedPreferences;

    const-string v3, "UI/DisplayPatchCodeWarning"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p1}, Lxyz/aethersx2/android/EmulationActivity;->M()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Landroidx/appcompat/app/d$a;

    invoke-direct {v2, p1}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    const v3, 0x7f10009e

    .line 6
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/d$a;->c(I)Landroidx/appcompat/app/d$a;

    const v3, 0x7f100108

    .line 7
    new-instance v4, Lq3/g1;

    invoke-direct {v4, p1, v0}, Lq3/g1;-><init>(Lxyz/aethersx2/android/EmulationActivity;I)V

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/d$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    const v3, 0x7f100107

    .line 8
    new-instance v4, Lq3/f1;

    invoke-direct {v4, p1, v0}, Lq3/f1;-><init>(Lxyz/aethersx2/android/EmulationActivity;I)V

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/d$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    const v0, 0x7f10009f

    .line 9
    new-instance v3, Lq3/g1;

    invoke-direct {v3, p1, v1}, Lq3/g1;-><init>(Lxyz/aethersx2/android/EmulationActivity;I)V

    invoke-virtual {v2, v0, v3}, Landroidx/appcompat/app/d$a;->f(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 10
    invoke-virtual {v2}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_0
    return v1

    .line 11
    :pswitch_1
    iget-object p1, p0, Lq3/r1;->d:Lxyz/aethersx2/android/EmulationActivity$c;

    .line 12
    iget-object v2, p1, Lxyz/aethersx2/android/EmulationActivity$c;->k0:Lxyz/aethersx2/android/EmulationActivity$b;

    invoke-virtual {v2, v0}, Lxyz/aethersx2/android/EmulationActivity$b;->z(Z)V

    .line 13
    iget-object v2, p1, Lxyz/aethersx2/android/EmulationActivity$c;->l0:Lxyz/aethersx2/android/EmulationActivity;

    .line 14
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "EmuCore"

    const-string v3, "SaveStateOnShutdown"

    .line 15
    invoke-static {v2, v3, v0}, Lxyz/aethersx2/android/NativeLibrary;->getBooleanSettingValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16
    invoke-static {v1}, Lxyz/aethersx2/android/NativeLibrary;->stopEmulationThread(Z)V

    .line 17
    iget-object p1, p1, Lxyz/aethersx2/android/EmulationActivity$c;->l0:Lxyz/aethersx2/android/EmulationActivity;

    .line 18
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v2, Lxyz/aethersx2/android/EmulationActivity$d;

    invoke-direct {v2, p1}, Lxyz/aethersx2/android/EmulationActivity$d;-><init>(Lxyz/aethersx2/android/EmulationActivity;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 20
    :cond_1
    invoke-static {v0}, Lxyz/aethersx2/android/NativeLibrary;->stopEmulationThread(Z)V

    .line 21
    iget-object p1, p1, Lxyz/aethersx2/android/EmulationActivity$c;->l0:Lxyz/aethersx2/android/EmulationActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_1
    return v1

    .line 22
    :pswitch_2
    iget-object p1, p0, Lq3/r1;->d:Lxyz/aethersx2/android/EmulationActivity$c;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 23
    invoke-static {v0}, Lxyz/aethersx2/android/NativeLibrary;->toggleLimiterMode(I)V

    .line 24
    iget-object p1, p1, Lxyz/aethersx2/android/EmulationActivity$c;->k0:Lxyz/aethersx2/android/EmulationActivity$b;

    invoke-virtual {p1, v1}, Lxyz/aethersx2/android/EmulationActivity$b;->z(Z)V

    return v1

    .line 25
    :pswitch_3
    iget-object p1, p0, Lq3/r1;->d:Lxyz/aethersx2/android/EmulationActivity$c;

    .line 26
    iget-object v2, p1, Lxyz/aethersx2/android/EmulationActivity$c;->l0:Lxyz/aethersx2/android/EmulationActivity;

    invoke-static {v2, v0}, Lxyz/aethersx2/android/EmulationActivity;->B(Lxyz/aethersx2/android/EmulationActivity;Z)V

    .line 27
    iget-object p1, p1, Lxyz/aethersx2/android/EmulationActivity$c;->k0:Lxyz/aethersx2/android/EmulationActivity$b;

    invoke-virtual {p1, v0}, Lxyz/aethersx2/android/EmulationActivity$b;->z(Z)V

    return v1

    .line 28
    :goto_2
    iget-object p1, p0, Lq3/r1;->d:Lxyz/aethersx2/android/EmulationActivity$c;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->resetVM()V

    .line 30
    iget-object p1, p1, Lxyz/aethersx2/android/EmulationActivity$c;->k0:Lxyz/aethersx2/android/EmulationActivity$b;

    invoke-virtual {p1, v1}, Lxyz/aethersx2/android/EmulationActivity$b;->z(Z)V

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
