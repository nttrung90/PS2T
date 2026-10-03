.class public final Landroidx/lifecycle/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/b$b;


# instance fields
.field public final a:Le1/b;

.field public b:Z

.field public c:Landroid/os/Bundle;

.field public final d:Lu2/e;


# direct methods
.method public constructor <init>(Le1/b;Landroidx/lifecycle/g0;)V
    .locals 1

    const-string v0, "savedStateRegistry"

    invoke-static {p1, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelStoreOwner"

    invoke-static {p2, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/z;->a:Le1/b;

    .line 3
    new-instance p1, Landroidx/lifecycle/z$a;

    invoke-direct {p1, p2}, Landroidx/lifecycle/z$a;-><init>(Landroidx/lifecycle/g0;)V

    .line 4
    new-instance p2, Lu2/e;

    invoke-direct {p2, p1}, Lu2/e;-><init>(Lc3/a;)V

    .line 5
    iput-object p2, p0, Landroidx/lifecycle/z;->d:Lu2/e;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/lifecycle/z;->c:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4
    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/z;->d:Lu2/e;

    invoke-virtual {v1}, Lu2/e;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/a0;

    .line 5
    iget-object v1, v1, Landroidx/lifecycle/a0;->d:Ljava/util/LinkedHashMap;

    .line 6
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/x;

    .line 8
    iget-object v2, v2, Landroidx/lifecycle/x;->e:Le1/b$b;

    .line 9
    invoke-interface {v2}, Le1/b$b;->a()Landroid/os/Bundle;

    move-result-object v2

    .line 10
    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {v2, v4}, Lv/d;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 11
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Landroidx/lifecycle/z;->b:Z

    return-object v0
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/z;->b:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/z;->a:Le1/b;

    const-string v1, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v0, v1}, Le1/b;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/z;->c:Landroid/os/Bundle;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/lifecycle/z;->b:Z

    .line 4
    iget-object v0, p0, Landroidx/lifecycle/z;->d:Lu2/e;

    invoke-virtual {v0}, Lu2/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/a0;

    :cond_0
    return-void
.end method
