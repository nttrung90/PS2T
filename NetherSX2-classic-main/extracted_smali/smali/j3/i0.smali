.class public final Lj3/i0;
.super Lj3/m0;
.source "SourceFile"


# instance fields
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
    invoke-direct {p0}, Lj3/m0;-><init>()V

    .line 2
    iput-object p1, p0, Lj3/i0;->g:Lc3/l;

    return-void
.end method


# virtual methods
.method public final bridge synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lj3/i0;->m(Ljava/lang/Throwable;)V

    sget-object p1, Lu2/f;->a:Lu2/f;

    return-object p1
.end method

.method public final m(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lj3/i0;->g:Lc3/l;

    invoke-interface {v0, p1}, Lc3/l;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
