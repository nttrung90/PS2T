.class public final Landroidx/appcompat/widget/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Landroidx/appcompat/widget/l;->a:Landroid/view/View;

    .line 6
    new-instance v0, Lw0/a;

    invoke-direct {v0, p1}, Lw0/a;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Landroidx/appcompat/widget/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/l;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Landroidx/appcompat/widget/l;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Ljava/lang/Object;

    check-cast v0, Lw0/a;

    .line 3
    iget-object v0, v0, Lw0/a;->a:Lw0/a$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    instance-of v0, p1, Lw0/e;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lw0/e;

    invoke-direct {v0, p1}, Lw0/e;-><init>(Landroid/text/method/KeyListener;)V

    move-object p1, v0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final b(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Lv/d;->m:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xe

    .line 3
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/l;->d(Z)V

    return-void

    :catchall_0
    move-exception p2

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    throw p2
.end method

.method public final c(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Ljava/lang/Object;

    check-cast v0, Lw0/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lw0/a;->a:Lw0/a$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    instance-of v1, p1, Lw0/c;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Lw0/c;

    iget-object v0, v0, Lw0/a$a;->a:Landroid/widget/EditText;

    invoke-direct {v1, v0, p1, p2}, Lw0/c;-><init>(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public final d(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Ljava/lang/Object;

    check-cast v0, Lw0/a;

    .line 2
    iget-object v0, v0, Lw0/a;->a:Lw0/a$a;

    .line 3
    iget-object v0, v0, Lw0/a$a;->b:Lw0/g;

    .line 4
    iget-boolean v1, v0, Lw0/g;->f:Z

    if-eq v1, p1, :cond_1

    .line 5
    iget-object v1, v0, Lw0/g;->e:Lw0/g$a;

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Landroidx/emoji2/text/d;->a()Landroidx/emoji2/text/d;

    move-result-object v1

    iget-object v2, v0, Lw0/g;->e:Lw0/g$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "initCallback cannot be null"

    .line 7
    invoke-static {v2, v3}, Ln2/e;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v3, v1, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 9
    :try_start_0
    iget-object v3, v1, Landroidx/emoji2/text/d;->b:Lp/c;

    invoke-virtual {v3, v2}, Lp/c;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object v1, v1, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, v1, Landroidx/emoji2/text/d;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    throw p1

    .line 12
    :cond_0
    :goto_0
    iput-boolean p1, v0, Lw0/g;->f:Z

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, v0, Lw0/g;->c:Landroid/widget/EditText;

    invoke-static {}, Landroidx/emoji2/text/d;->a()Landroidx/emoji2/text/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/d;->b()I

    move-result v0

    invoke-static {p1, v0}, Lw0/g;->a(Landroid/widget/EditText;I)V

    :cond_1
    return-void
.end method
