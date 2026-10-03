.class public final Lf3/a;
.super Le3/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le3/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Random;
    .locals 2

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-string v1, "current()"

    invoke-static {v0, v1}, Lv/d;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
