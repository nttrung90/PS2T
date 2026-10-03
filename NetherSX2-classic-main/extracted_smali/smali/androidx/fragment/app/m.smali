.class public Landroidx/fragment/app/m;
.super Landroidx/fragment/app/n;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field public c0:Landroid/os/Handler;

.field public d0:Landroidx/fragment/app/m$a;

.field public e0:Landroidx/fragment/app/m$b;

.field public f0:Landroidx/fragment/app/m$c;

.field public g0:I

.field public h0:I

.field public i0:Z

.field public j0:Z

.field public k0:I

.field public l0:Z

.field public m0:Landroidx/fragment/app/m$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Landroidx/lifecycle/m;",
            ">;"
        }
    .end annotation
.end field

.field public n0:Landroid/app/Dialog;

.field public o0:Z

.field public p0:Z

.field public q0:Z

.field public r0:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/n;-><init>()V

    .line 2
    new-instance v0, Landroidx/fragment/app/m$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/m$a;-><init>(Landroidx/fragment/app/m;)V

    iput-object v0, p0, Landroidx/fragment/app/m;->d0:Landroidx/fragment/app/m$a;

    .line 3
    new-instance v0, Landroidx/fragment/app/m$b;

    invoke-direct {v0, p0}, Landroidx/fragment/app/m$b;-><init>(Landroidx/fragment/app/m;)V

    iput-object v0, p0, Landroidx/fragment/app/m;->e0:Landroidx/fragment/app/m$b;

    .line 4
    new-instance v0, Landroidx/fragment/app/m$c;

    invoke-direct {v0, p0}, Landroidx/fragment/app/m$c;-><init>(Landroidx/fragment/app/m;)V

    iput-object v0, p0, Landroidx/fragment/app/m;->f0:Landroidx/fragment/app/m$c;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/fragment/app/m;->g0:I

    .line 6
    iput v0, p0, Landroidx/fragment/app/m;->h0:I

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Landroidx/fragment/app/m;->i0:Z

    .line 8
    iput-boolean v1, p0, Landroidx/fragment/app/m;->j0:Z

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Landroidx/fragment/app/m;->k0:I

    .line 10
    new-instance v1, Landroidx/fragment/app/m$d;

    invoke-direct {v1, p0}, Landroidx/fragment/app/m$d;-><init>(Landroidx/fragment/app/m;)V

    iput-object v1, p0, Landroidx/fragment/app/m;->m0:Landroidx/fragment/app/m$d;

    .line 11
    iput-boolean v0, p0, Landroidx/fragment/app/m;->r0:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 12
    invoke-direct {p0, p1}, Landroidx/fragment/app/n;-><init>(I)V

    .line 13
    new-instance p1, Landroidx/fragment/app/m$a;

    invoke-direct {p1, p0}, Landroidx/fragment/app/m$a;-><init>(Landroidx/fragment/app/m;)V

    iput-object p1, p0, Landroidx/fragment/app/m;->d0:Landroidx/fragment/app/m$a;

    .line 14
    new-instance p1, Landroidx/fragment/app/m$b;

    invoke-direct {p1, p0}, Landroidx/fragment/app/m$b;-><init>(Landroidx/fragment/app/m;)V

    iput-object p1, p0, Landroidx/fragment/app/m;->e0:Landroidx/fragment/app/m$b;

    .line 15
    new-instance p1, Landroidx/fragment/app/m$c;

    invoke-direct {p1, p0}, Landroidx/fragment/app/m$c;-><init>(Landroidx/fragment/app/m;)V

    iput-object p1, p0, Landroidx/fragment/app/m;->f0:Landroidx/fragment/app/m$c;

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Landroidx/fragment/app/m;->g0:I

    .line 17
    iput p1, p0, Landroidx/fragment/app/m;->h0:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Landroidx/fragment/app/m;->i0:Z

    .line 19
    iput-boolean v0, p0, Landroidx/fragment/app/m;->j0:Z

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Landroidx/fragment/app/m;->k0:I

    .line 21
    new-instance v0, Landroidx/fragment/app/m$d;

    invoke-direct {v0, p0}, Landroidx/fragment/app/m$d;-><init>(Landroidx/fragment/app/m;)V

    iput-object v0, p0, Landroidx/fragment/app/m;->m0:Landroidx/fragment/app/m$d;

    .line 22
    iput-boolean p1, p0, Landroidx/fragment/app/m;->r0:Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroidx/fragment/app/m;->y(ZZZ)V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroidx/fragment/app/m;->y(ZZZ)V

    return-void
