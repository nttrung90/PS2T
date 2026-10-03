.class public final Lcom/google/android/material/bottomsheet/a;
.super Le/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomsheet/a$f;
    }
.end annotation


# static fields
.field public static final synthetic o:I


# instance fields
.field public e:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field public f:Landroid/widget/FrameLayout;

.field public g:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public h:Landroid/widget/FrameLayout;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;

.field public m:Z

.field public n:Lcom/google/android/material/bottomsheet/a$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 1
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f040071

    invoke-virtual {v1, v2, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    const p2, 0x7f11023d

    .line 4
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Le/m;-><init>(Landroid/content/Context;I)V

    .line 5
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/a;->i:Z

    .line 6
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/a;->j:Z

    .line 7
    new-instance p1, Lcom/google/android/material/bottomsheet/a$e;

    invoke-direct {p1, p0}, Lcom/google/android/material/bottomsheet/a$e;-><init>(Lcom/google/android/material/bottomsheet/a;)V

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/a;->n:Lcom/google/android/material/bottomsheet/a$e;

    .line 8
    invoke-virtual {p0}, Le/m;->e()Z

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    new-array p2, v0, [I

    const v0, 0x7f040186

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/a;->m:Z

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->e:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->f()Landroid/widget/FrameLayout;

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public final f()Landroid/widget/FrameLayout;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->f:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0024

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/a;->f:Landroid/widget/FrameLayout;

    const v1, 0x7f0900c9

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/a;->g:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 4
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->f:Landroid/widget/FrameLayout;

    const v1, 0x7f0900de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/a;->h:Landroid/widget/FrameLayout;

    .line 5
    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/a;->e:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 6
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/a;->n:Lcom/google/android/material/bottomsheet/a$e;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->e:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/a;->i:Z

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C(Z)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final g(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->f()Landroid/widget/FrameLayout;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->f:Landroid/widget/FrameLayout;

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/a;->m:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/a;->h:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/google/android/material/bottomsheet/a$a;

    invoke-direct {v1, p0}, Lcom/google/android/material/bottomsheet/a$a;-><init>(Lcom/google/android/material/bottomsheet/a;)V

    sget-object v2, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 6
    invoke-static {p1, v1}, Lj0/a0$i;->u(Landroid/view/View;Lj0/q;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/a;->h:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    if-nez p3, :cond_2

    .line 8
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/a;->h:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/a;->h:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    const p1, 0x7f090276

    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/google/android/material/bottomsheet/a$b;

    invoke-direct {p2, p0}, Lcom/google/android/material/bottomsheet/a$b;-><init>(Lcom/google/android/material/bottomsheet/a;)V

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/a;->h:Landroid/widget/FrameLayout;

    new-instance p2, Lcom/google/android/material/bottomsheet/a$c;

    invoke-direct {p2, p0}, Lcom/google/android/material/bottomsheet/a$c;-><init>(Lcom/google/android/material/bottomsheet/a;)V

    invoke-static {p1, p2}, Lj0/a0;->q(Landroid/view/View;Lj0/a;)V

    .line 13
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/a;->h:Landroid/widget/FrameLayout;

    new-instance p2, Lcom/google/android/material/bottomsheet/a$d;

    invoke-direct {p2}, Lcom/google/android/material/bottomsheet/a$d;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 14
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/a;->f:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/a;->m:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xff

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/a;->f:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    xor-int/lit8 v3, v1, 0x1

    .line 6
    invoke-virtual {v2, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/a;->g:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v2, :cond_2

    xor-int/lit8 v3, v1, 0x1

    .line 8
    invoke-virtual {v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setFitsSystemWindows(Z)V

    :cond_2
    if-eqz v1, :cond_3

    const/16 v1, 0x300

    .line 9
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Le/m;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    const/high16 v0, -0x80000000

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, -0x1

    .line 5
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->e:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 3
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E(I)V

    :cond_0
    return-void
.end method

.method public final setCancelable(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/a;->i:Z

    if-eq v0, p1, :cond_0

    .line 3
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/a;->i:Z

    .line 4
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a;->e:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C(Z)V

    :cond_0
    return-void
.end method

.method public final setCanceledOnTouchOutside(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/a;->i:Z

    if-nez v1, :cond_0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/a;->i:Z

    .line 4
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/a;->j:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/a;->k:Z

    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/material/bottomsheet/a;->g(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Le/m;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/material/bottomsheet/a;->g(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Le/m;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/material/bottomsheet/a;->g(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Le/m;->setContentView(Landroid/view/View;)V

    return-void
.end method
