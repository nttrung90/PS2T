.class public final Li2/b$c;
.super Lj1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li2/b;


# direct methods
.method public constructor <init>(Li2/b;)V
    .locals 0

    iput-object p1, p0, Li2/b$c;->a:Li2/b;

    invoke-direct {p0}, Lj1/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Li2/b$c;->a:Li2/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li2/b;->setIndeterminate(Z)V

    .line 2
    iget-object v0, p0, Li2/b$c;->a:Li2/b;

    .line 3
    iget v1, v0, Li2/b;->d:I

    .line 4
    iget-boolean v2, v0, Li2/b;->e:Z

    .line 5
    invoke-virtual {v0, v1, v2}, Li2/b;->a(IZ)V

    return-void
.end method
