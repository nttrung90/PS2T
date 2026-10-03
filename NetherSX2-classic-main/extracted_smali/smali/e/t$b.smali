.class public final Le/t$b;
.super Ln2/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o0:Le/t;


# direct methods
.method public constructor <init>(Le/t;)V
    .locals 0

    iput-object p1, p0, Le/t$b;->o0:Le/t;

    invoke-direct {p0}, Ln2/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/t$b;->o0:Le/t;

    const/4 v1, 0x0

    iput-object v1, v0, Le/t;->t:Li/g;

    .line 2
    iget-object v0, v0, Le/t;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
