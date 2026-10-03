.class public final Ly1/d$b;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Ly1/d;",
        "Ly1/d$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ly1/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Ly1/d;",
            "Ly1/d$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly1/d$b;

    invoke-direct {v0}, Ly1/d$b;-><init>()V

    sput-object v0, Ly1/d$b;->a:Ly1/d$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-class v0, Ly1/d$d;

    const-string v1, "circularReveal"

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ly1/d;

    .line 2
    invoke-interface {p1}, Ly1/d;->getRevealInfo()Ly1/d$d;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ly1/d;

    check-cast p2, Ly1/d$d;

    .line 2
    invoke-interface {p1, p2}, Ly1/d;->setRevealInfo(Ly1/d$d;)V

    return-void
.end method
