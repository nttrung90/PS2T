.class public final synthetic Landroidx/fragment/app/x;
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

    iput p2, p0, Landroidx/fragment/app/x;->a:I

    iput-object p1, p0, Landroidx/fragment/app/x;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroidx/fragment/app/x;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/x;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/y;

    check-cast p1, Lz/n;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-boolean p1, p1, Lz/n;->a:Z

    .line 2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/y;->s(Z)V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Landroidx/fragment/app/x;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/y;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x50

    if-ne p1, v1, :cond_0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/y;->m()V

    :cond_0
    return-void

    .line 6
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/x;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/o;

    check-cast p1, Landroid/content/res/Configuration;

    .line 7
    iget-object p1, v0, Landroidx/fragment/app/o;->p:Landroidx/fragment/app/r;

    invoke-virtual {p1}, Landroidx/fragment/app/r;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
