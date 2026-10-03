.class public final synthetic Lq3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lq3/k0$c;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lq3/n;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/n;->d:Ljava/lang/Object;

    iput-object p2, p0, Lq3/n;->f:Ljava/lang/Object;

    iput-object p3, p0, Lq3/n;->e:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lxyz/aethersx2/android/AndroidProgressCallback;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lq3/n;->c:I

    iput-object p1, p0, Lq3/n;->d:Ljava/lang/Object;

    iput-object p2, p0, Lq3/n;->e:Ljava/lang/String;

    iput-object p3, p0, Lq3/n;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lq3/n;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lq3/n;->d:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/AndroidProgressCallback;

    iget-object v3, p0, Lq3/n;->e:Ljava/lang/String;

    iget-object v4, p0, Lq3/n;->f:Ljava/lang/Object;

    check-cast v4, Lxyz/aethersx2/android/AndroidProgressCallback$a;

    .line 1
    new-instance v5, Landroidx/appcompat/app/d$a;

    iget-object v6, v0, Lxyz/aethersx2/android/AndroidProgressCallback;->a:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    iget-object v6, v0, Lxyz/aethersx2/android/AndroidProgressCallback;->a:Landroid/app/Activity;

    const v7, 0x7f100033

    .line 2
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3
    iget-object v7, v5, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v6, v7, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    .line 4
    iput-object v3, v7, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    .line 5
    iget-object v3, v0, Lxyz/aethersx2/android/AndroidProgressCallback;->a:Landroid/app/Activity;

    const v6, 0x7f100038

    .line 6
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lq3/j;

    invoke-direct {v6, v4, v2}, Lq3/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v3, v6}, Landroidx/appcompat/app/d$a;->h(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    iget-object v0, v0, Lxyz/aethersx2/android/AndroidProgressCallback;->a:Landroid/app/Activity;

    const v3, 0x7f100035

    .line 7
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lq3/d;

    invoke-direct {v3, v4, v1}, Lq3/d;-><init>(Ljava/lang/Object;I)V

    .line 8
    iget-object v1, v5, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$b;->i:Ljava/lang/CharSequence;

    .line 9
    iput-object v3, v1, Landroidx/appcompat/app/AlertController$b;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 10
    new-instance v0, Lq3/m;

    invoke-direct {v0, v4, v2}, Lq3/m;-><init>(Ljava/lang/Object;I)V

    .line 11
    iput-object v0, v1, Landroidx/appcompat/app/AlertController$b;->n:Landroid/content/DialogInterface$OnDismissListener;

    .line 12
    invoke-virtual {v5}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 14
    :pswitch_1
    iget-object v0, p0, Lq3/n;->d:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/AndroidProgressCallback;

    iget-object v1, p0, Lq3/n;->e:Ljava/lang/String;

    iget-object v3, p0, Lq3/n;->f:Ljava/lang/Object;

    .line 15
    new-instance v4, Landroidx/appcompat/app/d$a;

    iget-object v5, v0, Lxyz/aethersx2/android/AndroidProgressCallback;->a:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    iget-object v5, v0, Lxyz/aethersx2/android/AndroidProgressCallback;->a:Landroid/app/Activity;

    const v6, 0x7f100034

    .line 16
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 17
    iget-object v6, v4, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v5, v6, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    .line 18
    iput-object v1, v6, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    .line 19
    iget-object v0, v0, Lxyz/aethersx2/android/AndroidProgressCallback;->a:Landroid/app/Activity;

    const v1, 0x7f100036

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lq3/e;->e:Lq3/e;

    invoke-virtual {v4, v0, v1}, Landroidx/appcompat/app/d$a;->h(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    new-instance v0, Lq3/l;

    invoke-direct {v0, v3, v2}, Lq3/l;-><init>(Ljava/lang/Object;I)V

    .line 21
    iget-object v1, v4, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$b;->n:Landroid/content/DialogInterface$OnDismissListener;

    .line 22
    invoke-virtual {v4}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 24
    :goto_0
    iget-object v0, p0, Lq3/n;->d:Ljava/lang/Object;

    check-cast v0, Lq3/k0$c;

    iget-object v3, p0, Lq3/n;->f:Ljava/lang/Object;

    check-cast v3, Landroid/app/Activity;

    iget-object v4, p0, Lq3/n;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v2

    const-string v2, "Failed to copy \'%s\'. Export cancelled."

    .line 25
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 26
    invoke-virtual {v0}, Lq3/k0$c;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
