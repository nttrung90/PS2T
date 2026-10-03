.class public abstract Ln3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public c:J

.field public d:Ln3/h;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    sget-object v0, Ln3/k;->f:Ln3/i;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Ln3/g;->c:J

    .line 7
    iput-object v0, p0, Ln3/g;->d:Ln3/h;

    return-void
.end method

.method public constructor <init>(JLn3/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Ln3/g;->c:J

    .line 3
    iput-object p3, p0, Ln3/g;->d:Ln3/h;

    return-void
.end method
