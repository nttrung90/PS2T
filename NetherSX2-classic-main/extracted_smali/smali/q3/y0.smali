.class public final Lq3/y0;
.super Landroidx/fragment/app/m;
.source "SourceFile"


# static fields
.field public static final synthetic u0:I


# instance fields
.field public s0:Lr3/c;

.field public t0:Lxyz/aethersx2/android/d;


# direct methods
.method public constructor <init>(Lxyz/aethersx2/android/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/y0;->t0:Lxyz/aethersx2/android/d;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const p3, 0x7f0c0037

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090079

    .line 2
    invoke-static {p1, p2}, Ln2/e;->o(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    const p2, 0x7f09007d

    .line 3
    invoke-static {p1, p2}, Ln2/e;->o(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    if-eqz v3, :cond_0

    const p2, 0x7f0900ec

    .line 4
    invoke-static {p1, p2}, Ln2/e;->o(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    if-eqz v4, :cond_0

    const p2, 0x7f0901cd

    .line 5
    invoke-static {p1, p2}, Ln2/e;->o(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    const p2, 0x7f09026d

    .line 6
    invoke-static {p1, p2}, Ln2/e;->o(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const p2, 0x7f090284

    .line 7
    invoke-static {p1, p2}, Ln2/e;->o(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v7, p3

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    .line 8
    new-instance p2, Lr3/c;

    check-cast p1, Landroid/widget/FrameLayout;

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lr3/c;-><init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/EditText;)V

    .line 9
    iput-object p2, p0, Lq3/y0;->s0:Lr3/c;

    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "Missing required view with ID: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/n;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lq3/y0;->s0:Lr3/c;

    iget-object p1, p1, Lr3/c;->g:Landroid/widget/TextView;

    check-cast p1, Landroid/widget/EditText;

    new-instance p2, Lq3/y0$a;

    invoke-direct {p2, p0}, Lq3/y0$a;-><init>(Lq3/y0;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    iget-object p1, p0, Lq3/y0;->s0:Lr3/c;

    iget-object p1, p1, Lr3/c;->f:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    iget-object p1, p0, Lq3/y0;->s0:Lr3/c;

    iget-object p1, p1, Lr3/c;->f:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    new-instance p2, Lq3/f;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Lq3/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lq3/y0;->s0:Lr3/c;

    iget-object p1, p1, Lr3/c;->e:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    new-instance p2, Lq3/a;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lq3/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
