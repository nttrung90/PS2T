.class public final Landroidx/lifecycle/u;
.super Landroidx/lifecycle/d;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Landroidx/lifecycle/t;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/t;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/u;->this$0:Landroidx/lifecycle/t;

    invoke-direct {p0}, Landroidx/lifecycle/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p2, v0, :cond_0

    .line 2
    sget p2, Landroidx/lifecycle/v;->d:I

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/v;

    .line 4
    iget-object p2, p0, Landroidx/lifecycle/u;->this$0:Landroidx/lifecycle/t;

    iget-object p2, p2, Landroidx/lifecycle/t;->j:Landroidx/lifecycle/t$b;

    .line 5
    iput-object p2, p1, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/v$a;

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/u;->this$0:Landroidx/lifecycle/t;

    .line 2
    iget v0, p1, Landroidx/lifecycle/t;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroidx/lifecycle/t;->d:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Landroidx/lifecycle/t;->g:Landroid/os/Handler;

    iget-object p1, p1, Landroidx/lifecycle/t;->i:Landroidx/lifecycle/t$a;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    new-instance p2, Landroidx/lifecycle/u$a;

    invoke-direct {p2, p0}, Landroidx/lifecycle/u$a;-><init>(Landroidx/lifecycle/u;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/u;->this$0:Landroidx/lifecycle/t;

    .line 2
    iget v0, p1, Landroidx/lifecycle/t;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Landroidx/lifecycle/t;->c:I

    if-nez v0, :cond_0

    .line 3
    iget-boolean v0, p1, Landroidx/lifecycle/t;->e:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Landroidx/lifecycle/t;->h:Landroidx/lifecycle/n;

    sget-object v2, Landroidx/lifecycle/h$b;->ON_STOP:Landroidx/lifecycle/h$b;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/n;->f(Landroidx/lifecycle/h$b;)V

    .line 5
    iput-boolean v1, p1, Landroidx/lifecycle/t;->f:Z

    :cond_0
    return-void
.end method
