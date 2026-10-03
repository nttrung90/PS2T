.class public final Ly1/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Ly1/d$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ly1/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Ly1/d$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ly1/d$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly1/d$a;

    invoke-direct {v0}, Ly1/d$a;-><init>()V

    sput-object v0, Ly1/d$a;->b:Ly1/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ly1/d$d;

    .line 3
    invoke-direct {v0}, Ly1/d$d;-><init>()V

    .line 4
    iput-object v0, p0, Ly1/d$a;->a:Ly1/d$d;

    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p2, Ly1/d$d;

    check-cast p3, Ly1/d$d;

    .line 2
    iget-object v0, p0, Ly1/d$a;->a:Ly1/d$d;

    iget v1, p2, Ly1/d$d;->a:F

    iget v2, p3, Ly1/d$d;->a:F

    .line 3
    invoke-static {v1, v2, p1}, Ln2/e;->w(FFF)F

    move-result v1

    iget v2, p2, Ly1/d$d;->b:F

    iget v3, p3, Ly1/d$d;->b:F

    .line 4
    invoke-static {v2, v3, p1}, Ln2/e;->w(FFF)F

    move-result v2

    iget p2, p2, Ly1/d$d;->c:F

    iget p3, p3, Ly1/d$d;->c:F

    .line 5
    invoke-static {p2, p3, p1}, Ln2/e;->w(FFF)F

    move-result p1

    .line 6
    iput v1, v0, Ly1/d$d;->a:F

    .line 7
    iput v2, v0, Ly1/d$d;->b:F

    .line 8
    iput p1, v0, Ly1/d$d;->c:F

    .line 9
    iget-object p1, p0, Ly1/d$a;->a:Ly1/d$d;

    return-object p1
.end method
