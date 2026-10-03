.class public final Le/k$a;
.super Ln2/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/k;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o0:Le/k;


# direct methods
.method public constructor <init>(Le/k;)V
    .locals 0

    iput-object p1, p0, Le/k$a;->o0:Le/k;

    invoke-direct {p0}, Ln2/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/k$a;->o0:Le/k;

    iget-object v0, v0, Le/k;->c:Le/h;

    iget-object v0, v0, Le/h;->r:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Le/k$a;->o0:Le/k;

    iget-object v0, v0, Le/k;->c:Le/h;

    iget-object v0, v0, Le/h;->u:Lj0/h0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj0/h0;->d(Lj0/i0;)Lj0/h0;

    .line 3
    iget-object v0, p0, Le/k$a;->o0:Le/k;

    iget-object v0, v0, Le/k;->c:Le/h;

    iput-object v1, v0, Le/h;->u:Lj0/h0;

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Le/k$a;->o0:Le/k;

    iget-object v0, v0, Le/k;->c:Le/h;

    iget-object v0, v0, Le/h;->r:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
