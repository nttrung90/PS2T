.class public final Lq3/v1$a$c;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/v1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic A:Lq3/v1$a;

.field public v:Lq3/v1$a$a;

.field public w:Landroid/widget/TextView;

.field public x:Landroid/widget/TextView;

.field public y:Landroid/widget/ImageButton;

.field public z:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Lq3/v1$a;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq3/v1$a$c;->A:Lq3/v1$a;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    const p1, 0x7f0901d5

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lq3/v1$a$c;->w:Landroid/widget/TextView;

    const p1, 0x7f0901ea

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lq3/v1$a$c;->x:Landroid/widget/TextView;

    const p1, 0x7f090271

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lq3/v1$a$c;->y:Landroid/widget/ImageButton;

    .line 6
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901ed

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lq3/v1$a$c;->z:Landroid/widget/ImageButton;

    .line 8
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq3/v1$a$c;->y:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_0

    .line 2
    iget-object p1, p0, Lq3/v1$a$c;->A:Lq3/v1$a;

    .line 3
    iget-object p1, p1, Lq3/v1$a;->c:Landroid/content/Context;

    .line 4
    iget-object v0, p0, Lq3/v1$a$c;->v:Lq3/v1$a$a;

    .line 5
    iget-object v1, v0, Lq3/v1$a$a;->a:Ljava/lang/String;

    .line 6
    iget-boolean v0, v0, Lq3/v1$a$a;->b:Z

    .line 7
    invoke-static {p1, v1, v0}, Lq3/v1;->z(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 8
    iget-object p1, p0, Lq3/v1$a$c;->v:Lq3/v1$a$a;

    .line 9
    iget-boolean v0, p1, Lq3/v1$a$a;->b:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lq3/v1$a$a;->b:Z

    .line 10
    iget-object v1, p0, Lq3/v1$a$c;->A:Lq3/v1$a;

    .line 11
    iget-object v1, v1, Lq3/v1$a;->c:Landroid/content/Context;

    .line 12
    iget-object p1, p1, Lq3/v1$a$a;->a:Ljava/lang/String;

    .line 13
    invoke-static {v1, p1, v0}, Lq3/v1;->y(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 14
    invoke-virtual {p0}, Lq3/v1$a$c;->x()V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lq3/v1$a$c;->z:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_1

    .line 16
    iget-object p1, p0, Lq3/v1$a$c;->A:Lq3/v1$a;

    .line 17
    iget-object p1, p1, Lq3/v1$a;->c:Landroid/content/Context;

    .line 18
    iget-object v0, p0, Lq3/v1$a$c;->v:Lq3/v1$a$a;

    .line 19
    iget-object v1, v0, Lq3/v1$a$a;->a:Ljava/lang/String;

    .line 20
    iget-boolean v0, v0, Lq3/v1$a$a;->b:Z

    .line 21
    invoke-static {p1, v1, v0}, Lq3/v1;->z(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 22
    iget-object p1, p0, Lq3/v1$a$c;->A:Lq3/v1$a;

    invoke-virtual {p1}, Lq3/v1$a;->q()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final x()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq3/v1$a$c;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lq3/v1$a$c;->v:Lq3/v1$a$a;

    .line 2
    iget-object v1, v1, Lq3/v1$a$a;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lq3/v1$a$c;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lq3/v1$a$c;->A:Lq3/v1$a;

    iget-object v1, v1, Lq3/v1$a;->e:Lq3/v1;

    iget-object v2, p0, Lq3/v1$a$c;->v:Lq3/v1$a$a;

    .line 5
    iget-boolean v2, v2, Lq3/v1$a$a;->b:Z

    if-eqz v2, :cond_0

    const v2, 0x7f1000b4

    goto :goto_0

    :cond_0
    const v2, 0x7f1000b3

    .line 6
    :goto_0
    invoke-virtual {v1, v2}, Landroidx/fragment/app/n;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lq3/v1$a$c;->y:Landroid/widget/ImageButton;

    iget-object v1, p0, Lq3/v1$a$c;->A:Lq3/v1$a;

    iget-object v1, v1, Lq3/v1$a;->e:Lq3/v1;

    invoke-virtual {v1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lq3/v1$a$c;->v:Lq3/v1$a$a;

    .line 8
    iget-boolean v2, v2, Lq3/v1$a$a;->b:Z

    if-eqz v2, :cond_1

    const v2, 0x7f08007c

    goto :goto_1

    :cond_1
    const v2, 0x7f08007d

    .line 9
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
