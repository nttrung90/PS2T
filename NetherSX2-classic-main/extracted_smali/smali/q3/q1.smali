.class public final synthetic Lq3/q1;
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

    iput p2, p0, Lq3/q1;->c:I

    iput-object p1, p0, Lq3/q1;->d:Lxyz/aethersx2/android/EmulationActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroidx/preference/Preference;)Z
    .locals 3

    iget p1, p0, Lq3/q1;->c:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lq3/q1;->d:Lxyz/aethersx2/android/EmulationActivity$c;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->getLeaderboardCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 2
    iget-object v2, p1, Lxyz/aethersx2/android/EmulationActivity$c;->k0:Lxyz/aethersx2/android/EmulationActivity$b;

    invoke-virtual {v2, v0}, Lxyz/aethersx2/android/EmulationActivity$b;->z(Z)V

    .line 3
    iget-object p1, p1, Lxyz/aethersx2/android/EmulationActivity$c;->l0:Lxyz/aethersx2/android/EmulationActivity;

    invoke-static {p1}, Lxyz/aethersx2/android/EmulationActivity;->A(Lxyz/aethersx2/android/EmulationActivity;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lxyz/aethersx2/android/EmulationActivity$c;->k0:Lxyz/aethersx2/android/EmulationActivity$b;

    const/4 v0, 0x5

    .line 5
    invoke-virtual {p1, v0, v1}, Lxyz/aethersx2/android/EmulationActivity$b;->C(IZ)V

    :goto_0
    return v1

    .line 6
    :pswitch_1
    iget-object p1, p0, Lq3/q1;->d:Lxyz/aethersx2/android/EmulationActivity$c;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->toggleSoftwareRenderer()V

    .line 8
    iget-object p1, p1, Lxyz/aethersx2/android/EmulationActivity$c;->k0:Lxyz/aethersx2/android/EmulationActivity$b;

    invoke-virtual {p1, v1}, Lxyz/aethersx2/android/EmulationActivity$b;->z(Z)V

    return v1

    .line 9
    :pswitch_2
    iget-object p1, p0, Lq3/q1;->d:Lxyz/aethersx2/android/EmulationActivity$c;

    .line 10
    iget-object v2, p1, Lxyz/aethersx2/android/EmulationActivity$c;->l0:Lxyz/aethersx2/android/EmulationActivity;

    invoke-static {v2, v1}, Lxyz/aethersx2/android/EmulationActivity;->B(Lxyz/aethersx2/android/EmulationActivity;Z)V

    .line 11
    iget-object p1, p1, Lxyz/aethersx2/android/EmulationActivity$c;->k0:Lxyz/aethersx2/android/EmulationActivity$b;

    invoke-virtual {p1, v0}, Lxyz/aethersx2/android/EmulationActivity$b;->z(Z)V

    return v1

    .line 12
    :goto_1
    iget-object p1, p0, Lq3/q1;->d:Lxyz/aethersx2/android/EmulationActivity$c;

    .line 13
    iget-object v0, p1, Lxyz/aethersx2/android/EmulationActivity$c;->k0:Lxyz/aethersx2/android/EmulationActivity$b;

    invoke-virtual {v0, v1}, Lxyz/aethersx2/android/EmulationActivity$b;->z(Z)V

    .line 14
    iget-object p1, p1, Lxyz/aethersx2/android/EmulationActivity$c;->l0:Lxyz/aethersx2/android/EmulationActivity;

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "*/*"

    .line 17
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.OPENABLE"

    .line 18
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Choose Disc Image"

    .line 19
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
