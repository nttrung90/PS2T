.class public abstract Lr0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Lr0/a;
.end method

.method public abstract b(Ljava/lang/String;)Lr0/a;
.end method

.method public abstract c()Z
.end method

.method public final d(Ljava/lang/String;)Lr0/a;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lr0/a;->i()[Lr0/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lr0/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Landroid/net/Uri;
.end method

.method public abstract g()Z
.end method

.method public abstract h()J
.end method

.method public abstract i()[Lr0/a;
.end method
