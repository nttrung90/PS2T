.class public final Lm3/p$b;
.super Ld3/f;
.source "SourceFile"

# interfaces
.implements Lc3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm3/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/f;",
        "Lc3/p<",
        "Lj3/t0<",
        "*>;",
        "Lw2/f$b;",
        "Lj3/t0<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final d:Lm3/p$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm3/p$b;

    invoke-direct {v0}, Lm3/p$b;-><init>()V

    sput-object v0, Lm3/p$b;->d:Lm3/p$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ld3/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lj3/t0;

    check-cast p2, Lw2/f$b;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of p1, p2, Lj3/t0;

    if-eqz p1, :cond_1

    check-cast p2, Lj3/t0;

    move-object p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
