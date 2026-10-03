.class public final Landroidx/recyclerview/widget/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static d:Lm3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm3/a;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Landroidx/recyclerview/widget/RecyclerView$j$c;

.field public c:Landroidx/recyclerview/widget/RecyclerView$j$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lm3/a;

    const/16 v1, 0x14

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lm3/a;-><init>(II)V

    sput-object v0, Landroidx/recyclerview/widget/d0$a;->d:Lm3/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroidx/recyclerview/widget/d0$a;
    .locals 1

    .line 1
    sget-object v0, Landroidx/recyclerview/widget/d0$a;->d:Lm3/a;

    invoke-virtual {v0}, Lm3/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/d0$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/d0$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/d0$a;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static b(Landroidx/recyclerview/widget/d0$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/recyclerview/widget/d0$a;->a:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/recyclerview/widget/d0$a;->b:Landroidx/recyclerview/widget/RecyclerView$j$c;

    .line 3
    iput-object v0, p0, Landroidx/recyclerview/widget/d0$a;->c:Landroidx/recyclerview/widget/RecyclerView$j$c;

    .line 4
    sget-object v0, Landroidx/recyclerview/widget/d0$a;->d:Lm3/a;

    invoke-virtual {v0, p0}, Lm3/a;->b(Ljava/lang/Object;)Z

    return-void
.end method
