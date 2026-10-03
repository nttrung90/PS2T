.class public final La1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/lifecycle/d0;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lc3/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc3/l<",
            "La1/a;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lc3/l<",
            "-",
            "La1/a;",
            "+TT;>;)V"
        }
    .end annotation

    sget-object v0, Landroidx/lifecycle/y$d;->d:Landroidx/lifecycle/y$d;

    const-string v1, "clazz"

    invoke-static {p1, v1}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La1/d;->a:Ljava/lang/Class;

    .line 3
    iput-object v0, p0, La1/d;->b:Lc3/l;

    return-void
.end method
