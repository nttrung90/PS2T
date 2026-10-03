.class public Lxyz/aethersx2/android/EmulationActivity;
.super Lq3/p;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxyz/aethersx2/android/EmulationActivity$a;,
        Lxyz/aethersx2/android/EmulationActivity$c;,
        Lxyz/aethersx2/android/EmulationActivity$b;,
        Lxyz/aethersx2/android/EmulationActivity$d;
    }
.end annotation


# static fields
.field public static final synthetic N:I


# instance fields
.field public A:Lq3/a2;

.field public B:Lq3/a2;

.field public C:Z

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Lr3/b;

.field public G:Lxyz/aethersx2/android/EmulationSurfaceView;

.field public H:Landroid/hardware/SensorManager;

.field public I:Landroid/view/Display;

.field public J:Lxyz/aethersx2/android/EmulationActivity$b;

.field public K:Z

.field public L:Lxyz/aethersx2/android/k;

.field public M:Lq3/m1;

.field public z:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lq3/p;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lxyz/aethersx2/android/EmulationActivity;->C:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lxyz/aethersx2/android/EmulationActivity;->D:Ljava/lang/String;

    .line 4
    iput-object v1, p0, Lxyz/aethersx2/android/EmulationActivity;->E:Ljava/lang/String;

    .line 5
    iput-boolean v0, p0, Lxyz/aethersx2/android/EmulationActivity;->K:Z

    return-void
.end method

