.class public final Landroidx/fragment/app/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final c:Landroidx/fragment/app/y;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/y;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    .line 2
    const-class v0, Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Landroidx/fragment/app/FragmentContainerView;

    iget-object p2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/y;

    invoke-direct {p1, p3, p4, p2}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/fragment/app/y;)V

    return-object p1

    :cond_0
    const-string v0, "fragment"

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    const-string p2, "class"

    .line 5
    invoke-interface {p4, v0, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    sget-object v1, Ln2/e;->m0:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p2, :cond_2

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 8
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/4 v6, 0x2

    .line 9
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_12

    .line 11
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v8, Landroidx/fragment/app/s;->a:Lp/g;

    .line 12
    :try_start_0
    invoke-static {v1, p2}, Landroidx/fragment/app/s;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 13
    const-class v8, Landroidx/fragment/app/n;

    invoke-virtual {v8, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    goto/16 :goto_4

    :cond_3
    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    :cond_4
    if-ne v2, v4, :cond_6

    if-ne v5, v4, :cond_6

    if-eqz v7, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    if-eq v5, v4, :cond_7

    .line 16
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/y;

    invoke-virtual {v0, v5}, Landroidx/fragment/app/y;->E(I)Landroidx/fragment/app/n;

    move-result-object v0

    :cond_7
    if-nez v0, :cond_8

    if-eqz v7, :cond_8

    .line 17
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/y;

    invoke-virtual {v0, v7}, Landroidx/fragment/app/y;->F(Ljava/lang/String;)Landroidx/fragment/app/n;

    move-result-object v0

    :cond_8
    if-nez v0, :cond_9

    if-eq v2, v4, :cond_9

    .line 18
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/y;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/y;->E(I)Landroidx/fragment/app/n;

    move-result-object v0

    :cond_9
    const-string v1, "Fragment "

    const-string v4, "FragmentManager"

    if-nez v0, :cond_b

    .line 19
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/y;

    invoke-virtual {v0}, Landroidx/fragment/app/y;->H()Landroidx/fragment/app/s;

    move-result-object v0

    .line 20
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    .line 21
    invoke-virtual {v0, p3, p2}, Landroidx/fragment/app/s;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/n;

    move-result-object v0

    .line 22
    iput-boolean v3, v0, Landroidx/fragment/app/n;->p:Z

    if-eqz v5, :cond_a

    move p3, v5

    goto :goto_2

    :cond_a
    move p3, v2

    .line 23
    :goto_2
    iput p3, v0, Landroidx/fragment/app/n;->y:I

    .line 24
    iput v2, v0, Landroidx/fragment/app/n;->z:I

    .line 25
    iput-object v7, v0, Landroidx/fragment/app/n;->A:Ljava/lang/String;

    .line 26
    iput-boolean v3, v0, Landroidx/fragment/app/n;->q:Z

    .line 27
    iget-object p3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/y;

    iput-object p3, v0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    .line 28
    iget-object p3, p3, Landroidx/fragment/app/y;->u:Landroidx/fragment/app/t;

    .line 29
    iput-object p3, v0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    .line 30
    iget-object p3, p3, Landroidx/fragment/app/t;->d:Landroid/content/Context;

    .line 31
    iget-object v2, v0, Landroidx/fragment/app/n;->d:Landroid/os/Bundle;

    invoke-virtual {v0, p3, p4, v2}, Landroidx/fragment/app/n;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 32
    iget-object p3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/y;

    invoke-virtual {p3, v0}, Landroidx/fragment/app/y;->a(Landroidx/fragment/app/n;)Landroidx/fragment/app/e0;

    move-result-object p3

    .line 33
    invoke-static {v6}, Landroidx/fragment/app/y;->K(I)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 34
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has been inflated via the <fragment> tag: id=0x"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 36
    invoke-static {v4, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 37
    :cond_b
    iget-boolean p3, v0, Landroidx/fragment/app/n;->q:Z

    if-nez p3, :cond_11

    .line 38
    iput-boolean v3, v0, Landroidx/fragment/app/n;->q:Z

    .line 39
    iget-object p3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/y;

    iput-object p3, v0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    .line 40
    iget-object p3, p3, Landroidx/fragment/app/y;->u:Landroidx/fragment/app/t;

    .line 41
    iput-object p3, v0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    .line 42
    iget-object p3, p3, Landroidx/fragment/app/t;->d:Landroid/content/Context;

    .line 43
    iget-object v2, v0, Landroidx/fragment/app/n;->d:Landroid/os/Bundle;

    invoke-virtual {v0, p3, p4, v2}, Landroidx/fragment/app/n;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 44
    iget-object p3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/y;

    invoke-virtual {p3, v0}, Landroidx/fragment/app/y;->f(Landroidx/fragment/app/n;)Landroidx/fragment/app/e0;

    move-result-object p3

    .line 45
    invoke-static {v6}, Landroidx/fragment/app/y;->K(I)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 46
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retained Fragment "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has been re-attached via the <fragment> tag: id=0x"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 48
    invoke-static {v4, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_c
    :goto_3
    check-cast p1, Landroid/view/ViewGroup;

    sget-object p4, Ly0/c;->a:Ly0/c;

    .line 50
    new-instance p4, Ly0/d;

    invoke-direct {p4, v0, p1}, Ly0/d;-><init>(Landroidx/fragment/app/n;Landroid/view/ViewGroup;)V

    .line 51
    sget-object v2, Ly0/c;->a:Ly0/c;

    invoke-static {p4}, Ly0/c;->c(Ly0/l;)V

    .line 52
    invoke-static {v0}, Ly0/c;->a(Landroidx/fragment/app/n;)Ly0/c$c;

    move-result-object v2

    .line 53
    iget-object v3, v2, Ly0/c$c;->a:Ljava/util/Set;

    .line 54
    sget-object v4, Ly0/c$a;->f:Ly0/c$a;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ly0/d;

    invoke-static {v2, v3, v4}, Ly0/c;->f(Ly0/c$c;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 56
    invoke-static {v2, p4}, Ly0/c;->b(Ly0/c$c;Ly0/l;)V

    .line 57
    :cond_d
    iput-object p1, v0, Landroidx/fragment/app/n;->I:Landroid/view/ViewGroup;

    .line 58
    invoke-virtual {p3}, Landroidx/fragment/app/e0;->k()V

    .line 59
    invoke-virtual {p3}, Landroidx/fragment/app/e0;->j()V

    .line 60
    iget-object p1, v0, Landroidx/fragment/app/n;->J:Landroid/view/View;

    if-eqz p1, :cond_10

    if-eqz v5, :cond_e

    .line 61
    invoke-virtual {p1, v5}, Landroid/view/View;->setId(I)V

    .line 62
    :cond_e
    iget-object p1, v0, Landroidx/fragment/app/n;->J:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_f

    .line 63
    iget-object p1, v0, Landroidx/fragment/app/n;->J:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :cond_f
    iget-object p1, v0, Landroidx/fragment/app/n;->J:Landroid/view/View;

    new-instance p2, Landroidx/fragment/app/u$a;

    invoke-direct {p2, p0, p3}, Landroidx/fragment/app/u$a;-><init>(Landroidx/fragment/app/u;Landroidx/fragment/app/e0;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 65
    iget-object p1, v0, Landroidx/fragment/app/n;->J:Landroid/view/View;

    return-object p1

    .line 66
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " did not create a view."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Duplicate id 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", tag "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", or parent id 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " with another fragment for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    :goto_4
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/u;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
