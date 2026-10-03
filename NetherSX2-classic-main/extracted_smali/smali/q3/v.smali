.class public final synthetic Lq3/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lq3/v;->c:I

    iput-object p1, p0, Lq3/v;->d:Ljava/lang/Object;

    iput-object p2, p0, Lq3/v;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lq3/v;->c:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lq3/v;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/b;

    iget-object p2, p0, Lq3/v;->e:Ljava/lang/Object;

    check-cast p2, Landroid/widget/EditText;

    sget-object v0, Lxyz/aethersx2/android/b;->o0:[C

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "You must enter a profile name."

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Lxyz/aethersx2/android/b;->H(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 5
    :goto_1
    iget-object p1, p0, Lq3/v;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/MainActivity;

    iget-object p2, p0, Lq3/v;->e:Ljava/lang/Object;

    check-cast p2, Ljava/lang/StringBuilder;

    sget v0, Lxyz/aethersx2/android/MainActivity;->K:I

    const-string v0, "clipboard"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    if-eqz p1, :cond_1

    const-string v0, "App Version"

    .line 7
    invoke-static {v0, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
