.class public final Lk2/e;
.super Landroidx/fragment/app/q;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/text/TextPaint;

.field public final synthetic c:Landroidx/fragment/app/q;

.field public final synthetic d:Lk2/d;


# direct methods
.method public constructor <init>(Lk2/d;Landroid/content/Context;Landroid/text/TextPaint;Landroidx/fragment/app/q;)V
    .locals 0

    iput-object p1, p0, Lk2/e;->d:Lk2/d;

    iput-object p2, p0, Lk2/e;->a:Landroid/content/Context;

    iput-object p3, p0, Lk2/e;->b:Landroid/text/TextPaint;

    iput-object p4, p0, Lk2/e;->c:Landroidx/fragment/app/q;

    invoke-direct {p0}, Landroidx/fragment/app/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final q(I)V
    .locals 1

    iget-object v0, p0, Lk2/e;->c:Landroidx/fragment/app/q;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/q;->q(I)V

    return-void
.end method

.method public final r(Landroid/graphics/Typeface;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk2/e;->d:Lk2/d;

    iget-object v1, p0, Lk2/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lk2/e;->b:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, v2, p1}, Lk2/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 2
    iget-object v0, p0, Lk2/e;->c:Landroidx/fragment/app/q;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/q;->r(Landroid/graphics/Typeface;Z)V

    return-void
.end method
