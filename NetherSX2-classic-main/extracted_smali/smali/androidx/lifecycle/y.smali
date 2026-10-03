.class public final Landroidx/lifecycle/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/lifecycle/y$b;

.field public static final b:Landroidx/lifecycle/y$c;

.field public static final c:Landroidx/lifecycle/y$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/y$b;

    invoke-direct {v0}, Landroidx/lifecycle/y$b;-><init>()V

    sput-object v0, Landroidx/lifecycle/y;->a:Landroidx/lifecycle/y$b;

    .line 2
    new-instance v0, Landroidx/lifecycle/y$c;

    invoke-direct {v0}, Landroidx/lifecycle/y$c;-><init>()V

    sput-object v0, Landroidx/lifecycle/y;->b:Landroidx/lifecycle/y$c;

    .line 3
    new-instance v0, Landroidx/lifecycle/y$a;

    invoke-direct {v0}, Landroidx/lifecycle/y$a;-><init>()V

    sput-object v0, Landroidx/lifecycle/y;->c:Landroidx/lifecycle/y$a;

    return-void
.end method

.method public static final a(La1/a;)Landroidx/lifecycle/x;
    .locals 9

    .line 1
    sget-object v0, Landroidx/lifecycle/y;->a:Landroidx/lifecycle/y$b;

    check-cast p0, La1/c;

    .line 2
    iget-object v1, p0, La1/a;->a:Ljava/util/LinkedHashMap;

    .line 3
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Le1/d;

    if-eqz v0, :cond_9

    .line 5
    sget-object v1, Landroidx/lifecycle/y;->b:Landroidx/lifecycle/y$c;

    .line 6
    iget-object v2, p0, La1/a;->a:Ljava/util/LinkedHashMap;

    .line 7
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Landroidx/lifecycle/g0;

    if-eqz v1, :cond_8

    .line 9
    sget-object v2, Landroidx/lifecycle/y;->c:Landroidx/lifecycle/y$a;

    .line 10
    iget-object v3, p0, La1/a;->a:Ljava/util/LinkedHashMap;

    .line 11
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 12
    check-cast v2, Landroid/os/Bundle;

    .line 13
    sget-object v3, Landroidx/lifecycle/e0$c$a$a;->a:Landroidx/lifecycle/e0$c$a$a;

    .line 14
    iget-object p0, p0, La1/a;->a:Ljava/util/LinkedHashMap;

    .line 15
    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_7

    .line 17
    invoke-interface {v0}, Le1/d;->getSavedStateRegistry()Le1/b;

    move-result-object v0

    invoke-virtual {v0}, Le1/b;->b()Le1/b$b;

    move-result-object v0

    instance-of v3, v0, Landroidx/lifecycle/z;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v0, Landroidx/lifecycle/z;

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_6

    .line 18
    invoke-static {v1}, Landroidx/lifecycle/y;->c(Landroidx/lifecycle/g0;)Landroidx/lifecycle/a0;

    move-result-object v1

    .line 19
    iget-object v3, v1, Landroidx/lifecycle/a0;->d:Ljava/util/LinkedHashMap;

    .line 20
    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/x;

    if-nez v3, :cond_5

    sget-object v3, Landroidx/lifecycle/x;->f:Landroidx/lifecycle/x$a;

    .line 21
    invoke-virtual {v0}, Landroidx/lifecycle/z;->b()V

    .line 22
    iget-object v5, v0, Landroidx/lifecycle/z;->c:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    invoke-virtual {v5, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v4

    .line 23
    :goto_1
    iget-object v6, v0, Landroidx/lifecycle/z;->c:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    invoke-virtual {v6, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 24
    :cond_2
    iget-object v6, v0, Landroidx/lifecycle/z;->c:Landroid/os/Bundle;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v6

    if-ne v6, v7, :cond_3

    goto :goto_2

    :cond_3
    move v7, v8

    :goto_2
    if-eqz v7, :cond_4

    .line 25
    iput-object v4, v0, Landroidx/lifecycle/z;->c:Landroid/os/Bundle;

    .line 26
    :cond_4
    invoke-virtual {v3, v5, v2}, Landroidx/lifecycle/x$a;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/x;

    move-result-object v3

    .line 27
    iget-object v0, v1, Landroidx/lifecycle/a0;->d:Ljava/util/LinkedHashMap;

    .line 28
    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v3

    .line 29
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "enableSavedStateHandles() wasn\'t called prior to createSavedStateHandle() call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Le1/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Le1/d;",
            ":",
            "Landroidx/lifecycle/g0;",
            ">(TT;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/h;->b()Landroidx/lifecycle/h$c;

    move-result-object v0

    const-string v1, "lifecycle.currentState"

    invoke-static {v0, v1}, Lv/d;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Landroidx/lifecycle/h$c;->d:Landroidx/lifecycle/h$c;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroidx/lifecycle/h$c;->e:Landroidx/lifecycle/h$c;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 3
    invoke-interface {p0}, Le1/d;->getSavedStateRegistry()Le1/b;

    move-result-object v0

    invoke-virtual {v0}, Le1/b;->b()Le1/b$b;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Landroidx/lifecycle/z;

    invoke-interface {p0}, Le1/d;->getSavedStateRegistry()Le1/b;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/g0;

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/z;-><init>(Le1/b;Landroidx/lifecycle/g0;)V

    .line 5
    invoke-interface {p0}, Le1/d;->getSavedStateRegistry()Le1/b;

    move-result-object v1

    const-string v2, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v1, v2, v0}, Le1/b;->d(Ljava/lang/String;Le1/b$b;)V

    .line 6
    invoke-interface {p0}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/h;

    move-result-object p0

    new-instance v1, Landroidx/lifecycle/SavedStateHandleAttacher;

    invoke-direct {v1, v0}, Landroidx/lifecycle/SavedStateHandleAttacher;-><init>(Landroidx/lifecycle/z;)V

    invoke-virtual {p0, v1}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/l;)V

    :cond_2
    return-void

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(Landroidx/lifecycle/g0;)Landroidx/lifecycle/a0;
    .locals 5

    const-class v0, Landroidx/lifecycle/a0;

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lv/d;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {v0}, Ld3/j;->a(Ljava/lang/Class;)Lg3/b;

    move-result-object v2

    .line 3
    new-instance v3, La1/d;

    .line 4
    check-cast v2, Ld3/c;

    invoke-interface {v2}, Ld3/c;->a()Ljava/lang/Class;

    move-result-object v2

    .line 5
    invoke-direct {v3, v2}, La1/d;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v2, La1/b;

    const/4 v3, 0x0

    new-array v3, v3, [La1/d;

    .line 7
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    check-cast v1, [La1/d;

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [La1/d;

    invoke-direct {v2, v1}, La1/b;-><init>([La1/d;)V

    .line 9
    new-instance v1, Landroidx/lifecycle/e0;

    .line 10
    invoke-interface {p0}, Landroidx/lifecycle/g0;->getViewModelStore()Landroidx/lifecycle/f0;

    move-result-object v3

    const-string v4, "owner.viewModelStore"

    invoke-static {v3, v4}, Lv/d;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    instance-of v4, p0, Landroidx/lifecycle/g;

    if-eqz v4, :cond_0

    .line 12
    check-cast p0, Landroidx/lifecycle/g;

    invoke-interface {p0}, Landroidx/lifecycle/g;->getDefaultViewModelCreationExtras()La1/a;

    move-result-object p0

    const-string v4, "{\n        owner.defaultV\u2026ModelCreationExtras\n    }"

    invoke-static {p0, v4}, Lv/d;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    sget-object p0, La1/a$a;->b:La1/a$a;

    .line 14
    :goto_0
    invoke-direct {v1, v3, v2, p0}, Landroidx/lifecycle/e0;-><init>(Landroidx/lifecycle/f0;Landroidx/lifecycle/e0$b;La1/a;)V

    const-string p0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    .line 15
    invoke-virtual {v1, p0, v0}, Landroidx/lifecycle/e0;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/d0;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/a0;

    return-object p0
.end method
