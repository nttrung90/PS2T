.class public final Li2/b$d;
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

    iput-object p1, p0, Li2/b$d;->a:Li2/b;

    invoke-direct {p0}, Lj1/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Li2/b$d;->a:Li2/b;

    .line 2
    iget-boolean v1, v0, Li2/b;->i:Z

    if-nez v1, :cond_0

    .line 3
    iget v1, v0, Li2/b;->j:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
