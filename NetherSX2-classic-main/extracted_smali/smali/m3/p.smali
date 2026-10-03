.class public final Lm3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/p;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Le/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lm3/p;->a:Le/p;

    return-void
.end method

.method public static final a(Lw2/f;Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lm3/p;->a:Le/p;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Lm3/s;

    if-eqz v0, :cond_2

    .line 3
    check-cast p1, Lm3/s;

    .line 4
    iget-object p0, p1, Lm3/s;->c:[Lj3/t0;

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_3

    :goto_0
    add-int/lit8 v0, p0, -0x1

    .line 5
    iget-object v1, p1, Lm3/s;->c:[Lj3/t0;

    aget-object v1, v1, p0

    invoke-static {v1}, Lv/d;->e(Ljava/lang/Object;)V

    iget-object v2, p1, Lm3/s;->b:[Ljava/lang/Object;

    aget-object p0, v2, p0

    invoke-interface {v1, p0}, Lj3/t0;->b(Ljava/lang/Object;)V

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move p0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 6
    sget-object v1, Lm3/p$b;->d:Lm3/p$b;

    invoke-interface {p0, v0, v1}, Lw2/f;->fold(Ljava/lang/Object;Lc3/p;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lj3/t0;

    .line 7
    invoke-interface {p0, p1}, Lj3/t0;->b(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static final b(Lw2/f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lm3/p$a;->d:Lm3/p$a;

    invoke-interface {p0, v0, p1}, Lw2/f;->fold(Ljava/lang/Object;Lc3/p;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lv/d;->e(Ljava/lang/Object;)V

    :cond_0
    if-ne p1, v0, :cond_1

    .line 3
    sget-object p0, Lm3/p;->a:Le/p;

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Lm3/s;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lm3/s;-><init>(Lw2/f;I)V

    sget-object p1, Lm3/p$c;->d:Lm3/p$c;

    invoke-interface {p0, v0, p1}, Lw2/f;->fold(Ljava/lang/Object;Lc3/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_2
    check-cast p1, Lj3/t0;

    .line 7
    invoke-interface {p1, p0}, Lj3/t0;->m(Lw2/f;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
