.class public final Lf2/q$a;
.super Landroidx/fragment/app/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf2/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf2/q;


# direct methods
.method public constructor <init>(Lf2/q;)V
    .locals 0

    iput-object p1, p0, Lf2/q$a;->a:Lf2/q;

    invoke-direct {p0}, Landroidx/fragment/app/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final q(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf2/q$a;->a:Lf2/q;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lf2/q;->d:Z

    .line 3
    iget-object p1, p1, Lf2/q;->e:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf2/q$b;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lf2/q$b;->a()V

    :cond_0
    return-void
.end method

.method public final r(Landroid/graphics/Typeface;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lf2/q$a;->a:Lf2/q;

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Lf2/q;->d:Z

    .line 3
    iget-object p1, p1, Lf2/q;->e:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf2/q$b;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Lf2/q$b;->a()V

    :cond_1
    return-void
.end method
