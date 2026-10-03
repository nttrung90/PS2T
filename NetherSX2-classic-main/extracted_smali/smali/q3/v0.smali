.class public final synthetic Lq3/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lq3/k0$c;

.field public final synthetic d:Landroid/app/Activity;

.field public final synthetic e:Lq3/k0$b;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lq3/k0$c;Landroid/app/Activity;Lq3/k0$b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/v0;->c:Lq3/k0$c;

    iput-object p2, p0, Lq3/v0;->d:Landroid/app/Activity;

    iput-object p3, p0, Lq3/v0;->e:Lq3/k0$b;

    iput p4, p0, Lq3/v0;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lq3/v0;->c:Lq3/k0$c;

    iget-object v1, p0, Lq3/v0;->d:Landroid/app/Activity;

    iget-object v2, p0, Lq3/v0;->e:Lq3/k0$b;

    iget v3, p0, Lq3/v0;->f:I

    .line 1
    iget-object v4, v0, Lq3/k0$c;->c:Landroid/app/ProgressDialog;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v2, v2, Lq3/k0$b;->b:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const v2, 0x7f10006e

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, v0, Lq3/k0$c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method
