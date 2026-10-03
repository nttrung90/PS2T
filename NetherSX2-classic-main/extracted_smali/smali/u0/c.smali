.class public final Lu0/c;
.super Lu0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu0/b<",
        "Lu0/c;",
        ">;"
    }
.end annotation


# instance fields
.field public r:Lu0/d;

.field public s:F

.field public t:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/fragment/app/q;",
            ")V"
        }
    .end annotation

    sget-object v0, Li2/d;->s:Li2/d$a;

    .line 1
    invoke-direct {p0, p1}, Lu0/b;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lu0/c;->r:Lu0/d;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    iput p1, p0, Lu0/c;->s:F

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lu0/c;->t:Z

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lu0/c;->r:Lu0/d;

    iget-wide v0, v0, Lu0/d;->b:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_2

    .line 3
    iget-boolean v0, p0, Lu0/b;->f:Z

    if-eqz v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lu0/c;->t:Z

    :cond_1
    return-void

    .line 5
    :cond_2
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be started on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Spring animations can only come to an end when there is damping"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
