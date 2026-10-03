.class public final synthetic Lq3/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lq3/k0$c;


# direct methods
.method public synthetic constructor <init>(Lq3/k0$c;I)V
    .locals 0

    iput p2, p0, Lq3/l0;->c:I

    iput-object p1, p0, Lq3/l0;->d:Lq3/k0$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p2, p0, Lq3/l0;->c:I

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p2, p0, Lq3/l0;->d:Lq3/k0$c;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-virtual {p2}, Lq3/k0$c;->a()V

    return-void

    .line 3
    :goto_0
    iget-object p2, p0, Lq3/l0;->d:Lq3/k0$c;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5
    invoke-virtual {p2}, Lq3/k0$c;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
