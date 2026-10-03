.class public final synthetic Lq3/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lq3/k0$c;

.field public final synthetic d:Landroid/app/Activity;

.field public final synthetic e:Lq3/k0$b;

.field public final synthetic f:Ljava/io/File;

.field public final synthetic g:I

.field public final synthetic h:Ln1/c;


# direct methods
.method public synthetic constructor <init>(Lq3/k0$c;Landroid/app/Activity;Lq3/k0$b;Ljava/io/File;ILn1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/n0;->c:Lq3/k0$c;

    iput-object p2, p0, Lq3/n0;->d:Landroid/app/Activity;

    iput-object p3, p0, Lq3/n0;->e:Lq3/k0$b;

    iput-object p4, p0, Lq3/n0;->f:Ljava/io/File;

    iput p5, p0, Lq3/n0;->g:I

    iput-object p6, p0, Lq3/n0;->h:Ln1/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lq3/n0;->c:Lq3/k0$c;

    iget-object v1, p0, Lq3/n0;->d:Landroid/app/Activity;

    iget-object v2, p0, Lq3/n0;->e:Lq3/k0$b;

    iget-object v3, p0, Lq3/n0;->f:Ljava/io/File;

    iget v4, p0, Lq3/n0;->g:I

    iget-object v5, p0, Lq3/n0;->h:Ln1/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object v2, v2, Lq3/k0$b;->a:Ljava/lang/Object;

    instance-of v6, v2, Landroid/net/Uri;

    if-eqz v6, :cond_1

    .line 2
    check-cast v2, Landroid/net/Uri;

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lq3/k0$c;->f(Landroid/app/Activity;Landroid/net/Uri;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    add-int/2addr v4, v2

    .line 4
    iget-object v3, v5, Ln1/c;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v1, v4, v3, v2}, Lq3/k0$c;->c(Landroid/app/Activity;IZZ)V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This file is not a Uri."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
