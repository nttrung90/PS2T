.class public final synthetic Lq3/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lxyz/aethersx2/android/EmulationActivity;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/EmulationActivity;I)V
    .locals 0

    iput p2, p0, Lq3/k1;->c:I

    iput-object p1, p0, Lq3/k1;->d:Lxyz/aethersx2/android/EmulationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lq3/k1;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lq3/k1;->d:Lxyz/aethersx2/android/EmulationActivity;

    sget v1, Lxyz/aethersx2/android/EmulationActivity;->N:I

    .line 1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lq3/k1;->d:Lxyz/aethersx2/android/EmulationActivity;

    sget v1, Lxyz/aethersx2/android/TouchscreenControllerButtonView;->o:I

    .line 3
    iget-boolean v1, v0, Lxyz/aethersx2/android/EmulationActivity;->K:Z

    xor-int/lit8 v2, v1, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iput-boolean v2, v0, Lxyz/aethersx2/android/EmulationActivity;->K:Z

    .line 5
    invoke-virtual {v0}, Lxyz/aethersx2/android/EmulationActivity;->O()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
