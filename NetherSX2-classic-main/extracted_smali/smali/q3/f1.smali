.class public final synthetic Lq3/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lxyz/aethersx2/android/EmulationActivity;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/EmulationActivity;I)V
    .locals 0

    iput p2, p0, Lq3/f1;->c:I

    iput-object p1, p0, Lq3/f1;->d:Lxyz/aethersx2/android/EmulationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lq3/f1;->c:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lq3/f1;->d:Lxyz/aethersx2/android/EmulationActivity;

    sget p2, Lxyz/aethersx2/android/EmulationActivity;->N:I

    .line 1
    invoke-virtual {p1}, Lxyz/aethersx2/android/EmulationActivity;->K()V

    return-void

    .line 2
    :goto_0
    iget-object p1, p0, Lq3/f1;->d:Lxyz/aethersx2/android/EmulationActivity;

    sget p2, Lxyz/aethersx2/android/EmulationActivity;->N:I

    .line 3
    invoke-virtual {p1}, Lxyz/aethersx2/android/EmulationActivity;->K()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