.method public static A(Lxyz/aethersx2/android/EmulationActivity;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->getCheevoList()[Lxyz/aethersx2/android/Achievement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lxyz/aethersx2/android/EmulationActivity;->K()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lq3/c;

    invoke-direct {v1, v0}, Lq3/c;-><init>([Lxyz/aethersx2/android/Achievement;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/o;->v()Landroidx/fragment/app/y;

    move-result-object v0

    const-string v2, "fragment_achievement_list"

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/m;->show(Landroidx/fragment/app/y;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lq3/i1;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lq3/i1;-><init>(Lxyz/aethersx2/android/EmulationActivity;I)V

    .line 7
    iput-object v0, v1, Lq3/c;->v0:Landroid/content/DialogInterface$OnDismissListener;

    :goto_0
    return-void
.end method

.method public static B(Lxyz/aethersx2/android/EmulationActivity;Z)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->getGameInfo()Lq3/t1;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {v0}, Lq3/t1;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    invoke-virtual {v0}, Lq3/t1;->b()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, v0, Lq3/t1;->b:Ljava/lang/String;

    iget v0, v0, Lq3/t1;->e:I

    invoke-static {p0, v1, v0}, Lxyz/aethersx2/android/i;->c(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    new-instance v1, Lxyz/aethersx2/android/h;

    if-eqz p1, :cond_3

    const v2, 0x7f1000a7

    goto :goto_1

    :cond_3
    const v2, 0x7f1000a4

    .line 8
    :goto_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lxyz/aethersx2/android/h;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lq3/l1;

    invoke-direct {v0, p0, p1}, Lq3/l1;-><init>(Ljava/lang/Object;Z)V

    .line 10
    iput-object v0, v1, Lxyz/aethersx2/android/h;->x0:Lxyz/aethersx2/android/h$a;

    .line 11
    new-instance p1, Lq3/j1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lq3/j1;-><init>(Lxyz/aethersx2/android/EmulationActivity;I)V

    .line 12
    iput-object p1, v1, Lxyz/aethersx2/android/h;->y0:Landroid/content/DialogInterface$OnDismissListener;

    .line 13
    invoke-virtual {v1}, Landroidx/fragment/app/m;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 15
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/o;->v()Landroidx/fragment/app/y;

    move-result-object p0

    const-string p1, "SaveStateGridFragment"

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/m;->show(Landroidx/fragment/app/y;Ljava/lang/String;)V

    goto :goto_3

    .line 16
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lxyz/aethersx2/android/EmulationActivity;->K()V

    :cond_6
    :goto_3
    return-void
.end method

.method public static C(Lxyz/aethersx2/android/EmulationActivity;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->hasEmulationThread()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->reloadGameSettings()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lxyz/aethersx2/android/EmulationActivity;->L(Z)V

    .line 5
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->hasValidRenderSurface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lxyz/aethersx2/android/EmulationActivity;->D()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lxyz/aethersx2/android/EmulationActivity;->C:Z

    :goto_0
    return-void
.end method

.method public static J(Ljava/lang/String;)I
    .locals 1

    const-string v0, "Sensor/"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "Pointer-0/"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final D()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lxyz/aethersx2/android/EmulationActivity;->R()V

    .line 2
    invoke-virtual {p0}, Le/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 3
    invoke-virtual {p0, v0}, Lxyz/aethersx2/android/EmulationActivity;->Q(I)V

    .line 4
    invoke-virtual {p0}, Lxyz/aethersx2/android/EmulationActivity;->P()V

    .line 5
    invoke-virtual {p0}, Lxyz/aethersx2/android/EmulationActivity;->O()V

    return-void
.end method

.method public final E()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public final F(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->B:Lq3/a2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lq3/a2;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->B:Lq3/a2;

    invoke-virtual {v0, p1, p2}, Lq3/a2;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :try_start_1
    const-string v1, ""

    .line 5
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    return p2
.end method

.method public final G(Ljava/lang/String;F)F
    .locals 2

    .line 1
    iget-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->B:Lq3/a2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lq3/a2;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->B:Lq3/a2;

    invoke-virtual {v0, p1, p2}, Lq3/a2;->b(Ljava/lang/String;F)F

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 v1, 0x0

    .line 5
    :try_start_1
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    int-to-float p1, p1

    return p1

    :catch_1
    :try_start_2
    const-string v1, ""

    .line 6
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return p1

    :catch_2
    return p2
.end method

.method public final H(Ljava/lang/String;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->B:Lq3/a2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lq3/a2;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->B:Lq3/a2;

    invoke-virtual {v0, p1, p2}, Lq3/a2;->c(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 v1, 0x0

    .line 5
    :try_start_1
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    float-to-int p1, p1

    return p1

    :catch_1
    :try_start_2
    const-string v1, ""

    .line 6
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return p1

    :catch_2
    return p2
.end method

.method public final I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->B:Lq3/a2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lq3/a2;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->B:Lq3/a2;

    invoke-virtual {v0, p1, p2}, Lq3/a2;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p2
.end method

.method public final K()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lxyz/aethersx2/android/EmulationActivity;->E()V

    .line 2
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->isVMPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lxyz/aethersx2/android/NativeLibrary;->pauseVM(Z)V

    :cond_0
    return-void
.end method

.method public final L(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iput-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->A:Lq3/a2;

    .line 2
    iput-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->B:Lq3/a2;

    .line 3
    :cond_0
    iget-object p1, p0, Lxyz/aethersx2/android/EmulationActivity;->A:Lq3/a2;

    if-nez p1, :cond_3

    .line 4
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->getGameInfo()Lq3/t1;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lq3/t1;->b()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Lq3/a2;

    .line 7
    iget p1, p1, Lq3/t1;->e:I

    .line 8
    invoke-static {p1}, Lxyz/aethersx2/android/NativeLibrary;->getGameSettingsPath(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lq3/a2;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lxyz/aethersx2/android/EmulationActivity;->A:Lq3/a2;

    .line 9
    iget-boolean p1, v1, Lq3/a2;->c:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    const-string v1, "Failed to parse game settings, you may need to recreate them."

    .line 10
    invoke-static {p0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 11
    iput-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->A:Lq3/a2;

    :cond_2
    :goto_0
    return-void

    .line 12
    :cond_3
    invoke-virtual {p1}, Lq3/a2;->p()V

    .line 13
    :cond_4
    iput-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->B:Lq3/a2;

    .line 14
    iget-object p1, p0, Lxyz/aethersx2/android/EmulationActivity;->A:Lq3/a2;

    const/4 v1, 0x0

    const-string v2, "Pad/UseGameSettingsForController"

    invoke-virtual {p1, v2, v1}, Lq3/a2;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 15
    iget-object p1, p0, Lxyz/aethersx2/android/EmulationActivity;->A:Lq3/a2;

    iput-object p1, p0, Lxyz/aethersx2/android/EmulationActivity;->B:Lq3/a2;

    goto :goto_1

    .line 16
    :cond_5
    iget-object p1, p0, Lxyz/aethersx2/android/EmulationActivity;->A:Lq3/a2;

    const-string v1, "Pad/InputProfileName"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lq3/a2;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 18
    invoke-static {p1}, Lxyz/aethersx2/android/NativeLibrary;->getInputProfilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance v1, Lq3/a2;

    invoke-direct {v1, p1}, Lq3/a2;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lxyz/aethersx2/android/EmulationActivity;->B:Lq3/a2;

    .line 20
    iget-boolean p1, v1, Lq3/a2;->c:Z

    if-eqz p1, :cond_6

    .line 21
    iput-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->B:Lq3/a2;

    :cond_6
    :goto_1
    return-void
.end method

.method public final M()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/appcompat/app/d$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lxyz/aethersx2/android/EmulationActivity;->z:Landroid/content/SharedPreferences;

    const-string v2, "EmuCore/EnableCheats"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 3
    invoke-virtual {p0}, Le/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f03000c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    if-eqz v1, :cond_0

    const v5, 0x7f10017b

    goto :goto_0

    :cond_0
    const v5, 0x7f10017c

    .line 4
    :goto_0
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 5
    new-instance v4, Lq3/h1;

    invoke-direct {v4, p0, v1, v3}, Lq3/h1;-><init>(Lq3/p;ZI)V

    invoke-virtual {v0, v2, v4}, Landroidx/appcompat/app/d$a;->b([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 6
    new-instance v1, Lq3/e1;

    invoke-direct {v1, p0}, Lq3/e1;-><init>(Lxyz/aethersx2/android/EmulationActivity;)V

    .line 7
    iget-object v2, v0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$b;->m:Landroid/content/DialogInterface$OnCancelListener;

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final N()V
    .locals 3

    .line 1
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->isVMPaused()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lxyz/aethersx2/android/NativeLibrary;->pauseVM(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->J:Lxyz/aethersx2/android/EmulationActivity$b;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lxyz/aethersx2/android/EmulationActivity$b;->z(Z)V

    .line 5
    :cond_1
    new-instance v0, Lxyz/aethersx2/android/EmulationActivity$b;

    invoke-direct {v0, p0}, Lxyz/aethersx2/android/EmulationActivity$b;-><init>(Lxyz/aethersx2/android/EmulationActivity;)V

    iput-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->J:Lxyz/aethersx2/android/EmulationActivity$b;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/o;->v()Landroidx/fragment/app/y;

    move-result-object v1

    const-string v2, "MenuDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/m;->show(Landroidx/fragment/app/y;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->J:Lxyz/aethersx2/android/EmulationActivity$b;

    invoke-virtual {v0}, Lxyz/aethersx2/android/EmulationActivity$b;->D()V

    return-void
.end method

.method public final O()V
    .locals 21

    move-object/from16 v9, p0

    const-string v0, "TouchscreenController/PortIndex"

    const/4 v10, 0x0

    .line 1
    invoke-virtual {v9, v0, v10}, Lxyz/aethersx2/android/EmulationActivity;->H(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "TouchscreenController/View"

    const-string v2, "analog_stick"

    .line 2
    invoke-virtual {v9, v1, v2}, Lxyz/aethersx2/android/EmulationActivity;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x1

    new-array v3, v11, [Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    const-string v4, "Pad%d/Type"

    invoke-static {v4, v3}, Lxyz/aethersx2/android/FileHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DualShock2"

    invoke-virtual {v9, v3, v4}, Lxyz/aethersx2/android/EmulationActivity;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TouchscreenController/AutoHide"

    .line 4
    invoke-virtual {v9, v4, v10}, Lxyz/aethersx2/android/EmulationActivity;->F(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "TouchscreenController/TouchGliding"

    .line 5
    invoke-virtual {v9, v5, v10}, Lxyz/aethersx2/android/EmulationActivity;->F(Ljava/lang/String;Z)Z

    move-result v7

    const-string v5, "TouchscreenController/HapticFeedback"

    .line 6
    invoke-virtual {v9, v5, v10}, Lxyz/aethersx2/android/EmulationActivity;->F(Ljava/lang/String;Z)Z

    move-result v6

    .line 7
    invoke-static/range {p0 .. p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 8
    iget-object v8, v9, Lxyz/aethersx2/android/EmulationActivity;->B:Lq3/a2;

    invoke-static {v5, v8}, Lxyz/aethersx2/android/b;->D(Landroid/content/SharedPreferences;Lq3/a2;)[Z

    move-result-object v8

    move v13, v10

    move v12, v11

    :goto_0
    const/16 v14, 0x8

    const/4 v15, 0x2

    if-gt v12, v14, :cond_a

    add-int/lit8 v14, v12, -0x1

    if-lt v14, v15, :cond_0

    move/from16 v16, v11

    goto :goto_1

    :cond_0
    move/from16 v16, v10

    :goto_1
    if-eqz v16, :cond_3

    const/4 v10, 0x4

    if-le v14, v10, :cond_1

    move v14, v11

    goto :goto_2

    :cond_1
    if-le v14, v11, :cond_2

    const/4 v14, 0x0

    .line 9
    :cond_2
    :goto_2
    aget-boolean v10, v8, v14

    if-nez v10, :cond_3

    goto :goto_4

    .line 10
    :cond_3
    iget-object v10, v9, Lxyz/aethersx2/android/EmulationActivity;->B:Lq3/a2;

    if-eqz v10, :cond_4

    .line 11
    invoke-static {v10, v12}, Lxyz/aethersx2/android/b;->B(Lq3/a2;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 12
    :cond_4
    invoke-static {v5, v12}, Lxyz/aethersx2/android/b;->A(Landroid/content/SharedPreferences;I)Ljava/lang/String;

    move-result-object v10

    .line 13
    :goto_3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_4

    .line 14
    :cond_5
    invoke-static {v10, v11}, Lxyz/aethersx2/android/NativeLibrary;->getPadBinds(Ljava/lang/String;Z)[Lxyz/aethersx2/android/InputBindingInfo;

    move-result-object v10

    if-nez v10, :cond_7

    :cond_6
    :goto_4
    move/from16 v19, v0

    move-object/from16 v20, v3

    goto :goto_8

    .line 15
    :cond_7
    array-length v14, v10

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v14, :cond_6

    aget-object v18, v10, v11

    move/from16 v19, v0

    new-array v0, v15, [Ljava/lang/Object;

    .line 16
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v16, 0x0

    aput-object v20, v0, v16

    invoke-virtual/range {v18 .. v18}, Lxyz/aethersx2/android/InputBindingInfo;->getName()Ljava/lang/String;

    move-result-object v18

    const/16 v17, 0x1

    aput-object v18, v0, v17

    const-string v15, "Pad%d/%s"

    invoke-static {v15, v0}, Lxyz/aethersx2/android/FileHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 17
    iget-object v15, v9, Lxyz/aethersx2/android/EmulationActivity;->B:Lq3/a2;

    if-eqz v15, :cond_8

    move-object/from16 v20, v3

    const/4 v3, 0x0

    .line 18
    invoke-virtual {v15, v0, v3}, Lq3/a2;->e(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_6

    :cond_8
    move-object/from16 v20, v3

    .line 19
    invoke-static {v5, v0}, Lxyz/aethersx2/android/PreferenceHelpers;->getStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_9

    .line 20
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 21
    invoke-static {v3}, Lxyz/aethersx2/android/EmulationActivity;->J(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v13, v3

    goto :goto_7

    :cond_9
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v19

    move-object/from16 v3, v20

    const/4 v15, 0x2

    goto :goto_5

    :goto_8
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v19

    move-object/from16 v3, v20

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_a
    move/from16 v19, v0

    move-object/from16 v20, v3

    .line 22
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->getHotkeyInfoList()[Lxyz/aethersx2/android/HotkeyInfo;

    move-result-object v0

    array-length v3, v0

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v3, :cond_d

    aget-object v10, v0, v8

    .line 23
    invoke-virtual {v10}, Lxyz/aethersx2/android/HotkeyInfo;->getBindingConfigKey()Ljava/lang/String;

    move-result-object v10

    .line 24
    iget-object v11, v9, Lxyz/aethersx2/android/EmulationActivity;->B:Lq3/a2;

    if-eqz v11, :cond_b

    const/4 v12, 0x0

    .line 25
    invoke-virtual {v11, v10, v12}, Lq3/a2;->e(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v10

    goto :goto_a

    .line 26
    :cond_b
    invoke-static {v5, v10}, Lxyz/aethersx2/android/PreferenceHelpers;->getStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v10

    :goto_a
    if-eqz v10, :cond_c

    .line 27
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 28
    invoke-static {v11}, Lxyz/aethersx2/android/EmulationActivity;->J(Ljava/lang/String;)I

    move-result v11

    or-int/2addr v13, v11

    goto :goto_b

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_d
    and-int/lit8 v0, v13, 0x2

    if-nez v0, :cond_f

    const-string v0, "TouchscreenController/BindToRightStick"

    const/4 v3, 0x0

    .line 29
    invoke-virtual {v9, v0, v3}, Lxyz/aethersx2/android/EmulationActivity;->F(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_c

    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v0, 0x1

    .line 30
    :goto_d
    iget-boolean v3, v9, Lxyz/aethersx2/android/EmulationActivity;->K:Z

    const-string v5, "digital"

    if-eqz v3, :cond_11

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object v2, v5

    goto :goto_e

    .line 32
    :cond_10
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_e

    :cond_11
    move-object v2, v1

    :goto_e
    const/4 v1, -0x1

    move v8, v0

    move v5, v1

    move-object/from16 v3, v20

    const/4 v0, 0x0

    :goto_f
    const-string v1, "None"

    const/4 v10, 0x2

    if-ge v0, v10, :cond_15

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    add-int/lit8 v10, v0, 0x1

    .line 33
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x0

    aput-object v12, v11, v14

    const-string v12, "USB%d/Type"

    invoke-static {v12, v11}, Lxyz/aethersx2/android/FileHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11, v1}, Lxyz/aethersx2/android/EmulationActivity;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v11, "guncon2"

    .line 34
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "lightgun"

    if-eqz v11, :cond_14

    .line 35
    iget-object v2, v9, Lxyz/aethersx2/android/EmulationActivity;->L:Lxyz/aethersx2/android/k;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lxyz/aethersx2/android/k;->getViewType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_10

    :cond_12
    const/4 v8, 0x1

    const/4 v11, 0x2

    const/4 v14, 0x0

    goto :goto_11

    :cond_13
    :goto_10
    const v2, 0x7f10009d

    const/4 v11, 0x2

    new-array v3, v11, [Ljava/lang/Object;

    .line 36
    invoke-static {v1}, Lxyz/aethersx2/android/NativeLibrary;->getUSBDeviceDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x0

    aput-object v5, v3, v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v3, v8

    .line 37
    invoke-virtual {v9, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_11
    new-array v2, v11, [Ljava/lang/Object;

    .line 39
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v14

    aput-object v1, v2, v8

    const-string v3, "USB%d/%s_subtype"

    invoke-static {v3, v2}, Lxyz/aethersx2/android/FileHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2, v14}, Lxyz/aethersx2/android/EmulationActivity;->H(Ljava/lang/String;I)I

    move-result v5

    move/from16 v19, v0

    move-object v3, v1

    move-object v2, v12

    const/4 v8, 0x1

    goto :goto_12

    :cond_14
    const/4 v11, 0x2

    const/4 v14, 0x0

    :goto_12
    move v0, v10

    goto :goto_f

    :cond_15
    const/4 v14, 0x0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Controller type: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "EmulationActivity"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "View type: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "none"

    if-eqz v4, :cond_16

    .line 42
    iget-object v4, v9, Lxyz/aethersx2/android/EmulationActivity;->G:Lxyz/aethersx2/android/EmulationSurfaceView;

    .line 43
    iget-boolean v4, v4, Lxyz/aethersx2/android/EmulationSurfaceView;->d:Z

    if-eqz v4, :cond_16

    move-object v11, v0

    goto :goto_13

    :cond_16
    move-object v11, v2

    .line 44
    :goto_13
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_14

    .line 45
    :cond_17
    iget-object v0, v9, Lxyz/aethersx2/android/EmulationActivity;->L:Lxyz/aethersx2/android/k;

    if-nez v0, :cond_18

    .line 46
    new-instance v0, Lxyz/aethersx2/android/k;

    invoke-direct {v0, v9}, Lxyz/aethersx2/android/k;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lxyz/aethersx2/android/EmulationActivity;->L:Lxyz/aethersx2/android/k;

    .line 47
    iget-object v1, v9, Lxyz/aethersx2/android/EmulationActivity;->F:Lr3/b;

    iget-object v1, v1, Lr3/b;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_18
    if-gez v5, :cond_19

    .line 48
    iget-object v0, v9, Lxyz/aethersx2/android/EmulationActivity;->L:Lxyz/aethersx2/android/k;

    move-object/from16 v1, p0

    move/from16 v2, v19

    move-object v4, v11

    move v5, v6

    move v6, v7

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Lxyz/aethersx2/android/k;->o(Lxyz/aethersx2/android/EmulationActivity;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    goto :goto_15

    .line 49
    :cond_19
    iget-object v0, v9, Lxyz/aethersx2/android/EmulationActivity;->L:Lxyz/aethersx2/android/k;

    move-object/from16 v1, p0

    move/from16 v2, v19

    move v4, v5

    move-object v5, v11

    invoke-virtual/range {v0 .. v8}, Lxyz/aethersx2/android/k;->p(Lxyz/aethersx2/android/EmulationActivity;ILjava/lang/String;ILjava/lang/String;ZZZ)V

    goto :goto_15

    .line 50
    :cond_1a
    :goto_14
    iget-object v0, v9, Lxyz/aethersx2/android/EmulationActivity;->L:Lxyz/aethersx2/android/k;

    if-eqz v0, :cond_1b

    .line 51
    iget-object v1, v9, Lxyz/aethersx2/android/EmulationActivity;->F:Lr3/b;

    iget-object v1, v1, Lr3/b;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 52
    iput-object v0, v9, Lxyz/aethersx2/android/EmulationActivity;->L:Lxyz/aethersx2/android/k;

    :cond_1b
    :goto_15
    const/4 v0, 0x1

    and-int/lit8 v1, v13, 0x1

    if-eqz v1, :cond_1c

    const/4 v14, 0x1

    :cond_1c
    if-eqz v14, :cond_1d

    const-string v0, "Accelerometer is enabled"

    goto :goto_16

    :cond_1d
    const-string v0, "Accelerometer is disabled"

    .line 53
    :goto_16
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_21

    .line 54
    iget-object v0, v9, Lxyz/aethersx2/android/EmulationActivity;->H:Landroid/hardware/SensorManager;

    if-nez v0, :cond_21

    if-eqz v0, :cond_1e

    goto :goto_17

    :cond_1e
    const-string v0, "sensor"

    .line 55
    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_23

    .line 56
    iget-object v1, v9, Lxyz/aethersx2/android/EmulationActivity;->I:Landroid/view/Display;

    if-nez v1, :cond_1f

    goto :goto_17

    :cond_1f
    const/4 v1, 0x1

    .line 57
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-nez v2, :cond_20

    goto :goto_17

    :cond_20
    const/4 v3, 0x0

    .line 58
    invoke-virtual {v0, v9, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 59
    iput-object v0, v9, Lxyz/aethersx2/android/EmulationActivity;->H:Landroid/hardware/SensorManager;

    goto :goto_17

    :cond_21
    if-nez v14, :cond_23

    .line 60
    iget-object v0, v9, Lxyz/aethersx2/android/EmulationActivity;->H:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_23

    if-nez v0, :cond_22

    goto :goto_17

    .line 61
    :cond_22
    invoke-virtual {v0, v9}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 62
    iput-object v0, v9, Lxyz/aethersx2/android/EmulationActivity;->H:Landroid/hardware/SensorManager;

    :cond_23
    :goto_17
    return-void
.end method

.method public final P()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "UI"

    const-string v1, "ExpandToCutout"

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Lxyz/aethersx2/android/NativeLibrary;->getBooleanSettingValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v2, v3

    :cond_1
    if-ne v0, v2, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 5
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final Q(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const-string v2, "UI"

    const-string v3, "DisplayAlignment"

    const-string v4, "-1"

    .line 1
    invoke-static {v2, v3, v4}, Lxyz/aethersx2/android/NativeLibrary;->getStringSettingValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_or_top"

    .line 2
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "center"

    .line 3
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    const-string v0, "right_or_bottom"

    .line 4
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    move v0, p1

    .line 5
    :goto_1
    invoke-static {v0}, Lxyz/aethersx2/android/NativeLibrary;->setDisplayAlignment(I)V

    .line 6
    iget-object p1, p0, Lxyz/aethersx2/android/EmulationActivity;->L:Lxyz/aethersx2/android/k;

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p1}, Lxyz/aethersx2/android/k;->E()V

    :cond_4
    return-void
.end method

.method public final R()V
    .locals 3

    const-string v0, "UI"

    const-string v1, "EmulationActivityOrientation"

    const-string v2, "unspecified"

    .line 1
    invoke-static {v0, v1, v2}, Lxyz/aethersx2/android/NativeLibrary;->getStringSettingValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "portrait"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const-string v1, "landscape"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xb

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const-string v1, "sensor"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->hasEmulationThread()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_2

    .line 2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lxyz/aethersx2/android/NativeLibrary;->importPatches(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->reloadPatches()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 p1, -0x1

    if-ne p2, p1, :cond_4

    .line 5
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->reloadPatches()V

    :cond_4
    return-void

    :cond_5
    if-eqz p3, :cond_7

    .line 6
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    .line 7
    :cond_6
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lxyz/aethersx2/android/NativeLibrary;->changeDisc(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void

    .line 8
    :cond_8
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/o;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lxyz/aethersx2/android/EmulationActivity;->N()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/e;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, p1}, Lxyz/aethersx2/android/EmulationActivity;->Q(I)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/o;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lxyz/aethersx2/android/NativeLibrary;->initializeOnce(Landroid/content/Context;Z)Z

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "bootPath"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->D:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "saveStatePath"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->E:Ljava/lang/String;

    .line 5
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->z:Landroid/content/SharedPreferences;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->I:Landroid/view/Display;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c001d

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 9
    move-object v2, v0

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f09011f

    .line 10
    invoke-static {v0, v3}, Ln2/e;->o(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lxyz/aethersx2/android/EmulationSurfaceView;

    if-eqz v4, :cond_3

    .line 11
    new-instance v0, Lr3/b;

    invoke-direct {v0, v2, v2, v4}, Lr3/b;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lxyz/aethersx2/android/EmulationSurfaceView;)V

    .line 12
    iput-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->F:Lr3/b;

    .line 13
    invoke-virtual {p0, v2}, Le/e;->setContentView(Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->F:Lr3/b;

    iget-object v0, v0, Lr3/b;->b:Lxyz/aethersx2/android/EmulationSurfaceView;

    iput-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->G:Lxyz/aethersx2/android/EmulationSurfaceView;

    .line 15
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 16
    iget-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->G:Lxyz/aethersx2/android/EmulationSurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 17
    iget-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->G:Lxyz/aethersx2/android/EmulationSurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 18
    iget-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->G:Lxyz/aethersx2/android/EmulationSurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusedByDefault(Z)V

    .line 19
    iget-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->G:Lxyz/aethersx2/android/EmulationSurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 20
    invoke-virtual {p0}, Lxyz/aethersx2/android/EmulationActivity;->R()V

    .line 21
    invoke-virtual {p0}, Le/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 22
    invoke-virtual {p0, v0}, Lxyz/aethersx2/android/EmulationActivity;->Q(I)V

    .line 23
    invoke-virtual {p0}, Lxyz/aethersx2/android/EmulationActivity;->P()V

    .line 24
    iget-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->M:Lq3/m1;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lq3/m1;

    invoke-direct {v0, p0}, Lq3/m1;-><init>(Lxyz/aethersx2/android/EmulationActivity;)V

    iput-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->M:Lq3/m1;

    const-string v0, "input"

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_1

    .line 27
    iget-object v1, p0, Lxyz/aethersx2/android/EmulationActivity;->M:Lq3/m1;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 28
    :cond_1
    :goto_0
    iget-object p1, p0, Lxyz/aethersx2/android/EmulationActivity;->G:Lxyz/aethersx2/android/EmulationSurfaceView;

    invoke-virtual {p1}, Lxyz/aethersx2/android/EmulationSurfaceView;->f()V

    .line 29
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->hasEmulationThread()Z

    move-result p1

    if-nez p1, :cond_2

    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    iget-object p1, p0, Lxyz/aethersx2/android/EmulationActivity;->D:Ljava/lang/String;

    iget-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->E:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lxyz/aethersx2/android/NativeLibrary;->startEmulationThread(Lxyz/aethersx2/android/EmulationActivity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :catch_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    return-void

    .line 34
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onDestroy()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lxyz/aethersx2/android/NativeLibrary;->stopEmulationThread(Z)V

    .line 2
    iget-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->H:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 4
    iput-object v1, p0, Lxyz/aethersx2/android/EmulationActivity;->H:Landroid/hardware/SensorManager;

    .line 5
    :goto_0
    iget-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->M:Lq3/m1;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "input"

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_2

    .line 7
    iget-object v2, p0, Lxyz/aethersx2/android/EmulationActivity;->M:Lq3/m1;

    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 8
    :cond_2
    iput-object v1, p0, Lxyz/aethersx2/android/EmulationActivity;->M:Lq3/m1;

    .line 9
    :goto_1
    invoke-super {p0}, Le/e;->onDestroy()V

    return-void
.end method

.method public final onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/e;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lxyz/aethersx2/android/EmulationActivity;->E()V

    return-void
.end method

.method public final onPostResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Le/e;->onPostResume()V

    .line 2
    invoke-virtual {p0}, Lxyz/aethersx2/android/EmulationActivity;->E()V

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lxyz/aethersx2/android/EmulationActivity;->I:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    .line 3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v0, v3

    .line 4
    aget v0, v0, v1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v0, v1

    .line 6
    aget v0, v0, v3

    neg-float v0, v0

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v0, v3

    neg-float v3, v3

    .line 8
    aget v0, v0, v1

    neg-float v0, v0

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v0, v1

    neg-float v1, v1

    .line 10
    aget v0, v0, v3

    :goto_0
    move v3, v1

    :goto_1
    neg-float v1, v3

    const v3, 0x411ce80a

    div-float/2addr v1, v3

    div-float/2addr v0, v3

    .line 11
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    div-float/2addr p1, v3

    .line 12
    invoke-static {v1, v0, p1}, Lxyz/aethersx2/android/NativeLibrary;->handleAccelerometerUpdate(FFF)V

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->hasEmulationThread()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, "window"

    .line 4
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p2}, Landroid/view/Display;->getRefreshRate()F

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 7
    :goto_0
    invoke-static {p1, p3, p4, p2}, Lxyz/aethersx2/android/NativeLibrary;->changeSurface(Landroid/view/Surface;IIF)V

    .line 8
    iget-boolean p1, p0, Lxyz/aethersx2/android/EmulationActivity;->C:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lxyz/aethersx2/android/EmulationActivity;->C:Z

    .line 10
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->applySettings()V

    .line 11
    invoke-virtual {p0}, Lxyz/aethersx2/android/EmulationActivity;->D()V

    :cond_3
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->hasEmulationThread()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v1, v1, v0}, Lxyz/aethersx2/android/NativeLibrary;->changeSurface(Landroid/view/Surface;IIF)V

    :cond_0
    return-void
.end method
