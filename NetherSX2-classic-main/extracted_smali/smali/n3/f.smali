.class public Ln3/f;
.super Lj3/d0;
.source "SourceFile"


# instance fields
.field public d:Ln3/a;


# direct methods
.method public constructor <init>(IIJ)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lj3/d0;-><init>()V

    .line 2
    new-instance v6, Ln3/a;

    const-string v5, "DefaultDispatcher"

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Ln3/a;-><init>(IIJLjava/lang/String;)V

    .line 3
    iput-object v6, p0, Ln3/f;->d:Ln3/a;

    return-void
.end method


# virtual methods
.method public final d(Lw2/f;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ln3/f;->d:Ln3/a;

    sget-object v0, Ln3/a;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    sget-object v0, Ln3/k;->f:Ln3/i;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Ln3/a;->c(Ljava/lang/Runnable;Ln3/h;Z)V

    return-void
.end method
