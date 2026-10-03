.class public Landroidx/fragment/app/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/m;
.implements Landroidx/lifecycle/g0;
.implements Landroidx/lifecycle/g;
.implements Le1/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/n$j;,
        Landroidx/fragment/app/n$k;,
        Landroidx/fragment/app/n$m;,
        Landroidx/fragment/app/n$l;
    }
.end annotation


# static fields
.field public static final b0:Ljava/lang/Object;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Landroid/view/ViewGroup;

.field public J:Landroid/view/View;

.field public K:Z

.field public L:Z

.field public M:Landroidx/fragment/app/n$j;

.field public N:Landroidx/fragment/app/n$b;

.field public O:Z

.field public P:Landroid/view/LayoutInflater;

.field public Q:Z

.field public R:Landroidx/lifecycle/h$c;

.field public S:Landroidx/lifecycle/n;

.field public T:Landroidx/fragment/app/m0;

.field public U:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q<",
            "Landroidx/lifecycle/m;",
            ">;"
        }
    .end annotation
.end field

.field public V:Landroidx/lifecycle/b0;

.field public W:Le1/c;

.field public X:I

.field public final Y:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final Z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/n$l;",
            ">;"
        }
    .end annotation
.end field

.field public final a0:Landroidx/fragment/app/n$c;

.field public c:I

.field public d:Landroid/os/Bundle;

.field public e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field public f:Landroid/os/Bundle;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/String;

.field public i:Landroid/os/Bundle;

.field public j:Landroidx/fragment/app/n;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/lang/Boolean;

.field public mPreviousWho:Ljava/lang/String;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:I

.field public u:Landroidx/fragment/app/y;

.field public v:Landroidx/fragment/app/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/t<",
            "*>;"
        }
    .end annotation
.end field

.field public w:Landroidx/fragment/app/z;

