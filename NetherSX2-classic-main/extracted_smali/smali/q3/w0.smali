.class public final synthetic Lq3/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lq3/k0$c;

.field public final synthetic d:Landroid/app/Activity;

.field public final synthetic e:Lq3/k0$b;

.field public final synthetic f:I

.field public final synthetic g:Li0/c;

.field public final synthetic h:Lr0/a;

.field public final synthetic i:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lq3/k0$c;Landroid/app/Activity;Lq3/k0$b;ILi0/c;Lr0/a;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/w0;->c:Lq3/k0$c;

    iput-object p2, p0, Lq3/w0;->d:Landroid/app/Activity;

    iput-object p3, p0, Lq3/w0;->e:Lq3/k0$b;

    iput p4, p0, Lq3/w0;->f:I

    iput-object p5, p0, Lq3/w0;->g:Li0/c;

    iput-object p6, p0, Lq3/w0;->h:Lr0/a;

    iput-object p7, p0, Lq3/w0;->i:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v10, v0, Lq3/w0;->c:Lq3/k0$c;

    iget-object v11, v0, Lq3/w0;->d:Landroid/app/Activity;

    iget-object v4, v0, Lq3/w0;->e:Lq3/k0$b;

    iget v12, v0, Lq3/w0;->f:I

    iget-object v5, v0, Lq3/w0;->g:Li0/c;

    iget-object v6, v0, Lq3/w0;->h:Lr0/a;

    iget-object v13, v0, Lq3/w0;->i:Landroid/net/Uri;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v14, Landroid/app/AlertDialog$Builder;

    invoke-direct {v14, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v11}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Ln1/c;->a(Landroid/view/LayoutInflater;)Ln1/c;

    move-result-object v15

    .line 3
    iget-object v1, v15, Ln1/c;->c:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v7, v4, Lq3/k0$b;->b:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v3, v9

    const v7, 0x7f10007c

    invoke-virtual {v11, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, v15, Ln1/c;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/checkbox/MaterialCheckBox;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v7, v10, Lq3/k0$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v12

    sub-int/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v9

    const v2, 0x7f10006c

    invoke-virtual {v11, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, v15, Ln1/c;->a:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {v14, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 7
    new-instance v8, Lq3/q0;

    move-object v1, v8

    move-object v2, v10

    move-object v3, v11

    move-object v7, v13

    move-object v0, v8

    move v8, v12

    move-object v9, v15

    invoke-direct/range {v1 .. v9}, Lq3/q0;-><init>(Lq3/k0$c;Landroid/app/Activity;Lq3/k0$b;Li0/c;Lr0/a;Landroid/net/Uri;ILn1/c;)V

    const v1, 0x7f10007b

    invoke-virtual {v14, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v7, Lq3/p0;

    move-object v1, v7

    move-object v4, v13

    move v5, v12

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lq3/p0;-><init>(Lq3/k0$c;Landroid/app/Activity;Landroid/net/Uri;ILn1/c;)V

    const v1, 0x7f100080

    .line 8
    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lq3/l0;

    const/4 v2, 0x0

    invoke-direct {v1, v10, v2}, Lq3/l0;-><init>(Lq3/k0$c;I)V

    const v2, 0x7f100084

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
