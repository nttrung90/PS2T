.class public final Lj3/h0;
.super Lj3/l0;
.source "SourceFile"


# static fields
.field public static final synthetic h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _invoked:I

.field public final g:Lc3/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc3/l<",
            "Ljava/lang/Throwable;",
            "Lu2/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lj3/h0;

    const-string v1, "_invoked"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lj3/h0;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lc3/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lu2/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lj3/l0;-><init>()V

    .line 2
    iput-object p1, p0, Lj3/h0;->g:Lc3/l;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lj3/h0;->_invoked:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lj3/h0;->m(Ljava/lang/Throwable;)V

    sget-object p1, Lu2/f;->a:Lu2/f;

    return-object p1
.end method

.method public final m(Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lj3/h0;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj3/h0;->g:Lc3/l;

    invoke-interface {v0, p1}, Lc3/l;->e(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
