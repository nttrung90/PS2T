.class public final synthetic Lq3/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[Z


# direct methods
.method public synthetic constructor <init>([ZI)V
    .locals 0

    iput p2, p0, Lq3/i0;->a:I

    iput-object p1, p0, Lq3/i0;->b:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    iget p1, p0, Lq3/i0;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lq3/i0;->b:[Z

    .line 1
    aput-boolean p3, p1, p2

    return-void

    .line 2
    :goto_0
    iget-object p1, p0, Lq3/i0;->b:[Z

    sget v0, Lq3/c1;->y0:I

    .line 3
    aput-boolean p3, p1, p2

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
