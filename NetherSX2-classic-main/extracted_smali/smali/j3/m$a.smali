.class public final Lj3/m$a;
.super Lw2/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj3/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw2/b<",
        "Lw2/e;",
        "Lj3/m;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lw2/e$a;->c:Lw2/e$a;

    .line 2
    sget-object v1, Lj3/m$a$a;->d:Lj3/m$a$a;

    .line 3
    invoke-direct {p0, v0, v1}, Lw2/b;-><init>(Lw2/f$c;Lc3/l;)V

    return-void
.end method
