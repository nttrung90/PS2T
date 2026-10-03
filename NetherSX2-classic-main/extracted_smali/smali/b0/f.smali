.class public final synthetic Lb0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, Lb0/f;->c:I

    iput-object p1, p0, Lb0/f;->e:Ljava/lang/Object;

    iput p2, p0, Lb0/f;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lb0/f;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lb0/f;->e:Ljava/lang/Object;

    check-cast v0, Lb0/d$e;

    iget v1, p0, Lb0/f;->d:I

    .line 1
    invoke-virtual {v0, v1}, Lb0/d$e;->d(I)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lb0/f;->e:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/AndroidProgressCallback;

    iget v1, p0, Lb0/f;->d:I

    .line 3
    iget-object v2, v0, Lxyz/aethersx2/android/AndroidProgressCallback;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 4
    invoke-virtual {v0}, Lxyz/aethersx2/android/AndroidProgressCallback;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
