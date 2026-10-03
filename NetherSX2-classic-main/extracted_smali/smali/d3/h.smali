.class public Ld3/h;
.super Ld3/i;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Ld3/i;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Lm3/f$b;

    .line 2
    iget-object v0, v0, Ld3/b;->d:Ljava/lang/Object;

    invoke-static {v0}, Lj3/q;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lg3/a;
    .locals 1

    sget-object v0, Ld3/j;->a:Ld3/k;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
