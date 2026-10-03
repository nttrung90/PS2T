.class public final Lk2/d$a;
.super Lb0/d$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk2/d;->c(Landroid/content/Context;Landroidx/fragment/app/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/q;

.field public final synthetic b:Lk2/d;


# direct methods
.method public constructor <init>(Lk2/d;Landroidx/fragment/app/q;)V
    .locals 0

    iput-object p1, p0, Lk2/d$a;->b:Lk2/d;

    iput-object p2, p0, Lk2/d$a;->a:Landroidx/fragment/app/q;

    invoke-direct {p0}, Lb0/d$e;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk2/d$a;->b:Lk2/d;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lk2/d;->m:Z

    .line 3
    iget-object v0, p0, Lk2/d$a;->a:Landroidx/fragment/app/q;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/q;->q(I)V

    return-void
.end method

.method public final e(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk2/d$a;->b:Lk2/d;

    iget v1, v0, Lk2/d;->c:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 2
    iput-object p1, v0, Lk2/d;->n:Landroid/graphics/Typeface;

    .line 3
    iget-object p1, p0, Lk2/d$a;->b:Lk2/d;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lk2/d;->m:Z

    .line 5
    iget-object v0, p0, Lk2/d$a;->a:Landroidx/fragment/app/q;

    .line 6
    iget-object p1, p1, Lk2/d;->n:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/q;->r(Landroid/graphics/Typeface;Z)V

    return-void
.end method
