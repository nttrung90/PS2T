.class public final Li1/a;
.super Li1/n;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Li1/n;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Li1/n;->A:Z

    .line 3
    new-instance v0, Li1/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Li1/c;-><init>(I)V

    invoke-virtual {p0, v0}, Li1/n;->I(Li1/i;)Li1/n;

    new-instance v0, Li1/b;

    invoke-direct {v0}, Li1/b;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Li1/n;->I(Li1/i;)Li1/n;

    new-instance v0, Li1/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Li1/c;-><init>(I)V

    .line 5
    invoke-virtual {p0, v0}, Li1/n;->I(Li1/i;)Li1/n;

    return-void
.end method
