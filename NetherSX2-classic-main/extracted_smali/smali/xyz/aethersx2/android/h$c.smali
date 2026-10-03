.class public final Lxyz/aethersx2/android/h$c;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/aethersx2/android/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final synthetic B:I


# instance fields
.field public A:Lxyz/aethersx2/android/i;

.field public final v:Landroid/view/View;

.field public final w:Landroid/widget/ImageView;

.field public final x:Landroid/widget/TextView;

.field public final y:Landroid/widget/TextView;

.field public final z:Lxyz/aethersx2/android/h;


# direct methods
.method public constructor <init>(Lxyz/aethersx2/android/h;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lxyz/aethersx2/android/h$c;->A:Lxyz/aethersx2/android/i;

    .line 3
    iput-object p1, p0, Lxyz/aethersx2/android/h$c;->z:Lxyz/aethersx2/android/h;

    .line 4
    iput-object p2, p0, Lxyz/aethersx2/android/h$c;->v:Landroid/view/View;

    const p1, 0x7f09014a

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lxyz/aethersx2/android/h$c;->w:Landroid/widget/ImageView;

    const p1, 0x7f090241

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lxyz/aethersx2/android/h$c;->x:Landroid/widget/TextView;

    const p1, 0x7f09026c

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lxyz/aethersx2/android/h$c;->y:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lxyz/aethersx2/android/h$c;->A:Lxyz/aethersx2/android/i;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lxyz/aethersx2/android/h$c;->z:Lxyz/aethersx2/android/h;

    invoke-static {v0, p1}, Lxyz/aethersx2/android/h;->z(Lxyz/aethersx2/android/h;Lxyz/aethersx2/android/i;)V

    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lxyz/aethersx2/android/h$c;->A:Lxyz/aethersx2/android/i;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    new-instance p1, Landroidx/appcompat/widget/s0;

    iget-object v0, p0, Lxyz/aethersx2/android/h$c;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lxyz/aethersx2/android/h$c;->v:Landroid/view/View;

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/widget/s0;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 3
    new-instance v1, Li/f;

    invoke-direct {v1, v0}, Li/f;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0004

    .line 4
    iget-object v2, p1, Landroidx/appcompat/widget/s0;->b:Landroidx/appcompat/view/menu/e;

    .line 5
    invoke-virtual {v1, v0, v2}, Li/f;->inflate(ILandroid/view/Menu;)V

    .line 6
    iget-object v0, p1, Landroidx/appcompat/widget/s0;->b:Landroidx/appcompat/view/menu/e;

    const v1, 0x7f090163

    .line 7
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/e;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lxyz/aethersx2/android/h$c;->z:Lxyz/aethersx2/android/h;

    .line 8
    iget-object v1, v1, Lxyz/aethersx2/android/h;->z0:Ljava/lang/String;

    .line 9
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 10
    iget-object v0, p0, Lxyz/aethersx2/android/h$c;->A:Lxyz/aethersx2/android/i;

    invoke-virtual {v0}, Lxyz/aethersx2/android/i;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p1, Landroidx/appcompat/widget/s0;->b:Landroidx/appcompat/view/menu/e;

    const v1, 0x7f0900da

    .line 12
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/e;->removeItem(I)V

    .line 13
    :cond_1
    new-instance v0, Lq3/u;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lq3/u;-><init>(Ljava/lang/Object;I)V

    .line 14
    iput-object v0, p1, Landroidx/appcompat/widget/s0;->d:Landroidx/appcompat/widget/s0$a;

    .line 15
    iget-object p1, p1, Landroidx/appcompat/widget/s0;->c:Landroidx/appcompat/view/menu/h;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->e()V

    const/4 p1, 0x1

    return p1
.end method
