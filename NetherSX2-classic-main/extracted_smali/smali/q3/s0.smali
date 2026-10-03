.class public final synthetic Lq3/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lq3/k0$c;


# direct methods
.method public synthetic constructor <init>(Lq3/k0$c;I)V
    .locals 0

    iput p2, p0, Lq3/s0;->c:I

    iput-object p1, p0, Lq3/s0;->d:Lq3/k0$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lq3/s0;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lq3/s0;->d:Lq3/k0$c;

    .line 1
    invoke-virtual {v0}, Lq3/k0$c;->a()V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lq3/s0;->d:Lq3/k0$c;

    .line 3
    invoke-virtual {v0}, Lq3/k0$c;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
