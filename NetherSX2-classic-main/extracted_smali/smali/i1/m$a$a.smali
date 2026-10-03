.class public final Li1/m$a$a;
.super Li1/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li1/m$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp/a;

.field public final synthetic b:Li1/m$a;


# direct methods
.method public constructor <init>(Li1/m$a;Lp/a;)V
    .locals 0

    iput-object p1, p0, Li1/m$a$a;->b:Li1/m$a;

    iput-object p2, p0, Li1/m$a$a;->a:Lp/a;

    invoke-direct {p0}, Li1/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Li1/i;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li1/m$a$a;->a:Lp/a;

    iget-object v1, p0, Li1/m$a$a;->b:Li1/m$a;

    iget-object v1, v1, Li1/m$a;->d:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lp/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p1, p0}, Li1/i;->w(Li1/i$d;)Li1/i;

    return-void
.end method
