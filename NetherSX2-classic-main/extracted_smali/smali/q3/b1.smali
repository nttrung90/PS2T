.class public final synthetic Lq3/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lq3/c1;


# direct methods
.method public synthetic constructor <init>(Lq3/c1;I)V
    .locals 0

    iput p2, p0, Lq3/b1;->c:I

    iput-object p1, p0, Lq3/b1;->d:Lq3/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    iget p1, p0, Lq3/b1;->c:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lq3/b1;->d:Lq3/c1;

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p1, v0}, Lq3/c1;->A(I)V

    return-void

    .line 2
    :goto_0
    iget-object p1, p0, Lq3/b1;->d:Lq3/c1;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    iget v1, p1, Lq3/c1;->s0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p1, Lq3/c1;->t0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f100098

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/n;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-virtual {p1}, Lq3/c1;->D()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5
    iget-object v1, p1, Lq3/c1;->u0:Ljava/lang/String;

    .line 6
    invoke-static {v0, v1}, Lxyz/aethersx2/android/PreferenceHelpers;->getStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lxyz/aethersx2/android/InputBindingPreference;->a0(Landroid/content/Context;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    move-object v9, v0

    .line 8
    new-instance v0, Lq3/t;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p1, Lq3/c1;->v0:Lq3/a2;

    .line 9
    iget-object v7, p1, Lq3/c1;->u0:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v3, v0

    .line 10
    invoke-direct/range {v3 .. v11}, Lq3/t;-><init>(Landroid/content/Context;Lq3/a2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 11
    new-instance v1, Lq3/l;

    invoke-direct {v1, p1, v2}, Lq3/l;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 12
    invoke-virtual {v0}, Lq3/t;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
