.class public final Lj3/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/f$b;
.implements Lw2/f$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/f$b;",
        "Lw2/f$c<",
        "Lj3/x0;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lj3/x0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj3/x0;

    invoke-direct {v0}, Lj3/x0;-><init>()V

    sput-object v0, Lj3/x0;->c:Lj3/x0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;Lc3/p;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lc3/p<",
            "-TR;-",
            "Lw2/f$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-interface {p2, p1, p0}, Lc3/p;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Lw2/f$c;)Lw2/f$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lw2/f$b;",
            ">(",
            "Lw2/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lw2/f$b$a;->a(Lw2/f$b;Lw2/f$c;)Lw2/f$b;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Lw2/f$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/f$c<",
            "*>;"
        }
    .end annotation

    return-object p0
.end method

.method public final minusKey(Lw2/f$c;)Lw2/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/f$c<",
            "*>;)",
            "Lw2/f;"
        }
    .end annotation

    invoke-static {p0, p1}, Lw2/f$b$a;->b(Lw2/f$b;Lw2/f$c;)Lw2/f;

    move-result-object p1

    return-object p1
.end method
