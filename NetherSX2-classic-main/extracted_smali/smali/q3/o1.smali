.class public final synthetic Lq3/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lxyz/aethersx2/android/EmulationActivity$b;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/EmulationActivity$b;I)V
    .locals 0

    iput p2, p0, Lq3/o1;->c:I

    iput-object p1, p0, Lq3/o1;->d:Lxyz/aethersx2/android/EmulationActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lq3/o1;->c:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lq3/o1;->d:Lxyz/aethersx2/android/EmulationActivity$b;

    const/4 v1, 0x3

    .line 1
    invoke-virtual {p1, v1, v0}, Lxyz/aethersx2/android/EmulationActivity$b;->C(IZ)V

    return-void

    .line 2
    :pswitch_1
    iget-object p1, p0, Lq3/o1;->d:Lxyz/aethersx2/android/EmulationActivity$b;

    .line 3
    invoke-virtual {p1, v0, v0}, Lxyz/aethersx2/android/EmulationActivity$b;->C(IZ)V

    return-void

    .line 4
    :goto_0
    iget-object p1, p0, Lq3/o1;->d:Lxyz/aethersx2/android/EmulationActivity$b;

    .line 5
    invoke-virtual {p1, v0}, Lxyz/aethersx2/android/EmulationActivity$b;->z(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
