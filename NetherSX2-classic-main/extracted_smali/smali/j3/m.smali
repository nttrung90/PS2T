.class public abstract Lj3/m;
.super Lw2/a;
.source "SourceFile"

# interfaces
.implements Lw2/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj3/m$a;
    }
.end annotation


# static fields
.field public static final c:Lj3/m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj3/m$a;

    invoke-direct {v0}, Lj3/m$a;-><init>()V

    sput-object v0, Lj3/m;->c:Lj3/m$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lw2/e$a;->c:Lw2/e$a;

    invoke-direct {p0, v0}, Lw2/a;-><init>(Lw2/f$c;)V

    return-void
.end method


# virtual methods
.method public abstract d(Lw2/f;Ljava/lang/Runnable;)V
.end method

.method public final f(Lw2/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/d<",
            "*>;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lm3/c;

    .line 2
    invoke-virtual {p1}, Lm3/c;->i()V

    return-void
.end method

.method public final get(Lw2/f$c;)Lw2/f$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lw2/f$b;",
            ">(",
            "Lw2/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v1, p1, Lw2/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    check-cast p1, Lw2/b;

    invoke-interface {p0}, Lw2/f$b;->getKey()Lw2/f$c;

    move-result-object v1

    .line 4
    invoke-static {v1, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_1

    .line 5
    iget-object v0, p1, Lw2/b;->d:Lw2/f$c;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 6
    iget-object p1, p1, Lw2/b;->c:Lc3/l;

    invoke-interface {p1, p0}, Lc3/l;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/f$b;

    .line 7
    instance-of v0, p1, Lw2/f$b;

    if-eqz v0, :cond_3

    move-object v2, p1

    goto :goto_2

    .line 8
    :cond_2
    sget-object v0, Lw2/e$a;->c:Lw2/e$a;

    if-ne v0, p1, :cond_3

    move-object v2, p0

    :cond_3
    :goto_2
    return-object v2
.end method

.method public h()Z
    .locals 1

    instance-of v0, p0, Lj3/v0;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final l(Lw2/d;)Lw2/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/d<",
            "-TT;>;)",
            "Lw2/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lm3/c;

    invoke-direct {v0, p0, p1}, Lm3/c;-><init>(Lj3/m;Lw2/d;)V

    return-object v0
.end method

.method public final minusKey(Lw2/f$c;)Lw2/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/f$c<",
            "*>;)",
            "Lw2/f;"
        }
    .end annotation

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v1, p1, Lw2/b;

    if-eqz v1, :cond_3

    .line 3
    check-cast p1, Lw2/b;

    invoke-interface {p0}, Lw2/f$b;->getKey()Lw2/f$c;

    move-result-object v1

    .line 4
    invoke-static {v1, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_1

    .line 5
    iget-object v0, p1, Lw2/b;->d:Lw2/f$c;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1, p0}, Lw2/b;->a(Lw2/f$b;)Lw2/f$b;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p1, Lw2/g;->c:Lw2/g;

    goto :goto_2

    :cond_2
    move-object p1, p0

    goto :goto_2

    .line 7
    :cond_3
    sget-object v0, Lw2/e$a;->c:Lw2/e$a;

    if-ne v0, p1, :cond_2

    sget-object p1, Lw2/g;->c:Lw2/g;

    :goto_2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lj3/q;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
