.class public final Li1/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Li1/v;

.field public static final b:Li1/r$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Li1/w;

    invoke-direct {v0}, Li1/w;-><init>()V

    sput-object v0, Li1/r;->a:Li1/v;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Li1/v;

    invoke-direct {v0}, Li1/v;-><init>()V

    sput-object v0, Li1/r;->a:Li1/v;

    .line 4
    :goto_0
    new-instance v0, Li1/r$a;

    invoke-direct {v0}, Li1/r$a;-><init>()V

    sput-object v0, Li1/r;->b:Li1/r$a;

    .line 5
    new-instance v0, Li1/r$b;

    const-class v1, Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Li1/r$b;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static a(Landroid/view/View;)F
    .locals 1

    sget-object v0, Li1/r;->a:Li1/v;

    invoke-virtual {v0, p0}, Li1/s;->z(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/View;IIII)V
    .locals 6

    sget-object v0, Li1/r;->a:Li1/v;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Li1/u;->D(Landroid/view/View;IIII)V

    return-void
.end method

.method public static c(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Li1/r;->a:Li1/v;

    invoke-virtual {v0, p0, p1}, Li1/s;->A(Landroid/view/View;F)V

    return-void
.end method

.method public static d(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Li1/r;->a:Li1/v;

    invoke-virtual {v0, p0, p1}, Li1/v;->u(Landroid/view/View;I)V

    return-void
.end method
