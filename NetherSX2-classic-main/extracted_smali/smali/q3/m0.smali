.class public final synthetic Lq3/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lq3/k0$c;

.field public final synthetic d:Landroid/app/Activity;

.field public final synthetic e:Lq3/k0$b;

.field public final synthetic f:Li0/c;

.field public final synthetic g:Lr0/a;

.field public final synthetic h:Landroid/net/Uri;

.field public final synthetic i:I

.field public final synthetic j:Ln1/c;


# direct methods
.method public synthetic constructor <init>(Lq3/k0$c;Landroid/app/Activity;Lq3/k0$b;Li0/c;Lr0/a;Landroid/net/Uri;ILn1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/m0;->c:Lq3/k0$c;

    iput-object p2, p0, Lq3/m0;->d:Landroid/app/Activity;

    iput-object p3, p0, Lq3/m0;->e:Lq3/k0$b;

    iput-object p4, p0, Lq3/m0;->f:Li0/c;

    iput-object p5, p0, Lq3/m0;->g:Lr0/a;

    iput-object p6, p0, Lq3/m0;->h:Landroid/net/Uri;

    iput p7, p0, Lq3/m0;->i:I

    iput-object p8, p0, Lq3/m0;->j:Ln1/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v6, p0, Lq3/m0;->c:Lq3/k0$c;

    iget-object v7, p0, Lq3/m0;->d:Landroid/app/Activity;

    iget-object v0, p0, Lq3/m0;->e:Lq3/k0$b;

    iget-object v1, p0, Lq3/m0;->f:Li0/c;

    iget-object v5, p0, Lq3/m0;->g:Lr0/a;

    iget-object v8, p0, Lq3/m0;->h:Landroid/net/Uri;

    iget v9, p0, Lq3/m0;->i:I

    iget-object v10, p0, Lq3/m0;->j:Ln1/c;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object v0, v0, Lq3/k0$b;->a:Ljava/lang/Object;

    instance-of v2, v0, Ljava/io/File;

    if-eqz v2, :cond_1

    .line 2
    move-object v2, v0

    check-cast v2, Ljava/io/File;

    .line 3
    iget-object v0, v1, Li0/c;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lr0/a;

    iget-object v0, v1, Li0/c;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    move-object v0, v6

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Lq3/k0$c;->d(Landroid/app/Activity;Ljava/io/File;Lr0/a;Ljava/lang/String;Lr0/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v3, v9, 0x1

    .line 4
    iget-object v0, v10, Ln1/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/checkbox/MaterialCheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    invoke-virtual/range {v0 .. v5}, Lq3/k0$c;->b(Landroid/app/Activity;Landroid/net/Uri;IZZ)V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This file is not a path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
