.class public final synthetic Lq3/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:Lxyz/aethersx2/android/b;

.field public final synthetic d:Z

.field public final synthetic e:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/b;Z[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/x;->c:Lxyz/aethersx2/android/b;

    iput-boolean p2, p0, Lq3/x;->d:Z

    iput-object p3, p0, Lq3/x;->e:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object p1, p0, Lq3/x;->c:Lxyz/aethersx2/android/b;

    iget-boolean v0, p0, Lq3/x;->d:Z

    iget-object v1, p0, Lq3/x;->e:[Ljava/lang/String;

    sget-object v2, Lxyz/aethersx2/android/b;->o0:[C

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 1
    array-length v4, v1

    sub-int/2addr v4, v3

    if-ne p2, v4, :cond_0

    .line 2
    new-instance p2, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4
    new-instance v0, Landroidx/appcompat/app/d$a;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1000e7

    .line 5
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/d$a;->j(I)Landroidx/appcompat/app/d$a;

    .line 6
    iget-object v1, v0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p2, v1, Landroidx/appcompat/app/AlertController$b;->s:Landroid/view/View;

    const v1, 0x7f100129

    .line 7
    new-instance v3, Lq3/v;

    invoke-direct {v3, p1, p2, v2}, Lq3/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 8
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/d$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    const p1, 0x7f100084

    sget-object p2, Lq3/e;->j:Lq3/e;

    .line 9
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/d$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_3

    .line 12
    aget-object p2, v1, p2

    .line 13
    invoke-static {p2}, Lxyz/aethersx2/android/NativeLibrary;->getInputProfilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Lq3/a2;

    invoke-direct {v1, v0}, Lq3/a2;-><init>(Ljava/lang/String;)V

    .line 15
    iget-boolean v0, v1, Lq3/a2;->c:Z

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Input profile loaded with errors, cancelling."

    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lxyz/aethersx2/android/b;->G()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p1, Lxyz/aethersx2/android/b;->f0:Lq3/a2;

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-static {v0, v1, v4}, Lxyz/aethersx2/android/b;->z(Landroid/content/Context;Lq3/a2;Lq3/a2;)V

    .line 18
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000e6

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-virtual {p1, v1, v4}, Landroidx/fragment/app/n;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 19
    iget-object p1, p1, Lxyz/aethersx2/android/b;->i0:Lxyz/aethersx2/android/b$c;

    if-eqz p1, :cond_4

    .line 20
    invoke-interface {p1}, Lxyz/aethersx2/android/b$c;->a()V

    goto :goto_1

    .line 21
    :cond_3
    aget-object p2, v1, p2

    invoke-virtual {p1, p2}, Lxyz/aethersx2/android/b;->H(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
