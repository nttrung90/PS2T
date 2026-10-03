.class public final Lj3/n0$a;
.super Lj3/m0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj3/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final g:Lj3/n0;

.field public final h:Lj3/n0$b;

.field public final i:Lj3/g;

.field public final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj3/n0;Lj3/n0$b;Lj3/g;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj3/m0;-><init>()V

    .line 2
    iput-object p1, p0, Lj3/n0$a;->g:Lj3/n0;

    .line 3
    iput-object p2, p0, Lj3/n0$a;->h:Lj3/n0$b;

    .line 4
    iput-object p3, p0, Lj3/n0$a;->i:Lj3/g;

    .line 5
    iput-object p4, p0, Lj3/n0$a;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lj3/n0$a;->m(Ljava/lang/Throwable;)V

    sget-object p1, Lu2/f;->a:Lu2/f;

    return-object p1
.end method

.method public final m(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lj3/n0$a;->g:Lj3/n0;

    iget-object v0, p0, Lj3/n0$a;->h:Lj3/n0$b;

    iget-object v1, p0, Lj3/n0$a;->i:Lj3/g;

    iget-object v2, p0, Lj3/n0$a;->j:Ljava/lang/Object;

    sget-object v3, Lj3/n0;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    invoke-virtual {p1, v1}, Lj3/n0;->C(Lm3/f;)Lj3/g;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lj3/n0;->J(Lj3/n0$b;Lj3/g;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v0, v2}, Lj3/n0;->u(Lj3/n0$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lj3/n0;->o(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
