.class public final Landroidx/lifecycle/y$d;
.super Ld3/f;
.source "SourceFile"

# interfaces
.implements Lc3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/y;->c(Landroidx/lifecycle/g0;)Landroidx/lifecycle/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/f;",
        "Lc3/l<",
        "La1/a;",
        "Landroidx/lifecycle/a0;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Landroidx/lifecycle/y$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/y$d;

    invoke-direct {v0}, Landroidx/lifecycle/y$d;-><init>()V

    sput-object v0, Landroidx/lifecycle/y$d;->d:Landroidx/lifecycle/y$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ld3/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, La1/a;

    const-string v0, "$this$initializer"

    .line 2
    invoke-static {p1, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1}, Landroidx/lifecycle/a0;-><init>()V

    return-object p1
.end method
