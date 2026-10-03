.class public final synthetic Lq3/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lxyz/aethersx2/android/b$j;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/b$j;I)V
    .locals 0

    iput p2, p0, Lq3/e0;->c:I

    iput-object p1, p0, Lq3/e0;->d:Lxyz/aethersx2/android/b$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lq3/e0;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lq3/e0;->d:Lxyz/aethersx2/android/b$j;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lxyz/aethersx2/android/b$j;->H(Z)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lxyz/aethersx2/android/b$j;->r0:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lxyz/aethersx2/android/b$j;->I()V

    .line 4
    invoke-virtual {v0, v1}, Lxyz/aethersx2/android/b$j;->G(Z)V

    return-void

    .line 5
    :goto_0
    iget-object v0, p0, Lq3/e0;->d:Lxyz/aethersx2/android/b$j;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lxyz/aethersx2/android/b$j;->H(Z)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lxyz/aethersx2/android/b$j;->s0:I

    .line 8
    invoke-virtual {v0, v1}, Lxyz/aethersx2/android/b$j;->G(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
