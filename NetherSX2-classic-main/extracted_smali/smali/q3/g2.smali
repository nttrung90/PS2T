.class public final synthetic Lq3/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lxyz/aethersx2/android/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/MainActivity;I)V
    .locals 0

    iput p2, p0, Lq3/g2;->c:I

    iput-object p1, p0, Lq3/g2;->d:Lxyz/aethersx2/android/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget p2, p0, Lq3/g2;->c:I

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p2, p0, Lq3/g2;->d:Lxyz/aethersx2/android/MainActivity;

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lxyz/aethersx2/android/ControllerSettingsActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 4
    :pswitch_1
    iget-object p2, p0, Lq3/g2;->d:Lxyz/aethersx2/android/MainActivity;

    sget v0, Lxyz/aethersx2/android/MainActivity;->K:I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lxyz/aethersx2/android/MainActivity;->C()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 8
    :cond_0
    invoke-virtual {p2}, Lxyz/aethersx2/android/MainActivity;->L()V

    .line 9
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .line 10
    :pswitch_2
    iget-object p1, p0, Lq3/g2;->d:Lxyz/aethersx2/android/MainActivity;

    sget p2, Lxyz/aethersx2/android/MainActivity;->K:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 11
    invoke-static {p2}, Lxyz/aethersx2/android/NativeLibrary;->setDefaultSettings(Z)V

    const p2, 0x7f10018c

    .line 12
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 13
    :pswitch_3
    iget-object p1, p0, Lq3/g2;->d:Lxyz/aethersx2/android/MainActivity;

    sget p2, Lxyz/aethersx2/android/MainActivity;->K:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x80

    .line 16
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0xa

    .line 17
    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "Failed to start ACTION_OPEN_DOCUMENT_TREE intent."

    .line 18
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    .line 19
    :pswitch_4
    iget-object p1, p0, Lq3/g2;->d:Lxyz/aethersx2/android/MainActivity;

    sget p2, Lxyz/aethersx2/android/MainActivity;->K:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "*/*"

    .line 21
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.OPENABLE"

    .line 22
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x3

    .line 23
    invoke-virtual {p1, p2, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 24
    :goto_1
    iget-object p2, p0, Lq3/g2;->d:Lxyz/aethersx2/android/MainActivity;

    .line 25
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 26
    invoke-virtual {p2}, Lxyz/aethersx2/android/MainActivity;->J()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
