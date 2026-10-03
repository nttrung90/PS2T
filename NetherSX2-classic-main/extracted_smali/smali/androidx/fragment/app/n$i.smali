.class public final Landroidx/fragment/app/n$i;
.super Landroidx/fragment/app/n$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/n;->t(Lc/a;Lm/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm/a;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Lc/a;

.field public final synthetic d:Landroidx/activity/result/b;

.field public final synthetic e:Landroidx/fragment/app/n;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/n;Lm/a;Ljava/util/concurrent/atomic/AtomicReference;Lc/a;Landroidx/activity/result/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/n$i;->e:Landroidx/fragment/app/n;

    iput-object p2, p0, Landroidx/fragment/app/n$i;->a:Lm/a;

    iput-object p3, p0, Landroidx/fragment/app/n$i;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Landroidx/fragment/app/n$i;->c:Lc/a;

    iput-object p5, p0, Landroidx/fragment/app/n$i;->d:Landroidx/activity/result/b;

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/n$l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n$i;->e:Landroidx/fragment/app/n;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroidx/fragment/app/n;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_rq#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/fragment/app/n;->Y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/n$i;->a:Lm/a;

    invoke-interface {v1}, Lm/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/result/ActivityResultRegistry;

    .line 4
    iget-object v2, p0, Landroidx/fragment/app/n$i;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Landroidx/fragment/app/n$i;->e:Landroidx/fragment/app/n;

    iget-object v4, p0, Landroidx/fragment/app/n$i;->c:Lc/a;

    iget-object v5, p0, Landroidx/fragment/app/n$i;->d:Landroidx/activity/result/b;

    invoke-virtual {v1, v0, v3, v4, v5}, Landroidx/activity/result/ActivityResultRegistry;->d(Ljava/lang/String;Landroidx/lifecycle/m;Lc/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