.field public x:Landroidx/fragment/app/n;

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/n;->b0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/fragment/app/n;->c:I

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/n;->h:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/fragment/app/n;->k:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Landroidx/fragment/app/n;->m:Ljava/lang/Boolean;

    .line 6
    new-instance v0, Landroidx/fragment/app/z;

    invoke-direct {v0}, Landroidx/fragment/app/z;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/n;->w:Landroidx/fragment/app/z;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/n;->G:Z

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/n;->L:Z

    .line 9
    new-instance v0, Landroidx/fragment/app/n$b;

    invoke-direct {v0, p0}, Landroidx/fragment/app/n$b;-><init>(Landroidx/fragment/app/n;)V

    iput-object v0, p0, Landroidx/fragment/app/n;->N:Landroidx/fragment/app/n$b;

    .line 10
    sget-object v0, Landroidx/lifecycle/h$c;->g:Landroidx/lifecycle/h$c;

    iput-object v0, p0, Landroidx/fragment/app/n;->R:Landroidx/lifecycle/h$c;

    .line 11
    new-instance v0, Landroidx/lifecycle/q;

    invoke-direct {v0}, Landroidx/lifecycle/q;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/n;->U:Landroidx/lifecycle/q;

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/n;->Y:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/n;->Z:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Landroidx/fragment/app/n$c;

    invoke-direct {v0, p0}, Landroidx/fragment/app/n$c;-><init>(Landroidx/fragment/app/n;)V

    iput-object v0, p0, Landroidx/fragment/app/n;->a0:Landroidx/fragment/app/n$c;

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/n;->o()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/n;-><init>()V

    .line 17
    iput p1, p0, Landroidx/fragment/app/n;->X:I

    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/n;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroidx/fragment/app/n;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/n;

    move-result-object p0

    return-object p0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/n;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    const-string v1, "Unable to instantiate fragment "

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 3
    invoke-static {p0, p1}, Landroidx/fragment/app/s;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/n;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 6
    invoke-virtual {p0, p2}, Landroidx/fragment/app/n;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 7
    new-instance p2, Landroidx/fragment/app/n$k;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": calling Fragment constructor caused an exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/n$k;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p0

    .line 8
    new-instance p2, Landroidx/fragment/app/n$k;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not find Fragment constructor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/n$k;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p0

    .line 9
    new-instance p2, Landroidx/fragment/app/n$k;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/n$k;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p0

    .line 10
    new-instance p2, Landroidx/fragment/app/n$k;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/n$k;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Landroidx/fragment/app/n;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    .line 3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    iget v0, p0, Landroidx/fragment/app/n;->z:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    .line 5
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/n;->A:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/n;->c:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    .line 7
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/n;->h:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    .line 8
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/n;->t:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/n;->n:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    .line 10
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/n;->o:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    .line 11
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/n;->p:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    .line 12
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/n;->q:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 13
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/n;->B:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    .line 14
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/n;->C:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    .line 15
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/n;->G:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    .line 16
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/n;->F:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 17
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/n;->D:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    .line 18
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/n;->L:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 19
    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 25
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/n;->x:Landroidx/fragment/app/n;

    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Landroidx/fragment/app/n;->x:Landroidx/fragment/app/n;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 28
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/n;->i:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 29
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/n;->i:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 30
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/n;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 31
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Landroidx/fragment/app/n;->d:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 33
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/n;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 34
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Landroidx/fragment/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 36
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/n;->f:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    .line 37
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewRegistryState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Landroidx/fragment/app/n;->f:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Landroidx/fragment/app/n;->n(Z)Landroidx/fragment/app/n;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 40
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mTarget="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, " mTargetRequestCode="

    .line 41
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    iget v1, p0, Landroidx/fragment/app/n;->l:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 43
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mPopDirection="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/n$j;

    if-nez v1, :cond_8

    goto :goto_0

    .line 45
    :cond_8
    iget-boolean v0, v1, Landroidx/fragment/app/n$j;->a:Z

    .line 46
    :goto_0
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/n;->i()I

    move-result v0

    if-eqz v0, :cond_9

    .line 48
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "getEnterAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/n;->i()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 49
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/n;->j()I

    move-result v0

    if-eqz v0, :cond_a

    .line 50
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "getExitAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/n;->j()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 51
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/n;->l()I

    move-result v0

    if-eqz v0, :cond_b

    .line 52
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "getPopEnterAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/n;->l()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 54
    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/n;->m()I

    move-result v0

    if-eqz v0, :cond_c

    .line 55
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "getPopExitAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/n;->m()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 56
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/n;->I:Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    .line 57
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/n;->I:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 58
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/n;->J:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 59
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/n;->J:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 60
    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 61
    invoke-static {p0}, Lb1/a;->b(Landroidx/lifecycle/m;)Lb1/a;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lb1/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 62
    :cond_f
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/n;->w:Landroidx/fragment/app/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Landroidx/fragment/app/n;->w:Landroidx/fragment/app/z;

    const-string v1, "  "

    .line 65
    invoke-static {p1, v1}, Landroid/support/v4/media/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/y;->w(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/n$j;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Landroidx/fragment/app/n$j;->s:Z

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/n;->J:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/n;->I:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Landroidx/fragment/app/y;->I()Landroidx/fragment/app/s0;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Landroidx/fragment/app/q0;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/s0;)Landroidx/fragment/app/q0;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/q0;->h()V

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    .line 8
    iget-object p1, p1, Landroidx/fragment/app/t;->e:Landroid/os/Handler;

    .line 9
    new-instance v1, Landroidx/fragment/app/n$e;

    invoke-direct {v1, v0}, Landroidx/fragment/app/n$e;-><init>(Landroidx/fragment/app/q0;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/q0;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method public g()Landroidx/fragment/app/q;
    .locals 1

    new-instance v0, Landroidx/fragment/app/n$f;

    invoke-direct {v0, p0}, Landroidx/fragment/app/n$f;-><init>(Landroidx/fragment/app/n;)V

    return-object v0
.end method

.method public final getActivity()Landroidx/fragment/app/o;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/t;->c:Landroid/app/Activity;

    .line 3
    check-cast v0, Landroidx/fragment/app/o;

    :goto_0
    return-object v0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/n$j;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/n$j;->p:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/n$j;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/n$j;->o:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/n;->i:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getChildFragmentManager()Landroidx/fragment/app/y;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/n;->w:Landroidx/fragment/app/z;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " has not been attached yet."

    .line 4
    invoke-static {v1, p0, v2}, Landroid/support/v4/media/a;->h(Ljava/lang/String;Landroidx/fragment/app/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/t;->d:Landroid/content/Context;

    :goto_0
    return-object v0
.end method

.method public getDefaultViewModelCreationExtras()La1/a;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/n;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 3
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/app/Application;

    goto :goto_1

    .line 5
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-static {v1}, Landroidx/fragment/app/y;->K(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Could not find Application instance from Context "

    .line 7
    invoke-static {v1}, Landroid/support/v4/media/a;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/n;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    .line 9
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_2
    new-instance v1, La1/c;

    invoke-direct {v1}, La1/c;-><init>()V

    if-eqz v0, :cond_3

    .line 11
    sget-object v2, Landroidx/lifecycle/e0$a$a$a;->a:Landroidx/lifecycle/e0$a$a$a;

    .line 12
    iget-object v3, v1, La1/a;->a:Ljava/util/LinkedHashMap;

    .line 13
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_3
    sget-object v0, Landroidx/lifecycle/y;->a:Landroidx/lifecycle/y$b;

    .line 15
    iget-object v2, v1, La1/a;->a:Ljava/util/LinkedHashMap;

    .line 16
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Landroidx/lifecycle/y;->b:Landroidx/lifecycle/y$c;

    .line 18
    iget-object v2, v1, La1/a;->a:Ljava/util/LinkedHashMap;

    .line 19
    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 21
    sget-object v0, Landroidx/lifecycle/y;->c:Landroidx/lifecycle/y$a;

    invoke-virtual {p0}, Landroidx/fragment/app/n;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 22
    iget-object v3, v1, La1/a;->a:Ljava/util/LinkedHashMap;

    .line 23
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v1
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/e0$b;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/n;->V:Landroidx/lifecycle/b0;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/n;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 4
    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    .line 5
    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_0

    .line 6
    move-object v0, v1

    check-cast v0, Landroid/app/Application;

    goto :goto_1

    .line 7
    :cond_0
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    const/4 v1, 0x3

    .line 8
    invoke-static {v1}, Landroidx/fragment/app/y;->K(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Could not find Application instance from Context "

    .line 9
    invoke-static {v1}, Landroid/support/v4/media/a;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/n;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", you will need CreationExtras to use AndroidViewModel with the default ViewModelProvider.Factory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    .line 11
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_2
    new-instance v1, Landroidx/lifecycle/b0;

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Landroidx/lifecycle/b0;-><init>(Landroid/app/Application;Le1/d;Landroid/os/Bundle;)V

    iput-object v1, p0, Landroidx/fragment/app/n;->V:Landroidx/lifecycle/b0;

    .line 14
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/n;->V:Landroidx/lifecycle/b0;

    return-object v0

    .line 15
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/n$j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/n$j;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/n$j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/n$j;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public final getFragmentManager()Landroidx/fragment/app/y;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    return-object v0
.end method

.method public final getHost()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/t;->v()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Landroidx/fragment/app/n;->y:I

    return v0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->P:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/n;->s(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/t;->w()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/n;->w:Landroidx/fragment/app/z;

    .line 6
    iget-object v0, v0, Landroidx/fragment/app/y;->f:Landroidx/fragment/app/u;

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLifecycle()Landroidx/lifecycle/h;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/n;->S:Landroidx/lifecycle/n;

    return-object v0
.end method

.method public getLoaderManager()Lb1/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lb1/a;->b(Landroidx/lifecycle/m;)Lb1/a;

    move-result-object v0

    return-object v0
.end method

.method public final getParentFragment()Landroidx/fragment/app/n;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/n;->x:Landroidx/fragment/app/n;

    return-object v0
.end method

.method public final getParentFragmentManager()Landroidx/fragment/app/y;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " not associated with a fragment manager."

    .line 3
    invoke-static {v1, p0, v2}, Landroid/support/v4/media/a;->h(Ljava/lang/String;Landroidx/fragment/app/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/n$j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/n$j;->l:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/n;->b0:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/n;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/n;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final getRetainInstance()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Ly0/c;->a:Ly0/c;

    .line 2
    new-instance v0, Ly0/e;

    invoke-direct {v0, p0}, Ly0/e;-><init>(Landroidx/fragment/app/n;)V

    .line 3
    sget-object v1, Ly0/c;->a:Ly0/c;

    invoke-static {v0}, Ly0/c;->c(Ly0/l;)V

    .line 4
    invoke-static {p0}, Ly0/c;->a(Landroidx/fragment/app/n;)Ly0/c$c;

    move-result-object v1

    .line 5
    iget-object v2, v1, Ly0/c$c;->a:Ljava/util/Set;

    .line 6
    sget-object v3, Ly0/c$a;->g:Ly0/c$a;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ly0/e;

    invoke-static {v1, v2, v3}, Ly0/c;->f(Ly0/c$c;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {v1, v0}, Ly0/c;->b(Ly0/c$c;Ly0/l;)V

    .line 9
    :cond_0
    iget-boolean v0, p0, Landroidx/fragment/app/n;->D:Z

    return v0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/n$j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/n$j;->j:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/n;->b0:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/n;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getSavedStateRegistry()Le1/b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->W:Le1/c;

    .line 2
    iget-object v0, v0, Le1/c;->b:Le1/b;

    return-object v0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/n$j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/n$j;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/n$j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/n$j;->n:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/n;->b0:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/n;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetFragment()Landroidx/fragment/app/n;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/n;->n(Z)Landroidx/fragment/app/n;

    move-result-object v0

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Ly0/c;->a:Ly0/c;

    .line 2
    new-instance v0, Ly0/f;

    invoke-direct {v0, p0}, Ly0/f;-><init>(Landroidx/fragment/app/n;)V

    .line 3
    sget-object v1, Ly0/c;->a:Ly0/c;

    invoke-static {v0}, Ly0/c;->c(Ly0/l;)V

    .line 4
    invoke-static {p0}, Ly0/c;->a(Landroidx/fragment/app/n;)Ly0/c$c;

    move-result-object v1

    .line 5
    iget-object v2, v1, Ly0/c$c;->a:Ljava/util/Set;

    .line 6
    sget-object v3, Ly0/c$a;->i:Ly0/c$a;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ly0/f;

    invoke-static {v1, v2, v3}, Ly0/c;->f(Ly0/c$c;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {v1, v0}, Ly0/c;->b(Ly0/c$c;Ly0/l;)V

    .line 9
    :cond_0
    iget v0, p0, Landroidx/fragment/app/n;->l:I

    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getUserVisibleHint()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroidx/fragment/app/n;->L:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/n;->J:Landroid/view/View;

    return-object v0
.end method

.method public getViewLifecycleOwner()Landroidx/lifecycle/m;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->T:Landroidx/fragment/app/m0;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access the Fragment View\'s LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/lifecycle/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/n;->U:Landroidx/lifecycle/q;

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/f0;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/n;->k()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/y;->M:Landroidx/fragment/app/b0;

    .line 5
    iget-object v1, v0, Landroidx/fragment/app/b0;->f:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/fragment/app/n;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/f0;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Landroidx/lifecycle/f0;

    invoke-direct {v1}, Landroidx/lifecycle/f0;-><init>()V

    .line 7
    iget-object v0, v0, Landroidx/fragment/app/b0;->f:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/fragment/app/n;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()Landroidx/fragment/app/n$j;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/n$j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/fragment/app/n$j;

    invoke-direct {v0}, Landroidx/fragment/app/n$j;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/n$j;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/n$j;

    return-object v0
.end method

.method public final hasOptionsMenu()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "KotlinPropertyAccess"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/fragment/app/n;->F:Z

    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/n$j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Landroidx/fragment/app/n$j;->b:I

    return v0
.end method

.method public final isAdded()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/n;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDetached()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/n;->C:Z

    return v0
.end method

.method public final isHidden()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/n;->B:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroidx/fragment/app/n;->x:Landroidx/fragment/app/n;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2}, Landroidx/fragment/app/n;->isHidden()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final isInLayout()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/n;->q:Z

    return v0
.end method

.method public final isMenuVisible()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/n;->G:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/n;->x:Landroidx/fragment/app/n;

    .line 2
    invoke-virtual {v0, v1}, Landroidx/fragment/app/y;->M(Landroidx/fragment/app/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRemoving()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/n;->o:Z

    return v0
.end method

.method public final isResumed()Z
    .locals 2

    iget v0, p0, Landroidx/fragment/app/n;->c:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isStateSaved()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/y;->O()Z

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/n;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/n;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/n;->J:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/n;->J:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/n$j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Landroidx/fragment/app/n$j;->c:I

    return v0
.end method

.method public final k()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->R:Landroidx/lifecycle/h$c;

    sget-object v1, Landroidx/lifecycle/h$c;->d:Landroidx/lifecycle/h$c;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/n;->x:Landroidx/fragment/app/n;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/n;->x:Landroidx/fragment/app/n;

    invoke-virtual {v1}, Landroidx/fragment/app/n;->k()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public final l()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/n$j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Landroidx/fragment/app/n$j;->d:I

    return v0
.end method

.method public final m()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/n$j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Landroidx/fragment/app/n$j;->e:I

    return v0
.end method

.method public final n(Z)Landroidx/fragment/app/n;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Ly0/c;->a:Ly0/c;

    .line 2
    new-instance p1, Ly0/g;

    invoke-direct {p1, p0}, Ly0/g;-><init>(Landroidx/fragment/app/n;)V

    .line 3
    sget-object v0, Ly0/c;->a:Ly0/c;

    invoke-static {p1}, Ly0/c;->c(Ly0/l;)V

    .line 4
    invoke-static {p0}, Ly0/c;->a(Landroidx/fragment/app/n;)Ly0/c$c;

    move-result-object v0

    .line 5
    iget-object v1, v0, Ly0/c$c;->a:Ljava/util/Set;

    .line 6
    sget-object v2, Ly0/c$a;->i:Ly0/c$a;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ly0/g;

    invoke-static {v0, v1, v2}, Ly0/c;->f(Ly0/c$c;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-static {v0, p1}, Ly0/c;->b(Ly0/c$c;Ly0/l;)V

    .line 9
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/n;->j:Landroidx/fragment/app/n;

    if-eqz p1, :cond_1

    return-object p1

    .line 10
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/n;->k:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p1, v0}, Landroidx/fragment/app/y;->D(Ljava/lang/String;)Landroidx/fragment/app/n;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final o()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0, p0}, Landroidx/lifecycle/n;-><init>(Landroidx/lifecycle/m;)V

    iput-object v0, p0, Landroidx/fragment/app/n;->S:Landroidx/lifecycle/n;

    .line 2
    invoke-static {p0}, Le1/c;->a(Le1/d;)Le1/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/n;->W:Le1/c;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/fragment/app/n;->V:Landroidx/lifecycle/b0;

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/n;->Z:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/n;->a0:Landroidx/fragment/app/n$c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/n;->a0:Landroidx/fragment/app/n$c;

    .line 6
    iget v1, p0, Landroidx/fragment/app/n;->c:I

    if-ltz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/n$c;->a()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/n;->Z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/n;->H:Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/y;->K(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " received the following in onActivityResult(): requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resultCode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " data: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroidx/fragment/app/n;->H:Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/n;->H:Z

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/t;->c:Landroid/app/Activity;

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/n;->H:Z

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/n;->onAttach(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/n;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/n;->H:Z

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/n;->H:Z

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/n;->u(Landroid/os/Bundle;)V

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/n;->w:Landroidx/fragment/app/z;

    .line 4
    iget v1, p1, Landroidx/fragment/app/y;->t:I

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/y;->j()V

    :cond_1
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/n;->requireActivity()Landroidx/fragment/app/o;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    iget p3, p0, Landroidx/fragment/app/n;->X:I

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/n;->H:Z

    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/n;->H:Z

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/n;->H:Z

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/n;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroidx/fragment/app/n;->H:Z

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/n;->H:Z

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/t;->c:Landroid/app/Activity;

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/n;->H:Z

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/n;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/n;->H:Z

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/n;->H:Z

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPrimaryNavigationFragmentChanged(Z)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/n;->H:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/n;->H:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/n;->H:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/n;->H:Z

    return-void
.end method

.method public final p()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/n;->o()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/n;->h:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/n;->mPreviousWho:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/n;->h:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/n;->n:Z

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/n;->o:Z

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/n;->p:Z

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/n;->q:Z

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/n;->r:Z

    .line 9
    iput v0, p0, Landroidx/fragment/app/n;->t:I

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    .line 11
    new-instance v2, Landroidx/fragment/app/z;

    invoke-direct {v2}, Landroidx/fragment/app/z;-><init>()V

    iput-object v2, p0, Landroidx/fragment/app/n;->w:Landroidx/fragment/app/z;

    .line 12
    iput-object v1, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    .line 13
    iput v0, p0, Landroidx/fragment/app/n;->y:I

    .line 14
    iput v0, p0, Landroidx/fragment/app/n;->z:I

    .line 15
    iput-object v1, p0, Landroidx/fragment/app/n;->A:Ljava/lang/String;

    .line 16
    iput-boolean v0, p0, Landroidx/fragment/app/n;->B:Z

    .line 17
    iput-boolean v0, p0, Landroidx/fragment/app/n;->C:Z

    return-void
.end method

.method public postponeEnterTransition()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/n;->h()Landroidx/fragment/app/n$j;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/fragment/app/n$j;->s:Z

    return-void
.end method

.method public final postponeEnterTransition(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/n;->h()Landroidx/fragment/app/n$j;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/fragment/app/n$j;->s:Z

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/y;->u:Landroidx/fragment/app/t;

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/t;->e:Landroid/os/Handler;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/n;->N:Landroidx/fragment/app/n$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/n;->N:Landroidx/fragment/app/n$b;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final q()Z
    .locals 1

    iget v0, p0, Landroidx/fragment/app/n;->t:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->w:Landroidx/fragment/app/z;

    invoke-virtual {v0}, Landroidx/fragment/app/y;->Q()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/n;->s:Z

    .line 3
    new-instance v1, Landroidx/fragment/app/m0;

    invoke-virtual {p0}, Landroidx/fragment/app/n;->getViewModelStore()Landroidx/lifecycle/f0;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroidx/fragment/app/m0;-><init>(Landroidx/fragment/app/n;Landroidx/lifecycle/f0;)V

    iput-object v1, p0, Landroidx/fragment/app/n;->T:Landroidx/fragment/app/m0;

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/n;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/n;->J:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Landroidx/fragment/app/n;->T:Landroidx/fragment/app/m0;

    invoke-virtual {p1}, Landroidx/fragment/app/m0;->c()V

    .line 6
    iget-object p1, p0, Landroidx/fragment/app/n;->J:Landroid/view/View;

    iget-object p2, p0, Landroidx/fragment/app/n;->T:Landroidx/fragment/app/m0;

    invoke-static {p1, p2}, Ln2/e;->B(Landroid/view/View;Landroidx/lifecycle/m;)V

    .line 7
    iget-object p1, p0, Landroidx/fragment/app/n;->J:Landroid/view/View;

    iget-object p2, p0, Landroidx/fragment/app/n;->T:Landroidx/fragment/app/m0;

    invoke-static {p1, p2}, Lj3/q;->q(Landroid/view/View;Landroidx/lifecycle/g0;)V

    .line 8
    iget-object p1, p0, Landroidx/fragment/app/n;->J:Landroid/view/View;

    iget-object p2, p0, Landroidx/fragment/app/n;->T:Landroidx/fragment/app/m0;

    invoke-static {p1, p2}, Ln2/e;->C(Landroid/view/View;Le1/d;)V

    .line 9
    iget-object p1, p0, Landroidx/fragment/app/n;->U:Landroidx/lifecycle/q;

    iget-object p2, p0, Landroidx/fragment/app/n;->T:Landroidx/fragment/app/m0;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/q;->h(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/n;->T:Landroidx/fragment/app/m0;

    .line 11
    iget-object p1, p1, Landroidx/fragment/app/m0;->e:Landroidx/lifecycle/n;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Landroidx/fragment/app/n;->T:Landroidx/fragment/app/m0;

    :goto_1
    return-void

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final registerForActivityResult(Lc/a;Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/b;)Landroidx/activity/result/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/a<",
            "TI;TO;>;",
            "Landroidx/activity/result/ActivityResultRegistry;",
            "Landroidx/activity/result/b<",
            "TO;>;)",
            "Landroidx/activity/result/c<",
            "TI;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Landroidx/fragment/app/n$h;

    invoke-direct {v0, p2}, Landroidx/fragment/app/n$h;-><init>(Landroidx/activity/result/ActivityResultRegistry;)V

    invoke-virtual {p0, p1, v0, p3}, Landroidx/fragment/app/n;->t(Lc/a;Lm/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    move-result-object p1

    return-object p1
.end method

.method public final registerForActivityResult(Lc/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/a<",
            "TI;TO;>;",
            "Landroidx/activity/result/b<",
            "TO;>;)",
            "Landroidx/activity/result/c<",
            "TI;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/fragment/app/n$g;

    invoke-direct {v0, p0}, Landroidx/fragment/app/n$g;-><init>(Landroidx/fragment/app/n;)V

    invoke-virtual {p0, p1, v0, p2}, Landroidx/fragment/app/n;->t(Lc/a;Lm/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    move-result-object p1

    return-object p1
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getParentFragmentManager()Landroidx/fragment/app/y;

    move-result-object v0

    .line 3
    iget-object v1, v0, Landroidx/fragment/app/y;->C:Landroidx/activity/result/ActivityResultRegistry$b;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Landroidx/fragment/app/y$l;

    iget-object v2, p0, Landroidx/fragment/app/n;->h:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Landroidx/fragment/app/y$l;-><init>(Ljava/lang/String;I)V

    .line 5
    iget-object p2, v0, Landroidx/fragment/app/y;->D:Ljava/util/ArrayDeque;

    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 6
    iget-object p2, v0, Landroidx/fragment/app/y;->C:Landroidx/activity/result/ActivityResultRegistry$b;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p2, p1, v0}, Landroidx/activity/result/ActivityResultRegistry$b;->a(Ljava/lang/Object;Lz/b;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, v0, Landroidx/fragment/app/y;->u:Landroidx/fragment/app/t;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string v0, " not attached to Activity"

    .line 10
    invoke-static {p2, p0, v0}, Landroid/support/v4/media/a;->h(Ljava/lang/String;Landroidx/fragment/app/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final requireActivity()Landroidx/fragment/app/o;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getActivity()Landroidx/fragment/app/o;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " not attached to an activity."

    .line 3
    invoke-static {v1, p0, v2}, Landroid/support/v4/media/a;->h(Ljava/lang/String;Landroidx/fragment/app/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireArguments()Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " does not have any arguments."

    .line 3
    invoke-static {v1, p0, v2}, Landroid/support/v4/media/a;->h(Ljava/lang/String;Landroidx/fragment/app/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireContext()Landroid/content/Context;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " not attached to a context."

    .line 3
    invoke-static {v1, p0, v2}, Landroid/support/v4/media/a;->h(Ljava/lang/String;Landroidx/fragment/app/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireFragmentManager()Landroidx/fragment/app/y;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/n;->getParentFragmentManager()Landroidx/fragment/app/y;

    move-result-object v0

    return-object v0
.end method

.method public final requireHost()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getHost()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " not attached to a host."

    .line 3
    invoke-static {v1, p0, v2}, Landroid/support/v4/media/a;->h(Ljava/lang/String;Landroidx/fragment/app/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireParentFragment()Landroidx/fragment/app/n;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getParentFragment()Landroidx/fragment/app/n;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Fragment "

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, " is not attached to any Fragment or host"

    .line 4
    invoke-static {v1, p0, v2}, Landroid/support/v4/media/a;->h(Ljava/lang/String;Landroidx/fragment/app/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not a child Fragment, it is directly attached to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public final requireView()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    .line 3
    invoke-static {v1, p0, v2}, Landroid/support/v4/media/a;->h(Ljava/lang/String;Landroidx/fragment/app/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/n;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/n;->P:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/n;->h()Landroidx/fragment/app/n$j;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroidx/fragment/app/n$j;->p:Ljava/lang/Boolean;

    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/n;->h()Landroidx/fragment/app/n$j;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroidx/fragment/app/n$j;->o:Ljava/lang/Boolean;

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/n;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already added and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/n;->i:Landroid/os/Bundle;

    return-void
.end method

.method public setEnterSharedElementCallback(Lz/o;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/n;->h()Landroidx/fragment/app/n$j;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/n;->h()Landroidx/fragment/app/n$j;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/n$j;->i:Ljava/lang/Object;

    return-void
.end method

.method public setExitSharedElementCallback(Lz/o;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/n;->h()Landroidx/fragment/app/n$j;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/n;->h()Landroidx/fragment/app/n$j;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/n$j;->k:Ljava/lang/Object;

    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/n;->F:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/n;->F:Z

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/n;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/n;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    invoke-virtual {p1}, Landroidx/fragment/app/t;->y()V

    :cond_0
    return-void
.end method

.method public setInitialSavedState(Landroidx/fragment/app/n$m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Landroidx/fragment/app/n$m;->c:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/n;->d:Landroid/os/Bundle;

    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already added"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/n;->G:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/n;->G:Z

    .line 3
    iget-boolean p1, p0, Landroidx/fragment/app/n;->F:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/n;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/n;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    invoke-virtual {p1}, Landroidx/fragment/app/t;->y()V

    :cond_0
    return-void
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/n;->h()Landroidx/fragment/app/n$j;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/n$j;->l:Ljava/lang/Object;

    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Ly0/c;->a:Ly0/c;

    .line 2
    new-instance v0, Ly0/i;

    invoke-direct {v0, p0}, Ly0/i;-><init>(Landroidx/fragment/app/n;)V

    .line 3
    sget-object v1, Ly0/c;->a:Ly0/c;

    invoke-static {v0}, Ly0/c;->c(Ly0/l;)V

    .line 4
    invoke-static {p0}, Ly0/c;->a(Landroidx/fragment/app/n;)Ly0/c$c;

    move-result-object v1

    .line 5
    iget-object v2, v1, Ly0/c$c;->a:Ljava/util/Set;

    .line 6
    sget-object v3, Ly0/c$a;->g:Ly0/c$a;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ly0/i;

    invoke-static {v1, v2, v3}, Ly0/c;->f(Ly0/c$c;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {v1, v0}, Ly0/c;->b(Ly0/c$c;Ly0/l;)V

    .line 9
    :cond_0
    iput-boolean p1, p0, Landroidx/fragment/app/n;->D:Z

    .line 10
    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, v0, Landroidx/fragment/app/y;->M:Landroidx/fragment/app/b0;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/b0;->c(Landroidx/fragment/app/n;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, v0, Landroidx/fragment/app/y;->M:Landroidx/fragment/app/b0;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/b0;->f(Landroidx/fragment/app/n;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Landroidx/fragment/app/n;->E:Z

    :goto_0
    return-void
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/n;->h()Landroidx/fragment/app/n$j;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/n$j;->j:Ljava/lang/Object;

    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/n;->h()Landroidx/fragment/app/n$j;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/n$j;->m:Ljava/lang/Object;

    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/n;->h()Landroidx/fragment/app/n$j;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/n$j;->n:Ljava/lang/Object;

    return-void
.end method

.method public setTargetFragment(Landroidx/fragment/app/n;I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Ly0/c;->a:Ly0/c;

    .line 2
    new-instance v0, Ly0/j;

    invoke-direct {v0, p0, p1, p2}, Ly0/j;-><init>(Landroidx/fragment/app/n;Landroidx/fragment/app/n;I)V

    .line 3
    sget-object v1, Ly0/c;->a:Ly0/c;

    invoke-static {v0}, Ly0/c;->c(Ly0/l;)V

    .line 4
    invoke-static {p0}, Ly0/c;->a(Landroidx/fragment/app/n;)Ly0/c$c;

    move-result-object v1

    .line 5
    iget-object v2, v1, Ly0/c$c;->a:Ljava/util/Set;

    .line 6
    sget-object v3, Ly0/c$a;->i:Ly0/c$a;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ly0/j;

    invoke-static {v1, v2, v3}, Ly0/c;->f(Ly0/c$c;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {v1, v0}, Ly0/c;->b(Ly0/c$c;Ly0/l;)V

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 10
    iget-object v2, p1, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Fragment "

    const-string v1, " must share the same FragmentManager to be set as a target fragment"

    .line 12
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/a;->h(Ljava/lang/String;Landroidx/fragment/app/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    move-object v0, p1

    :goto_2
    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {v0, p0}, Landroidx/fragment/app/n;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2}, Landroidx/fragment/app/n;->n(Z)Landroidx/fragment/app/n;

    move-result-object v0

    goto :goto_2

    .line 16
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as the target of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " would create a target cycle"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    if-nez p1, :cond_6

    .line 17
    iput-object v1, p0, Landroidx/fragment/app/n;->k:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Landroidx/fragment/app/n;->j:Landroidx/fragment/app/n;

    goto :goto_3

    .line 19
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    if-eqz v0, :cond_7

    .line 20
    iget-object p1, p1, Landroidx/fragment/app/n;->h:Ljava/lang/String;

    iput-object p1, p0, Landroidx/fragment/app/n;->k:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Landroidx/fragment/app/n;->j:Landroidx/fragment/app/n;

    goto :goto_3

    .line 22
    :cond_7
    iput-object v1, p0, Landroidx/fragment/app/n;->k:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Landroidx/fragment/app/n;->j:Landroidx/fragment/app/n;

    .line 24
    :goto_3
    iput p2, p0, Landroidx/fragment/app/n;->l:I

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Ly0/c;->a:Ly0/c;

    .line 2
    new-instance v0, Ly0/k;

    invoke-direct {v0, p0, p1}, Ly0/k;-><init>(Landroidx/fragment/app/n;Z)V

    .line 3
    sget-object v1, Ly0/c;->a:Ly0/c;

    invoke-static {v0}, Ly0/c;->c(Ly0/l;)V

    .line 4
    invoke-static {p0}, Ly0/c;->a(Landroidx/fragment/app/n;)Ly0/c$c;

    move-result-object v1

    .line 5
    iget-object v2, v1, Ly0/c$c;->a:Ljava/util/Set;

    .line 6
    sget-object v3, Ly0/c$a;->h:Ly0/c$a;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ly0/k;

    invoke-static {v1, v2, v3}, Ly0/c;->f(Ly0/c$c;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {v1, v0}, Ly0/c;->b(Ly0/c$c;Ly0/l;)V

    .line 9
    :cond_0
    iget-boolean v0, p0, Landroidx/fragment/app/n;->L:Z

    const/4 v1, 0x5

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget v0, p0, Landroidx/fragment/app/n;->c:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/n;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/n;->Q:Z

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Landroidx/fragment/app/n;->u:Landroidx/fragment/app/y;

    .line 12
    invoke-virtual {v0, p0}, Landroidx/fragment/app/y;->f(Landroidx/fragment/app/n;)Landroidx/fragment/app/e0;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Landroidx/fragment/app/y;->R(Landroidx/fragment/app/e0;)V

    .line 14
    :cond_1
    iput-boolean p1, p0, Landroidx/fragment/app/n;->L:Z

    .line 15
    iget v0, p0, Landroidx/fragment/app/n;->c:I

    if-ge v0, v1, :cond_2

    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/n;->K:Z

    .line 16
    iget-object v0, p0, Landroidx/fragment/app/n;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/n;->g:Ljava/lang/Boolean;

    :cond_3
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/t;->x(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/n;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/t;->d:Landroid/content/Context;

    sget-object v1, La0/a;->a:Ljava/lang/Object;

    .line 5
    invoke-static {v0, p1, p2}, La0/a$a;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string v0, " not attached to Activity"

    .line 7
    invoke-static {p2, p0, v0}, Landroid/support/v4/media/a;->h(Ljava/lang/String;Landroidx/fragment/app/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/n;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getParentFragmentManager()Landroidx/fragment/app/y;

    move-result-object v0

    .line 4
    iget-object v1, v0, Landroidx/fragment/app/y;->A:Landroidx/activity/result/ActivityResultRegistry$b;

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Landroidx/fragment/app/y$l;

    iget-object v2, p0, Landroidx/fragment/app/n;->h:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Landroidx/fragment/app/y$l;-><init>(Ljava/lang/String;I)V

    .line 6
    iget-object p2, v0, Landroidx/fragment/app/y;->D:Ljava/util/ArrayDeque;

    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const-string p2, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8
    :cond_0
    iget-object p2, v0, Landroidx/fragment/app/y;->A:Landroidx/activity/result/ActivityResultRegistry$b;

    const/4 p3, 0x0

    .line 9
    invoke-virtual {p2, p1, p3}, Landroidx/activity/result/ActivityResultRegistry$b;->a(Ljava/lang/Object;Lz/b;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/y;->u:Landroidx/fragment/app/t;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 11
    iget-object p2, v0, Landroidx/fragment/app/t;->d:Landroid/content/Context;

    sget-object v0, La0/a;->a:Ljava/lang/Object;

    .line 12
    invoke-static {p2, p1, p3}, La0/a$a;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    return-void

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string p3, " not attached to Activity"

    .line 15
    invoke-static {p2, p0, p3}, Landroid/support/v4/media/a;->h(Ljava/lang/String;Landroidx/fragment/app/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 11
    .param p1    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v8, p7

    .line 1
    iget-object v1, v0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    const-string v5, "Fragment "

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    .line 2
    invoke-static {v1}, Landroidx/fragment/app/y;->K(I)Z

    move-result v6

    const-string v7, "FragmentManager"

    if-eqz v6, :cond_0

    .line 3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " received the following in startIntentSenderForResult() requestCode: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " IntentSender: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " fillInIntent: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " options: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getParentFragmentManager()Landroidx/fragment/app/y;

    move-result-object v6

    .line 5
    iget-object v9, v6, Landroidx/fragment/app/y;->B:Landroidx/activity/result/ActivityResultRegistry$b;

    if-eqz v9, :cond_5

    if-eqz v8, :cond_3

    if-nez v4, :cond_1

    .line 6
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v9, 0x1

    const-string v10, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 7
    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    :cond_1
    invoke-static {v1}, Landroidx/fragment/app/y;->K(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ActivityOptions "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " were added to fillInIntent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " for fragment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v9, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 10
    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 11
    :cond_3
    new-instance v8, Landroidx/activity/result/e;

    move v9, p4

    move/from16 v10, p5

    invoke-direct {v8, p1, v4, p4, v10}, Landroidx/activity/result/e;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    .line 12
    new-instance v2, Landroidx/fragment/app/y$l;

    iget-object v4, v0, Landroidx/fragment/app/n;->h:Ljava/lang/String;

    invoke-direct {v2, v4, p2}, Landroidx/fragment/app/y$l;-><init>(Ljava/lang/String;I)V

    .line 13
    iget-object v3, v6, Landroidx/fragment/app/y;->D:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 14
    invoke-static {v1}, Landroidx/fragment/app/y;->K(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "is launching an IntentSender for result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_4
    iget-object v1, v6, Landroidx/fragment/app/y;->B:Landroidx/activity/result/ActivityResultRegistry$b;

    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v8, v2}, Landroidx/activity/result/ActivityResultRegistry$b;->a(Ljava/lang/Object;Lz/b;)V

    goto :goto_0

    :cond_5
    move v9, p4

    move/from16 v10, p5

    .line 18
    iget-object v1, v6, Landroidx/fragment/app/y;->u:Landroidx/fragment/app/t;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, -0x1

    if-ne v3, v5, :cond_6

    .line 19
    iget-object v1, v1, Landroidx/fragment/app/t;->c:Landroid/app/Activity;

    sget v5, Lz/a;->b:I

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 20
    invoke-static/range {v1 .. v8}, Lz/a$a;->c(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    :goto_0
    return-void

    .line 21
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, " not attached to Activity"

    .line 23
    invoke-static {v5, p0, v2}, Landroid/support/v4/media/a;->h(Ljava/lang/String;Landroidx/fragment/app/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startPostponedEnterTransition()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/n$j;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/n;->h()Landroidx/fragment/app/n$j;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/fragment/app/n$j;->s:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/n;->h()Landroidx/fragment/app/n$j;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/n$j;->s:Z

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    .line 5
    iget-object v1, v1, Landroidx/fragment/app/t;->e:Landroid/os/Handler;

    .line 6
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    .line 8
    iget-object v0, v0, Landroidx/fragment/app/t;->e:Landroid/os/Handler;

    .line 9
    new-instance v1, Landroidx/fragment/app/n$d;

    invoke-direct {v1, p0}, Landroidx/fragment/app/n$d;-><init>(Landroidx/fragment/app/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Landroidx/fragment/app/n;->f(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final t(Lc/a;Lm/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/a<",
            "TI;TO;>;",
            "Lm/a<",
            "Ljava/lang/Void;",
            "Landroidx/activity/result/ActivityResultRegistry;",
            ">;",
            "Landroidx/activity/result/b<",
            "TO;>;)",
            "Landroidx/activity/result/c<",
            "TI;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/fragment/app/n;->c:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 3
    new-instance v1, Landroidx/fragment/app/n$i;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p2

    move-object v5, v0

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Landroidx/fragment/app/n$i;-><init>(Landroidx/fragment/app/n;Lm/a;Ljava/util/concurrent/atomic/AtomicReference;Lc/a;Landroidx/activity/result/b;)V

    .line 4
    iget p1, p0, Landroidx/fragment/app/n;->c:I

    if-ltz p1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/n$i;->a()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/n;->Z:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :goto_0
    new-instance p1, Landroidx/fragment/app/n$a;

    invoke-direct {p1, v0}, Landroidx/fragment/app/n$a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string p3, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."

    .line 9
    invoke-static {p2, p0, p3}, Landroid/support/v4/media/a;->h(Ljava/lang/String;Landroidx/fragment/app/n;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/n;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget v1, p0, Landroidx/fragment/app/n;->y:I

    if-eqz v1, :cond_0

    const-string v1, " id=0x"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Landroidx/fragment/app/n;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/n;->A:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " tag="

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v1, p0, Landroidx/fragment/app/n;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ")"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "android:support:fragments"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/n;->w:Landroidx/fragment/app/z;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/y;->X(Landroid/os/Parcelable;)V

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/n;->w:Landroidx/fragment/app/z;

    invoke-virtual {p1}, Landroidx/fragment/app/y;->j()V

    :cond_0
    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public final v(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/n$j;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/n;->h()Landroidx/fragment/app/n$j;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/n$j;->b:I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/n;->h()Landroidx/fragment/app/n$j;

    move-result-object p1

    iput p2, p1, Landroidx/fragment/app/n$j;->c:I

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/n;->h()Landroidx/fragment/app/n$j;

    move-result-object p1

    iput p3, p1, Landroidx/fragment/app/n$j;->d:I

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/n;->h()Landroidx/fragment/app/n$j;

    move-result-object p1

    iput p4, p1, Landroidx/fragment/app/n$j;->e:I

    return-void
.end method

.method public final w(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/n;->h()Landroidx/fragment/app/n$j;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/n$j;->r:Landroid/view/View;

    return-void
.end method

.method public final x(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->M:Landroidx/fragment/app/n$j;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/n;->h()Landroidx/fragment/app/n$j;

    move-result-object v0

    iput-boolean p1, v0, Landroidx/fragment/app/n$j;->a:Z

    return-void
.end method
