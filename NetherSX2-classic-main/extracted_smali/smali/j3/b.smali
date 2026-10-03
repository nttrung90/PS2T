.class public final Lj3/b;
.super Lj3/b0;
.source "SourceFile"


# instance fields
.field public final i:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj3/b0;-><init>()V

    .line 2
    iput-object p1, p0, Lj3/b;->i:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final t()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lj3/b;->i:Ljava/lang/Thread;

    return-object v0
.end method
