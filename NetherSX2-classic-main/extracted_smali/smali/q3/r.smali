.class public final synthetic Lq3/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lq3/t;


# direct methods
.method public synthetic constructor <init>(Lq3/t;I)V
    .locals 0

    iput p2, p0, Lq3/r;->c:I

    iput-object p1, p0, Lq3/r;->d:Lq3/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget p1, p0, Lq3/r;->c:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lq3/r;->d:Lq3/t;

    const/4 p2, 0x0

    .line 1
    iput-object p2, p1, Lq3/t;->h:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lq3/t;->c()V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 4
    :goto_0
    iget-object p1, p0, Lq3/r;->d:Lq3/t;

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 6
    aget-object p2, v0, p2

    iput-object p2, p1, Lq3/t;->h:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lq3/t;->c()V

    .line 8
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
