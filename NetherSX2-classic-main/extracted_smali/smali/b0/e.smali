.class public final synthetic Lb0/e;
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

    iput p3, p0, Lb0/e;->c:I

    iput-object p1, p0, Lb0/e;->d:Ljava/lang/Object;

    iput-object p2, p0, Lb0/e;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lb0/e;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lb0/e;->d:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/AndroidProgressCallback;

    iget-object v1, p0, Lb0/e;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1
    iget-object v2, v0, Lxyz/aethersx2/android/AndroidProgressCallback;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {v0}, Lxyz/aethersx2/android/AndroidProgressCallback;->a()V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Lb0/e;->d:Ljava/lang/Object;

    check-cast v0, Ly0/c$c;

    iget-object v1, p0, Lb0/e;->e:Ljava/lang/Object;

    check-cast v1, Ly0/l;

    sget-object v2, Ly0/c;->a:Ly0/c;

    const-string v2, "$policy"

    .line 4
    invoke-static {v0, v2}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$violation"

    invoke-static {v1, v2}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Ly0/c$c;->b:Ly0/c$b;

    .line 6
    invoke-interface {v0}, Ly0/c$b;->a()V

    return-void

    .line 7
    :pswitch_2
    iget-object v0, p0, Lb0/e;->d:Ljava/lang/Object;

    check-cast v0, Lb0/d$e;

    iget-object v1, p0, Lb0/e;->e:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Typeface;

    .line 8
    invoke-virtual {v0, v1}, Lb0/d$e;->e(Landroid/graphics/Typeface;)V

    return-void

    .line 9
    :goto_0
    iget-object v0, p0, Lb0/e;->d:Ljava/lang/Object;

    check-cast v0, Landroid/os/Vibrator;

    iget-object v1, p0, Lb0/e;->e:Ljava/lang/Object;

    check-cast v1, Landroid/os/Vibrator;

    invoke-static {v0, v1}, Lxyz/aethersx2/android/NativeLibrary;->k(Landroid/os/Vibrator;Landroid/os/Vibrator;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
