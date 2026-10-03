.class public abstract Lw2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/f$b;


# instance fields
.field private final key:Lw2/f$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/f$c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw2/f$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/f$c<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw2/a;->key:Lw2/f$c;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lc3/p;)Ljava/lang/Object;
    .locals 1
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

    const-string v0, "operation"

    .line 1
    invoke-static {p2, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2, p1, p0}, Lc3/p;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lw2/f$c;)Lw2/f$b;
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

.method public getKey()Lw2/f$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/f$c<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lw2/a;->key:Lw2/f$c;

    return-object v0
.end method

.method public minusKey(Lw2/f$c;)Lw2/f;
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

.method public plus(Lw2/f;)Lw2/f;
    .locals 1

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lw2/f$a;->a(Lw2/f;Lw2/f;)Lw2/f;

    move-result-object p1

    return-object p1
.end method
