.class public final Lm3/p$c;
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
        "Lm3/s;",
        "Lw2/f$b;",
        "Lm3/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lm3/p$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm3/p$c;

    invoke-direct {v0}, Lm3/p$c;-><init>()V

    sput-object v0, Lm3/p$c;->d:Lm3/p$c;

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
    .locals 3

    .line 1
    check-cast p1, Lm3/s;

    check-cast p2, Lw2/f$b;

    .line 2
    instance-of v0, p2, Lj3/t0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Lj3/t0;

    iget-object v0, p1, Lm3/s;->a:Lw2/f;

    invoke-interface {p2, v0}, Lj3/t0;->m(Lw2/f;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lm3/s;->b:[Ljava/lang/Object;

    iget v2, p1, Lm3/s;->d:I

    aput-object v0, v1, v2

    .line 5
    iget-object v0, p1, Lm3/s;->c:[Lj3/t0;

    add-int/lit8 v1, v2, 0x1

    iput v1, p1, Lm3/s;->d:I

    aput-object p2, v0, v2

    :cond_0
    return-object p1
.end method
