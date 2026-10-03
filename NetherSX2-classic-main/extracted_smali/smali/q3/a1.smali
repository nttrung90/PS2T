.class public final synthetic Lq3/a1;
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

    iput p2, p0, Lq3/a1;->c:I

    iput-object p1, p0, Lq3/a1;->d:Lq3/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    iget p1, p0, Lq3/a1;->c:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lq3/a1;->d:Lq3/c1;

    .line 1
    invoke-virtual {p1, v0}, Lq3/c1;->A(I)V

    return-void

    .line 2
    :goto_0
    iget-object p1, p0, Lq3/a1;->d:Lq3/c1;

    .line 3
    invoke-virtual {p1}, Lq3/c1;->D()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4
    iget-object v2, p1, Lq3/c1;->v0:Lq3/a2;

    if-eqz v2, :cond_0

    .line 5
    iget v3, p1, Lq3/c1;->s0:I

    invoke-static {v2, v3}, Lxyz/aethersx2/android/b;->B(Lq3/a2;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 6
    :cond_0
    iget v2, p1, Lq3/c1;->s0:I

    invoke-static {v1, v2}, Lxyz/aethersx2/android/b;->A(Landroid/content/SharedPreferences;I)Ljava/lang/String;

    move-result-object v2

    .line 7
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_9

    .line 8
    :cond_1
    invoke-static {v2, v0}, Lxyz/aethersx2/android/NativeLibrary;->getPadBinds(Ljava/lang/String;Z)[Lxyz/aethersx2/android/InputBindingInfo;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_9

    .line 9
    :cond_2
    array-length v3, v2

    new-array v4, v3, [Ljava/lang/String;

    .line 10
    array-length v5, v2

    new-array v5, v5, [Z

    const/4 v6, 0x0

    move v7, v6

    .line 11
    :goto_2
    array-length v8, v2

    if-ge v7, v8, :cond_3

    .line 12
    aget-object v8, v2, v7

    invoke-virtual {v8}, Lxyz/aethersx2/android/InputBindingInfo;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 13
    aput-boolean v6, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 14
    :cond_3
    iget-object v2, p1, Lq3/c1;->v0:Lq3/a2;

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    .line 15
    invoke-virtual {p1}, Lq3/c1;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v7}, Lq3/a2;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 16
    :cond_4
    invoke-virtual {p1}, Lq3/c1;->B()Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_7

    const-string v2, "&"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    move v2, v6

    .line 18
    :goto_4
    array-length v7, v1

    if-ge v2, v7, :cond_6

    .line 19
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    move-object v7, v1

    :cond_7
    :goto_5
    if-eqz v7, :cond_b

    move v1, v6

    .line 20
    :goto_6
    array-length v2, v7

    if-ge v1, v2, :cond_b

    .line 21
    aget-object v2, v7, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_8

    :cond_8
    move v2, v6

    :goto_7
    if-ge v2, v3, :cond_a

    .line 22
    aget-object v8, v7, v1

    aget-object v9, v4, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 23
    aput-boolean v0, v5, v2

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 24
    :cond_b
    new-instance v1, Landroidx/appcompat/app/d$a;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f100091

    .line 25
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/d$a;->j(I)Landroidx/appcompat/app/d$a;

    new-instance v2, Lq3/i0;

    invoke-direct {v2, v5, v0}, Lq3/i0;-><init>([ZI)V

    .line 26
    invoke-virtual {v1, v4, v5, v2}, Landroidx/appcompat/app/d$a;->d([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/d$a;

    const v0, 0x7f100086

    new-instance v2, Lq3/z0;

    invoke-direct {v2, p1, v4, v5, v6}, Lq3/z0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 27
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/d$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    const p1, 0x7f100084

    sget-object v0, Lq3/e;->m:Lq3/e;

    .line 28
    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/app/d$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 29
    invoke-virtual {v1}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
