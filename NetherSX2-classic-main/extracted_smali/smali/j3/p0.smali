.class public final Lj3/p0;
.super Lm3/e;
.source "SourceFile"

# interfaces
.implements Lj3/f0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lm3/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lj3/p0;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lm3/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