.end method

.method public dismissNow()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v0, v1}, Landroidx/fragment/app/m;->y(ZZZ)V

    return-void
.end method

.method public final g()Landroidx/fragment/app/q;
    .locals 2

    .line 1
    new-instance v0, Landroidx/fragment/app/n$f;

    invoke-direct {v0, p0}, Landroidx/fragment/app/n$f;-><init>(Landroidx/fragment/app/n;)V

    .line 2
    new-instance v1, Landroidx/fragment/app/m$e;

    invoke-direct {v1, p0, v0}, Landroidx/fragment/app/m$e;-><init>(Landroidx/fragment/app/m;Landroidx/fragment/app/q;)V

    return-object v1
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    return-object v0
.end method

.method public getShowsDialog()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/m;->j0:Z

    return v0
.end method

.method public getTheme()I
    .locals 1

    iget v0, p0, Landroidx/fragment/app/m;->h0:I

    return v0
.end method

.method public isCancelable()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/m;->i0:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroidx/fragment/app/n;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/n;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/m;->m0:Landroidx/fragment/app/m$d;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->d(Landroidx/lifecycle/r;)V

    .line 3
    iget-boolean p1, p0, Landroidx/fragment/app/m;->q0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroidx/fragment/app/m;->p0:Z

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/n;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/m;->c0:Landroid/os/Handler;

    .line 3
    iget v0, p0, Landroidx/fragment/app/n;->z:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/m;->j0:Z

    if-eqz p1, :cond_1

    const-string v0, "android:style"

    .line 4
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/m;->g0:I

    const-string v0, "android:theme"

    .line 5
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/m;->h0:I

    const-string v0, "android:cancelable"

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/fragment/app/m;->i0:Z

    .line 7
    iget-boolean v0, p0, Landroidx/fragment/app/m;->j0:Z

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/fragment/app/m;->j0:Z

    const/4 v0, -0x1

    const-string v1, "android:backStackId"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroidx/fragment/app/m;->k0:I

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    const/4 p1, 0x3

    .line 1
    invoke-static {p1}, Landroidx/fragment/app/y;->K(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreateDialog called for DialogFragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    new-instance p1, Landroidx/activity/h;

    invoke-virtual {p0}, Landroidx/fragment/app/n;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/m;->getTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroidx/activity/h;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/n;->onDestroyView()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Landroidx/fragment/app/m;->o0:Z

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    iget-boolean v0, p0, Landroidx/fragment/app/m;->p0:Z

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/m;->onDismiss(Landroid/content/DialogInterface;)V

    .line 8
    :cond_0
    iput-object v1, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Landroidx/fragment/app/m;->r0:Z

    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/n;->onDetach()V

    .line 2
    iget-boolean v0, p0, Landroidx/fragment/app/m;->q0:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/m;->p0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/m;->p0:Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/m;->m0:Landroidx/fragment/app/m$d;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->g(Landroidx/lifecycle/r;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Landroidx/fragment/app/m;->o0:Z

    if-nez p1, :cond_1

    const/4 p1, 0x3

    .line 2
    invoke-static {p1}, Landroidx/fragment/app/y;->K(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDismiss called for DialogFragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0, v0, p1}, Landroidx/fragment/app/m;->y(ZZZ)V

    :cond_1
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/n;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Landroidx/fragment/app/m;->j0:Z

    const/4 v2, 0x2

    const-string v3, "FragmentManager"

    if-eqz v1, :cond_7

    iget-boolean v4, p0, Landroidx/fragment/app/m;->l0:Z

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-boolean v1, p0, Landroidx/fragment/app/m;->r0:Z

    if-nez v1, :cond_4

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 4
    :try_start_0
    iput-boolean v4, p0, Landroidx/fragment/app/m;->l0:Z

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    .line 6
    iget-boolean v5, p0, Landroidx/fragment/app/m;->j0:Z

    if-eqz v5, :cond_3

    .line 7
    iget v5, p0, Landroidx/fragment/app/m;->g0:I

    invoke-virtual {p0, p1, v5}, Landroidx/fragment/app/m;->setupDialog(Landroid/app/Dialog;I)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 9
    instance-of v5, p1, Landroid/app/Activity;

    if-eqz v5, :cond_2

    .line 10
    iget-object v5, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v5, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 11
    :cond_2
    iget-object p1, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    iget-boolean v5, p0, Landroidx/fragment/app/m;->i0:Z

    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 12
    iget-object p1, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    iget-object v5, p0, Landroidx/fragment/app/m;->e0:Landroidx/fragment/app/m$b;

    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 13
    iget-object p1, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    iget-object v5, p0, Landroidx/fragment/app/m;->f0:Landroidx/fragment/app/m$c;

    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 14
    iput-boolean v4, p0, Landroidx/fragment/app/m;->r0:Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :goto_0
    iput-boolean v1, p0, Landroidx/fragment/app/m;->l0:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroidx/fragment/app/m;->l0:Z

    .line 17
    throw p1

    .line 18
    :cond_4
    :goto_1
    invoke-static {v2}, Landroidx/fragment/app/y;->K(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get layout inflater for DialogFragment "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from dialog context"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_5
    iget-object p1, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    if-eqz p1, :cond_6

    .line 21
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :cond_6
    return-object v0

    .line 22
    :cond_7
    :goto_2
    invoke-static {v2}, Landroidx/fragment/app/y;->K(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getting layout inflater for DialogFragment "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    iget-boolean v1, p0, Landroidx/fragment/app/m;->j0:Z

    if-nez v1, :cond_8

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowsDialog = false: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 26
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCreatingDialog = true: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/n;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android:dialogShowing"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android:savedDialogState"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    :cond_0
    iget v0, p0, Landroidx/fragment/app/m;->g0:I

    if-eqz v0, :cond_1

    const-string v1, "android:style"

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 8
    :cond_1
    iget v0, p0, Landroidx/fragment/app/m;->h0:I

    if-eqz v0, :cond_2

    const-string v1, "android:theme"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 10
    :cond_2
    iget-boolean v0, p0, Landroidx/fragment/app/m;->i0:Z

    if-nez v0, :cond_3

    const-string v1, "android:cancelable"

    .line 11
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    :cond_3
    iget-boolean v0, p0, Landroidx/fragment/app/m;->j0:Z

    if-nez v0, :cond_4

    const-string v1, "android:showsDialog"

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14
    :cond_4
    iget v0, p0, Landroidx/fragment/app/m;->k0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "android:backStackId"

    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/n;->onStart()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/fragment/app/m;->o0:Z

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-static {v0, p0}, Ln2/e;->B(Landroid/view/View;Landroidx/lifecycle/m;)V

    const v1, 0x7f09028f

    .line 7
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 8
    invoke-static {v0, p0}, Ln2/e;->C(Landroid/view/View;Le1/d;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/n;->onStop()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/n;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "android:savedDialogState"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final r(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/n;->r(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/n;->J:Landroid/view/View;

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "android:savedDialogState"

    .line 4
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p2, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final requireDialog()Landroid/app/Dialog;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/m;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not have a Dialog."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/m;->i0:Z

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public setShowsDialog(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/fragment/app/m;->j0:Z

    return-void
.end method

.method public setStyle(II)V
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/y;->K(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting style and theme for DialogFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iput p1, p0, Landroidx/fragment/app/m;->g0:I

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_1
    const p1, 0x1030059

    .line 4
    iput p1, p0, Landroidx/fragment/app/m;->h0:I

    :cond_2
    if-eqz p2, :cond_3

    .line 5
    iput p2, p0, Landroidx/fragment/app/m;->h0:I

    :cond_3
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    const/16 v1, 0x18

    .line 2
    invoke-virtual {p2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3
    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :goto_0
    return-void
.end method

.method public show(Landroidx/fragment/app/f0;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/m;->p0:Z

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroidx/fragment/app/m;->q0:Z

    .line 9
    invoke-virtual {p1, v0, p0, p2, v1}, Landroidx/fragment/app/f0;->d(ILandroidx/fragment/app/n;Ljava/lang/String;I)V

    .line 10
    iput-boolean v0, p0, Landroidx/fragment/app/m;->o0:Z

    .line 11
    check-cast p1, Landroidx/fragment/app/a;

    .line 12
    invoke-virtual {p1, v0}, Landroidx/fragment/app/a;->h(Z)I

    move-result p1

    .line 13
    iput p1, p0, Landroidx/fragment/app/m;->k0:I

    return p1
.end method

.method public show(Landroidx/fragment/app/y;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/m;->p0:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Landroidx/fragment/app/m;->q0:Z

    .line 3
    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/y;)V

    .line 4
    iput-boolean v1, v2, Landroidx/fragment/app/f0;->p:Z

    .line 5
    invoke-virtual {v2, v0, p0, p2, v1}, Landroidx/fragment/app/a;->d(ILandroidx/fragment/app/n;Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v2}, Landroidx/fragment/app/a;->g()I

    return-void
.end method

.method public showNow(Landroidx/fragment/app/y;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/m;->p0:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Landroidx/fragment/app/m;->q0:Z

    .line 3
    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/y;)V

    .line 4
    iput-boolean v1, v2, Landroidx/fragment/app/f0;->p:Z

    .line 5
    invoke-virtual {v2, v0, p0, p2, v1}, Landroidx/fragment/app/a;->d(ILandroidx/fragment/app/n;Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v2}, Landroidx/fragment/app/a;->c()V

    return-void
.end method

.method public final y(ZZZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/m;->p0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/m;->p0:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/fragment/app/m;->q0:Z

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    if-nez p2, :cond_2

    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v1, p0, Landroidx/fragment/app/m;->c0:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 8
    iget-object p2, p0, Landroidx/fragment/app/m;->n0:Landroid/app/Dialog;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/m;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p0, Landroidx/fragment/app/m;->c0:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/fragment/app/m;->d0:Landroidx/fragment/app/m$a;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/m;->o0:Z

    .line 11
    iget p2, p0, Landroidx/fragment/app/m;->k0:I

    if-ltz p2, :cond_6

    const-string p2, "Bad id: "

    if-eqz p3, :cond_4

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getParentFragmentManager()Landroidx/fragment/app/y;

    move-result-object p1

    iget p3, p0, Landroidx/fragment/app/m;->k0:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p3, :cond_3

    .line 13
    invoke-virtual {p1, p3, v0}, Landroidx/fragment/app/y;->T(II)Z

    goto :goto_1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getParentFragmentManager()Landroidx/fragment/app/y;

    move-result-object p3

    iget v0, p0, Landroidx/fragment/app/m;->k0:I

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v0, :cond_5

    .line 16
    new-instance p2, Landroidx/fragment/app/y$n;

    invoke-direct {p2, p3, v0}, Landroidx/fragment/app/y$n;-><init>(Landroidx/fragment/app/y;I)V

    invoke-virtual {p3, p2, p1}, Landroidx/fragment/app/y;->y(Landroidx/fragment/app/y$m;Z)V

    :goto_1
    const/4 p1, -0x1

    .line 17
    iput p1, p0, Landroidx/fragment/app/m;->k0:I

    goto :goto_2

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getParentFragmentManager()Landroidx/fragment/app/y;

    move-result-object p2

    .line 20
    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, p2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/y;)V

    .line 21
    iput-boolean v0, v1, Landroidx/fragment/app/f0;->p:Z

    .line 22
    invoke-virtual {v1, p0}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/n;)Landroidx/fragment/app/f0;

    if-eqz p3, :cond_7

    .line 23
    invoke-virtual {v1}, Landroidx/fragment/app/a;->c()V

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    .line 24
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->h(Z)I

    goto :goto_2

    .line 25
    :cond_8
    invoke-virtual {v1}, Landroidx/fragment/app/a;->g()I

    :goto_2
    return-void
.end method
