.class public final synthetic Lq3/x2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lxyz/aethersx2/android/TriStatePreference;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/TriStatePreference;I)V
    .locals 0

    iput p2, p0, Lq3/x2;->c:I

    iput-object p1, p0, Lq3/x2;->d:Lxyz/aethersx2/android/TriStatePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lq3/x2;->c:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lq3/x2;->d:Lxyz/aethersx2/android/TriStatePreference;

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lxyz/aethersx2/android/TriStatePreference;->W(Ljava/lang/Boolean;)V

    return-void

    .line 2
    :goto_0
    iget-object p1, p0, Lq3/x2;->d:Lxyz/aethersx2/android/TriStatePreference;

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lxyz/aethersx2/android/TriStatePreference;->W(Ljava/lang/Boolean;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
