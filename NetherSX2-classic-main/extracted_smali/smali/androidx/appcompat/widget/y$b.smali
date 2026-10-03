.class public final Landroidx/appcompat/widget/y$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/y$f;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public c:Landroidx/appcompat/app/d;

.field public d:Landroid/widget/ListAdapter;

.field public e:Ljava/lang/CharSequence;

.field public final synthetic f:Landroidx/appcompat/widget/y;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/y;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/y$b;->f:Landroidx/appcompat/widget/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y$b;->c:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y$b;->c:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Le/m;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/appcompat/widget/y$b;->c:Landroidx/appcompat/app/d;

    :cond_0
    return-void
.end method

.method public final e(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y$b;->d:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroidx/appcompat/app/d$a;

    iget-object v1, p0, Landroidx/appcompat/widget/y$b;->f:Landroidx/appcompat/widget/y;

    invoke-virtual {v1}, Landroidx/appcompat/widget/y;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/y$b;->e:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 4
    iget-object v2, v0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    .line 5
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/y$b;->d:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroidx/appcompat/widget/y$b;->f:Landroidx/appcompat/widget/y;

    .line 6
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 7
    iget-object v3, v0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, v3, Landroidx/appcompat/app/AlertController$b;->q:Landroid/widget/ListAdapter;

    .line 8
    iput-object p0, v3, Landroidx/appcompat/app/AlertController$b;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 9
    iput v2, v3, Landroidx/appcompat/app/AlertController$b;->w:I

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, v3, Landroidx/appcompat/app/AlertController$b;->v:Z

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/y$b;->c:Landroidx/appcompat/app/d;

    .line 12
    iget-object v0, v0, Landroidx/appcompat/app/d;->e:Landroidx/appcompat/app/AlertController;

    .line 13
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setTextDirection(I)V

    .line 15
    invoke-virtual {v0, p2}, Landroid/view/View;->setTextAlignment(I)V

    .line 16
    iget-object p1, p0, Landroidx/appcompat/widget/y$b;->c:Landroidx/appcompat/app/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y$b;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final l(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/y$b;->e:Ljava/lang/CharSequence;

    return-void
.end method

.method public final m(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final n(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final o(Landroid/widget/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/y$b;->d:Landroid/widget/ListAdapter;

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/y$b;->f:Landroidx/appcompat/widget/y;

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/y$b;->f:Landroidx/appcompat/widget/y;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/y$b;->f:Landroidx/appcompat/widget/y;

    iget-object v1, p0, Landroidx/appcompat/widget/y$b;->d:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 4
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/y$b;->c:Landroidx/appcompat/app/d;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Le/m;->dismiss()V

    .line 6
    iput-object v0, p0, Landroidx/appcompat/widget/y$b;->c:Landroidx/appcompat/app/d;

    :cond_1
    return-void
.end method

.method public final p(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
