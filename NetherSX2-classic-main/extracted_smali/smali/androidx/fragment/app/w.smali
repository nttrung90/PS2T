.class public final synthetic Landroidx/fragment/app/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li0/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/fragment/app/w;->a:I

    iput-object p1, p0, Landroidx/fragment/app/w;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/w;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/w;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/y;

    check-cast p1, Lz/j;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-boolean p1, p1, Lz/j;->a:Z

    .line 2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/y;->n(Z)V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Landroidx/fragment/app/w;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/y;

    check-cast p1, Landroid/content/res/Configuration;

    .line 4
    invoke-virtual {v0, p1}, Landroidx/fragment/app/y;->h(Landroid/content/res/Configuration;)V

    return-void

    .line 5
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/w;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/o;

    check-cast p1, Landroid/content/Intent;

    .line 6
    iget-object p1, v0, Landroidx/fragment/app/o;->p:Landroidx/fragment/app/r;

    invoke-virtual {p1}, Landroidx/fragment/app/r;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
