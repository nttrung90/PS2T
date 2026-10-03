.class public final Lk2/a;
.super Landroidx/fragment/app/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk2/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Typeface;

.field public final b:Lk2/a$a;

.field public c:Z


# direct methods
.method public constructor <init>(Lk2/a$a;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/q;-><init>()V

    .line 2
    iput-object p2, p0, Lk2/a;->a:Landroid/graphics/Typeface;

    .line 3
    iput-object p1, p0, Lk2/a;->b:Lk2/a$a;

    return-void
.end method


# virtual methods
.method public final q(I)V
    .locals 0

    iget-object p1, p0, Lk2/a;->a:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Lk2/a;->u(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final r(Landroid/graphics/Typeface;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lk2/a;->u(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final u(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk2/a;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lk2/a;->b:Lk2/a$a;

    check-cast v0, Lf2/d;

    .line 3
    iget-object v0, v0, Lf2/d;->a:Lf2/e;

    .line 4
    invoke-virtual {v0, p1}, Lf2/e;->n(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Lf2/e;->k(Z)V

    :cond_0
    return-void
.end method
