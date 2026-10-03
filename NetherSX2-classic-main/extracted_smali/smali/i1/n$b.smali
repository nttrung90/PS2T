.class public final Li1/n$b;
.super Li1/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Li1/n;


# direct methods
.method public constructor <init>(Li1/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li1/l;-><init>()V

    .line 2
    iput-object p1, p0, Li1/n$b;->a:Li1/n;

    return-void
.end method


# virtual methods
.method public final b(Li1/i;)V
    .locals 1

    .line 1
    iget-object p1, p0, Li1/n$b;->a:Li1/n;

    iget-boolean v0, p1, Li1/n;->C:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Li1/i;->G()V

    .line 3
    iget-object p1, p0, Li1/n$b;->a:Li1/n;

    const/4 v0, 0x1

    iput-boolean v0, p1, Li1/n;->C:Z

    :cond_0
    return-void
.end method

.method public final c(Li1/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li1/n$b;->a:Li1/n;

    iget v1, v0, Li1/n;->B:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Li1/n;->B:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Li1/n;->C:Z

    .line 3
    invoke-virtual {v0}, Li1/i;->n()V

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Li1/i;->w(Li1/i$d;)Li1/i;

    return-void
.end method
