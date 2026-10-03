.class public final synthetic Ly0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Ly0/b;->c:I

    iput-object p1, p0, Ly0/b;->d:Ljava/lang/Object;

    iput-object p2, p0, Ly0/b;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    .line 2
    iput p3, p0, Ly0/b;->c:I

    iput-object p1, p0, Ly0/b;->e:Ljava/lang/Object;

    iput-object p2, p0, Ly0/b;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Ly0/b;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ly0/b;->d:Ljava/lang/Object;

    check-cast v0, Lq3/k0$c;

    iget-object v1, p0, Ly0/b;->e:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    invoke-virtual {v0, v1, v2, v3, v2}, Lq3/k0$c;->c(Landroid/app/Activity;IZZ)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Ly0/b;->e:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/AndroidProgressCallback;

    iget-object v1, p0, Ly0/b;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, v0, Lxyz/aethersx2/android/AndroidProgressCallback;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {v0}, Lxyz/aethersx2/android/AndroidProgressCallback;->a()V

    return-void

    .line 5
    :pswitch_2
    iget-object v0, p0, Ly0/b;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Ly0/b;->e:Ljava/lang/Object;

    check-cast v1, Ly0/l;

    const-string v2, "$violation"

    .line 6
    invoke-static {v1, v2}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy violation with PENALTY_DEATH in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentStrictMode"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    throw v1

    .line 9
    :goto_0
    iget-object v0, p0, Ly0/b;->e:Ljava/lang/Object;

    check-cast v0, Lq3/p;

    iget-object v1, p0, Ly0/b;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lxyz/aethersx2/android/NativeLibrary;->f(Lq3/p;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
