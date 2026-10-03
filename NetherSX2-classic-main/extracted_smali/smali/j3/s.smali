.class public final Lj3/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lj3/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "kotlinx.coroutines.main.delay"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln2/e;->F(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lj3/r;->i:Lj3/r;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lj3/x;->a:Ln3/c;

    .line 4
    sget-object v0, Lm3/j;->a:Lj3/o0;

    .line 5
    invoke-virtual {v0}, Lj3/o0;->j()Lj3/o0;

    .line 6
    instance-of v1, v0, Lj3/t;

    if-nez v1, :cond_1

    sget-object v0, Lj3/r;->i:Lj3/r;

    goto :goto_0

    :cond_1
    check-cast v0, Lj3/t;

    .line 7
    :goto_0
    sput-object v0, Lj3/s;->a:Lj3/t;

    return-void
.end method
