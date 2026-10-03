.class public final Landroidx/lifecycle/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/m;


# static fields
.field public static final k:Landroidx/lifecycle/t;


# instance fields
.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Landroid/os/Handler;

.field public final h:Landroidx/lifecycle/n;

.field public i:Landroidx/lifecycle/t$a;

.field public j:Landroidx/lifecycle/t$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    sput-object v0, Landroidx/lifecycle/t;->k:Landroidx/lifecycle/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/lifecycle/t;->c:I

    .line 3
    iput v0, p0, Landroidx/lifecycle/t;->d:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/lifecycle/t;->e:Z

    .line 5
    iput-boolean v0, p0, Landroidx/lifecycle/t;->f:Z

    .line 6
    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0, p0}, Landroidx/lifecycle/n;-><init>(Landroidx/lifecycle/m;)V

    iput-object v0, p0, Landroidx/lifecycle/t;->h:Landroidx/lifecycle/n;

    .line 7
    new-instance v0, Landroidx/lifecycle/t$a;

    invoke-direct {v0, p0}, Landroidx/lifecycle/t$a;-><init>(Landroidx/lifecycle/t;)V

    iput-object v0, p0, Landroidx/lifecycle/t;->i:Landroidx/lifecycle/t$a;

    .line 8
    new-instance v0, Landroidx/lifecycle/t$b;

    invoke-direct {v0, p0}, Landroidx/lifecycle/t$b;-><init>(Landroidx/lifecycle/t;)V

    iput-object v0, p0, Landroidx/lifecycle/t;->j:Landroidx/lifecycle/t$b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/t;->d:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/t;->d:I

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Landroidx/lifecycle/t;->e:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/lifecycle/t;->h:Landroidx/lifecycle/n;

    sget-object v1, Landroidx/lifecycle/h$b;->ON_RESUME:Landroidx/lifecycle/h$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/h$b;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/lifecycle/t;->e:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/t;->g:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/lifecycle/t;->i:Landroidx/lifecycle/t$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/t;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/t;->c:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-boolean v0, p0, Landroidx/lifecycle/t;->f:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/lifecycle/t;->h:Landroidx/lifecycle/n;

    sget-object v1, Landroidx/lifecycle/h$b;->ON_START:Landroidx/lifecycle/h$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/h$b;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/lifecycle/t;->f:Z

    :cond_0
    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/h;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/t;->h:Landroidx/lifecycle/n;

    return-object v0
.end method
