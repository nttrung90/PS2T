.class public final Lw2/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lw2/f;Lw2/f;)Lw2/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lw2/g;->c:Lw2/g;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lw2/f$a$a;->d:Lw2/f$a$a;

    invoke-interface {p1, p0, v0}, Lw2/f;->fold(Ljava/lang/Object;Lc3/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw2/f;

    :goto_0
    return-object p0
.end method
