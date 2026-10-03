.class public final synthetic Lq3/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lq3/k0$c;

.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lq3/k0$c;Landroid/app/Activity;Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    iput p6, p0, Lq3/u0;->c:I

    iput-object p1, p0, Lq3/u0;->d:Lq3/k0$c;

    iput-object p2, p0, Lq3/u0;->e:Landroid/app/Activity;

    iput-object p3, p0, Lq3/u0;->g:Ljava/lang/Object;

    iput p4, p0, Lq3/u0;->f:I

    iput-object p5, p0, Lq3/u0;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lq3/u0;->c:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lq3/u0;->d:Lq3/k0$c;

    iget-object v9, p0, Lq3/u0;->e:Landroid/app/Activity;

    iget-object v2, p0, Lq3/u0;->g:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lq3/k0$b;

    iget v10, p0, Lq3/u0;->f:I

    iget-object v2, p0, Lq3/u0;->h:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Ljava/io/File;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2}, Ln1/c;->a(Landroid/view/LayoutInflater;)Ln1/c;

    move-result-object v12

    .line 3
    iget-object v2, v12, Ln1/c;->c:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, v5, Lq3/k0$b;->b:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v3, v7

    const v4, 0x7f10007c

    invoke-virtual {v9, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v2, v12, Ln1/c;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/material/checkbox/MaterialCheckBox;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, v0, Lq3/k0$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v10

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const v4, 0x7f10006c

    invoke-virtual {v9, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v2, v12, Ln1/c;->a:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {v11, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v13, 0x7f10007b

    .line 7
    new-instance v14, Lq3/r0;

    move-object v2, v14

    move-object v3, v0

    move-object v4, v9

    move v7, v10

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lq3/r0;-><init>(Lq3/k0$c;Landroid/app/Activity;Lq3/k0$b;Ljava/io/File;ILn1/c;)V

    invoke-virtual {v11, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f100080

    new-instance v4, Lq3/o0;

    invoke-direct {v4, v0, v9, v10, v12}, Lq3/o0;-><init>(Lq3/k0$c;Landroid/app/Activity;ILn1/c;)V

    .line 8
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f100084

    new-instance v4, Lq3/l0;

    invoke-direct {v4, v0, v1}, Lq3/l0;-><init>(Lq3/k0$c;I)V

    .line 9
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 11
    :goto_0
    iget-object v0, p0, Lq3/u0;->d:Lq3/k0$c;

    iget-object v2, p0, Lq3/u0;->e:Landroid/app/Activity;

    iget-object v3, p0, Lq3/u0;->g:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    iget v4, p0, Lq3/u0;->f:I

    iget-object v5, p0, Lq3/u0;->h:Ljava/lang/Object;

    check-cast v5, Ln1/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v4, v1

    .line 12
    iget-object v5, v5, Ln1/c;->b:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    xor-int/2addr v5, v1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lq3/k0$c;->b(Landroid/app/Activity;Landroid/net/Uri;IZZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
