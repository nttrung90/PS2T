.class public Lo3/b;
.super Lo3/f;
.source "SourceFile"

# interfaces
.implements Lo3/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo3/f<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lo3/k;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?<!\\\\)\\$\\{(([^\\[\\}]+)(\\[([0-9]+)\\])?)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo3/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    check-cast p2, Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, p1, p2}, Lo3/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
