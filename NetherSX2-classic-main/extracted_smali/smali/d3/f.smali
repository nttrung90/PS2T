.class public abstract Ld3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/e;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld3/e<",
        "TR;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld3/f;->c:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Ld3/j;->a:Ld3/k;

    .line 2
    invoke-virtual {v0, p0}, Ld3/k;->a(Ld3/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "renderLambdaToString(this)"

    .line 3
    invoke-static {v0, v1}, Lv/d;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
