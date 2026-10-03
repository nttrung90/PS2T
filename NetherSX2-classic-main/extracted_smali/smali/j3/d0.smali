.class public abstract Lj3/d0;
.super Lj3/m;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lj3/m;->c:Lj3/m$a;

    const-string v1, "baseKey"

    .line 2
    invoke-static {v0, v1}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj3/m;-><init>()V

    return-void
.end method
