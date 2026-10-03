.class public final synthetic Lq3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lq3/i;


# direct methods
.method public synthetic constructor <init>(Lq3/i;I)V
    .locals 0

    iput p2, p0, Lq3/h;->c:I

    iput-object p1, p0, Lq3/h;->d:Lq3/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget p1, p0, Lq3/h;->c:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, Lq3/h;->d:Lq3/i;

    sget v0, Lq3/i;->u0:I

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09009a

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090099

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1, v0}, Lxyz/aethersx2/android/NativeLibrary;->addPatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f100032

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-virtual {p1, v3, v5}, Landroidx/fragment/app/n;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 8
    iget-object v0, p1, Lq3/i;->s0:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/m;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 10
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/m;->dismiss()V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10002f

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 12
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10002e

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    .line 14
    :goto_2
    iget-object p1, p0, Lq3/h;->d:Lq3/i;

    .line 15
    iget-object v0, p1, Lq3/i;->s0:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/m;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 17
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/m;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
