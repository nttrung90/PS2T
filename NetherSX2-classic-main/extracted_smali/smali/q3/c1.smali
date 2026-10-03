.class public final Lq3/c1;
.super Lcom/google/android/material/bottomsheet/b;
.source "SourceFile"


# static fields
.field public static final synthetic y0:I


# instance fields
.field public final s0:I

.field public final t0:I

.field public final u0:Ljava/lang/String;

.field public final v0:Lq3/a2;

.field public w0:Lr3/e;

.field public x0:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>(IILq3/a2;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/b;-><init>()V

    .line 2
    iput p1, p0, Lq3/c1;->s0:I

    .line 3
    iput p2, p0, Lq3/c1;->t0:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "Pad%d/Macro%d"

    invoke-static {p1, v0}, Lxyz/aethersx2/android/FileHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq3/c1;->u0:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lq3/c1;->v0:Lq3/a2;

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lq3/c1;->v0:Lq3/a2;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lq3/c1;->C()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lq3/a2;->c(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, p1

    if-gez v0, :cond_0

    .line 3
    iget-object p1, p0, Lq3/c1;->v0:Lq3/a2;

    invoke-virtual {p0}, Lq3/c1;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lq3/a2;->q(Ljava/lang/String;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lq3/c1;->v0:Lq3/a2;

    invoke-virtual {p0}, Lq3/c1;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lq3/a2;->h(Ljava/lang/String;I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lq3/c1;->D()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lq3/c1;->C()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, p1

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 8
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lq3/c1;->C()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 9
    :goto_0
    invoke-virtual {p0}, Lq3/c1;->F()V

    return-void
.end method

.method public final B()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lq3/c1;->u0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Binds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lq3/c1;->u0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Frequency"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final D()Landroid/content/SharedPreferences;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public final E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq3/c1;->v0:Lq3/a2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lq3/c1;->B()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lq3/a2;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lq3/c1;->D()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lq3/c1;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lq3/c1;->w0:Lr3/e;

    iget-object v0, v0, Lr3/e;->d:Landroid/widget/TextView;

    const v1, 0x7f1000d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lq3/c1;->w0:Lr3/e;

    iget-object v1, v1, Lr3/e;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lq3/c1;->w0:Lr3/e;

    iget-object v0, v0, Lr3/e;->d:Landroid/widget/TextView;

    const v1, 0x7f10009a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method

.method public final F()V
    .locals 5

    .line 1
    iget-object v0, p0, Lq3/c1;->v0:Lq3/a2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lq3/c1;->C()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lq3/a2;->c(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lq3/c1;->D()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lq3/c1;->C()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    if-gez v0, :cond_1

    .line 4
    iget-object v0, p0, Lq3/c1;->w0:Lr3/e;

    iget-object v0, v0, Lr3/e;->e:Landroid/widget/TextView;

    const v1, 0x7f1000d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lq3/c1;->w0:Lr3/e;

    iget-object v0, v0, Lr3/e;->e:Landroid/widget/TextView;

    const v1, 0x7f100093

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v2, p0, Lq3/c1;->w0:Lr3/e;

    iget-object v2, v2, Lr3/e;->e:Landroid/widget/TextView;

    const v3, 0x7f100095

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {p0, v3, v4}, Landroidx/fragment/app/n;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public final G()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lq3/c1;->D()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lq3/c1;->u0:Ljava/lang/String;

    .line 3
    invoke-static {v0, v1}, Lxyz/aethersx2/android/PreferenceHelpers;->getStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lq3/c1;->w0:Lr3/e;

    iget-object v1, v1, Lr3/e;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lxyz/aethersx2/android/InputBindingPreference;->a0(Landroid/content/Context;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lq3/c1;->w0:Lr3/e;

    iget-object v0, v0, Lr3/e;->g:Landroid/widget/TextView;

    const v1, 0x7f100094

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const p2, 0x7f0c004c

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900d7

    .line 2
    invoke-static {p1, p2}, Ln2/e;->o(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    const p2, 0x7f09014f

    .line 3
    invoke-static {p1, p2}, Ln2/e;->o(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    const p2, 0x7f090168

    .line 4
    invoke-static {p1, p2}, Ln2/e;->o(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    const p2, 0x7f090169

    .line 5
    invoke-static {p1, p2}, Ln2/e;->o(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const p2, 0x7f09016a

    .line 6
    invoke-static {p1, p2}, Ln2/e;->o(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const p2, 0x7f09016b

    .line 7
    invoke-static {p1, p2}, Ln2/e;->o(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v7, p3

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    const p2, 0x7f09016c

    .line 8
    invoke-static {p1, p2}, Ln2/e;->o(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v8, p3

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const p2, 0x7f09026d

    .line 9
    invoke-static {p1, p2}, Ln2/e;->o(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v9, p3

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 10
    new-instance p2, Lr3/e;

    check-cast p1, Landroid/widget/LinearLayout;

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lr3/e;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 11
    iput-object p2, p0, Lq3/c1;->w0:Lr3/e;

    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "Missing required view with ID: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/m;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object v0, p0, Lq3/c1;->x0:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/n;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lq3/c1;->E()V

    .line 3
    invoke-virtual {p0}, Lq3/c1;->F()V

    .line 4
    iget-object p1, p0, Lq3/c1;->w0:Lr3/e;

    iget-object p1, p1, Lr3/e;->h:Landroid/widget/TextView;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget v0, p0, Lq3/c1;->s0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget v0, p0, Lq3/c1;->t0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p2, v2

    const v0, 0x7f100098

    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/n;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lq3/c1;->w0:Lr3/e;

    iget-object p1, p1, Lr3/e;->b:Landroid/widget/ImageButton;

    new-instance p2, Lq3/a1;

    invoke-direct {p2, p0, v1}, Lq3/a1;-><init>(Lq3/c1;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lq3/c1;->w0:Lr3/e;

    iget-object p1, p1, Lr3/e;->a:Landroid/widget/ImageButton;

    new-instance p2, Lq3/b1;

    invoke-direct {p2, p0, v1}, Lq3/b1;-><init>(Lq3/c1;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lq3/c1;->w0:Lr3/e;

    iget-object p1, p1, Lr3/e;->c:Landroid/widget/LinearLayout;

    new-instance p2, Lq3/a1;

    invoke-direct {p2, p0, v2}, Lq3/a1;-><init>(Lq3/c1;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lq3/c1;->w0:Lr3/e;

    iget-object p1, p1, Lr3/e;->f:Landroid/widget/LinearLayout;

    new-instance p2, Lq3/b1;

    invoke-direct {p2, p0, v2}, Lq3/b1;-><init>(Lq3/c1;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p0}, Lq3/c1;->G()V

    return-void
.end method
