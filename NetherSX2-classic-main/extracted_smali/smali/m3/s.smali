.class public final Lm3/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw2/f;

.field public final b:[Ljava/lang/Object;

.field public final c:[Lj3/t0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lj3/t0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Lw2/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm3/s;->a:Lw2/f;

    .line 3
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lm3/s;->b:[Ljava/lang/Object;

    .line 4
    new-array p1, p2, [Lj3/t0;

    iput-object p1, p0, Lm3/s;->c:[Lj3/t0;

    return-void
.end method
