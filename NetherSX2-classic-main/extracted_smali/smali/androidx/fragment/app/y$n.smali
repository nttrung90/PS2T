.class public final Landroidx/fragment/app/y$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/y$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "n"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final synthetic c:Landroidx/fragment/app/y;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/y;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/y$n;->c:Landroidx/fragment/app/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Landroidx/fragment/app/y$n;->a:I

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Landroidx/fragment/app/y$n;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y$n;->c:Landroidx/fragment/app/y;

    iget-object v0, v0, Landroidx/fragment/app/y;->x:Landroidx/fragment/app/n;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/fragment/app/y$n;->a:I

    if-gez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/n;->getChildFragmentManager()Landroidx/fragment/app/y;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/y;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/y$n;->c:Landroidx/fragment/app/y;

    iget v1, p0, Landroidx/fragment/app/y$n;->a:I

    iget v2, p0, Landroidx/fragment/app/y$n;->b:I

    invoke-virtual {v0, p1, p2, v1, v2}, Landroidx/fragment/app/y;->U(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result p1

    return p1
.end method
