.class public final synthetic Lq3/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lxyz/aethersx2/android/EmulationActivity;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/EmulationActivity;I)V
    .locals 0

    iput p2, p0, Lq3/g1;->c:I

    iput-object p1, p0, Lq3/g1;->d:Lxyz/aethersx2/android/EmulationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget p1, p0, Lq3/g1;->c:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lq3/g1;->d:Lxyz/aethersx2/android/EmulationActivity;

    .line 1
    iget-object p2, p1, Lxyz/aethersx2/android/EmulationActivity;->z:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "UI/DisplayPatchCodeWarning"

    .line 2
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4
    invoke-virtual {p1}, Lxyz/aethersx2/android/EmulationActivity;->M()V

    return-void

    .line 5
    :pswitch_1
    iget-object p1, p0, Lq3/g1;->d:Lxyz/aethersx2/android/EmulationActivity;

    sget p2, Lxyz/aethersx2/android/EmulationActivity;->N:I

    .line 6
    invoke-virtual {p1}, Lxyz/aethersx2/android/EmulationActivity;->M()V

    return-void

    .line 7
    :goto_0
    iget-object p1, p0, Lq3/g1;->d:Lxyz/aethersx2/android/EmulationActivity;

    sget p2, Lxyz/aethersx2/android/EmulationActivity;->N:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->deletePatches()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const-string p2, "Successfully deleted patches."

    .line 9
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 10
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->reloadPatches()V

    goto :goto_1

    :cond_0
    const-string p2, "Failed to delete patches."

    .line 11
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 12
    :goto_1
    invoke-virtual {p1}, Lxyz/aethersx2/android/EmulationActivity;->K()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
