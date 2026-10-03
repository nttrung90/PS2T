.class public final synthetic Lq3/t0;
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


# direct methods
.method public synthetic constructor <init>(Lq3/k0$c;Landroid/app/Activity;ILn1/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lq3/t0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/t0;->d:Lq3/k0$c;

    iput-object p2, p0, Lq3/t0;->e:Landroid/app/Activity;

    iput p3, p0, Lq3/t0;->f:I

    iput-object p4, p0, Lq3/t0;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lq3/k0$c;Landroid/app/Activity;Lq3/k0$b;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lq3/t0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/t0;->d:Lq3/k0$c;

    iput-object p2, p0, Lq3/t0;->e:Landroid/app/Activity;

    iput-object p3, p0, Lq3/t0;->g:Ljava/lang/Object;

    iput p4, p0, Lq3/t0;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lq3/t0;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lq3/t0;->d:Lq3/k0$c;

    iget-object v3, p0, Lq3/t0;->e:Landroid/app/Activity;

    iget-object v4, p0, Lq3/t0;->g:Ljava/lang/Object;

    check-cast v4, Lq3/k0$b;

    iget v5, p0, Lq3/t0;->f:I

    .line 1
    iget-object v6, v0, Lq3/k0$c;->c:Landroid/app/ProgressDialog;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v4, Lq3/k0$b;->b:Ljava/lang/String;

    aput-object v4, v2, v1

    const v1, 0x7f10006e

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, v0, Lq3/k0$c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void

    .line 3
    :goto_0
    iget-object v0, p0, Lq3/t0;->d:Lq3/k0$c;

    iget-object v3, p0, Lq3/t0;->e:Landroid/app/Activity;

    iget v4, p0, Lq3/t0;->f:I

    iget-object v5, p0, Lq3/t0;->g:Ljava/lang/Object;

    check-cast v5, Ln1/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v4, v2

    .line 4
    iget-object v5, v5, Ln1/c;->b:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    xor-int/2addr v2, v5

    invoke-virtual {v0, v3, v4, v2, v1}, Lq3/k0$c;->c(Landroid/app/Activity;IZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
