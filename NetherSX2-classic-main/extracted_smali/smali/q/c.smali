.class public final Lq/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lm3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm3/a;"
        }
    .end annotation
.end field

.field public b:Lm3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm3/a;"
        }
    .end annotation
.end field

.field public c:[Lq/g;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 2
    new-instance v1, Lm3/a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lm3/a;-><init>(II)V

    iput-object v1, p0, Lq/c;->a:Lm3/a;

    .line 3
    new-instance v1, Lm3/a;

    invoke-direct {v1, v0, v2}, Lm3/a;-><init>(II)V

    iput-object v1, p0, Lq/c;->b:Lm3/a;

    const/16 v0, 0x20

    new-array v0, v0, [Lq/g;

    .line 4
    iput-object v0, p0, Lq/c;->c:[Lq/g;

    return-void
.end method
