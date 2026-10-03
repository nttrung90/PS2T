.class public final Landroidx/fragment/app/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroidx/fragment/app/q0$b;

.field public final synthetic d:Landroidx/fragment/app/q0$b;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/q0$b;Landroidx/fragment/app/q0$b;ZLp/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/i;->c:Landroidx/fragment/app/q0$b;

    iput-object p2, p0, Landroidx/fragment/app/i;->d:Landroidx/fragment/app/q0$b;

    iput-boolean p3, p0, Landroidx/fragment/app/i;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->c:Landroidx/fragment/app/q0$b;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/q0$b;->c:Landroidx/fragment/app/n;

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/i;->d:Landroidx/fragment/app/q0$b;

    .line 4
    iget-object v1, v1, Landroidx/fragment/app/q0$b;->c:Landroidx/fragment/app/n;

    .line 5
    iget-boolean v2, p0, Landroidx/fragment/app/i;->e:Z

    .line 6
    sget-object v3, Landroidx/fragment/app/g0;->a:Landroidx/fragment/app/h0;

    if-eqz v2, :cond_0

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
