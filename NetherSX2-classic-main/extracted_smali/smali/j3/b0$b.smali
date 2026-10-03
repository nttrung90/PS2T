.class public final Lj3/b0$b;
.super Lm3/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj3/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/q<",
        "Lj3/b0$a;",
        ">;"
    }
.end annotation


# instance fields
.field public b:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm3/q;-><init>()V

    .line 2
    iput-wide p1, p0, Lj3/b0$b;->b:J

    return-void
.end method
