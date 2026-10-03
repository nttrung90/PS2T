.class public final Lj3/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj3/f0;


# instance fields
.field public final c:Lj3/p0;


# direct methods
.method public constructor <init>(Lj3/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj3/e0;->c:Lj3/p0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lj3/p0;
    .locals 1

    iget-object v0, p0, Lj3/e0;->c:Lj3/p0;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
