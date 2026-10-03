.class public abstract Landroidx/fragment/app/t;
.super Landroidx/fragment/app/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/q;"
    }
.end annotation


# instance fields
.field public final c:Landroid/app/Activity;

.field public final d:Landroid/content/Context;

.field public final e:Landroid/os/Handler;

.field public final f:Landroidx/fragment/app/z;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/o;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/q;-><init>()V

    .line 3
    new-instance v1, Landroidx/fragment/app/z;

    invoke-direct {v1}, Landroidx/fragment/app/z;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/t;->f:Landroidx/fragment/app/z;

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/t;->c:Landroid/app/Activity;

    const-string v1, "context == null"

    .line 5
    invoke-static {p1, v1}, Ln2/e;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/fragment/app/t;->d:Landroid/content/Context;

    .line 6
    iput-object v0, p0, Landroidx/fragment/app/t;->e:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract u(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract v()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract w()Landroid/view/LayoutInflater;
.end method

.method public abstract x(Ljava/lang/String;)Z
.end method

.method public abstract y()V
.end method
