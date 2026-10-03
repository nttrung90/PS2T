.class public final Le2/d$a;
.super Ln2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ln2/i;)V
    .locals 0

    invoke-direct {p0, p1}, Ln2/f;-><init>(Ln2/i;)V

    return-void
.end method


# virtual methods
.method public final isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
