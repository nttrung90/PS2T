.class public final Li1/n$a;
.super Li1/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li1/n;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/i;


# direct methods
.method public constructor <init>(Li1/i;)V
    .locals 0

    iput-object p1, p0, Li1/n$a;->a:Li1/i;

    invoke-direct {p0}, Li1/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Li1/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li1/n$a;->a:Li1/i;

    invoke-virtual {v0}, Li1/i;->z()V

    .line 2
    invoke-virtual {p1, p0}, Li1/i;->w(Li1/i$d;)Li1/i;

    return-void
.end method
